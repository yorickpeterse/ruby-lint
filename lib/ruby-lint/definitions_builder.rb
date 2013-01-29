module RubyLint
  ##
  # {RubyLint::DefinitionsBuilder} is a iterator class responsible for building
  # a list of definitions. This approach means that individual iterator classes
  # don't have to bother with this process and can instead focus on analyzing
  # code.
  #
  class DefinitionsBuilder < Iterator
    ##
    # Array of variable types that should be exported to the outer scope of a
    # method definition.
    #
    # @return [Array]
    #
    EXPORT_VARIABLES = [:instance_variable, :class_variable, :constant]

    ##
    # Hash containing the definition types to copy when including/extending a
    # module.
    #
    # @return [Hash]
    #
    INCLUDE_CALLS = {
      'include' => {
        :constant        => :constant,
        :instance_method => :instance_method
      },
      'extend' => {
        :constant        => :constant,
        :instance_method => :method
      }
    }

    # Define the methods used for incrementing the amount of references to a
    # variable.
    [
      :local_variable,
      :global_variable,
      :instance_variable,
      :class_variable,
      :constant,
      :constant_path
    ].each do |type|
      define_method("on_#{type}") do |node|
        if node.constant_path?
          variable = resolve_definitions(node.children)
        else
          variable = definitions.lookup(type, node.children[0])
        end

        increment_reference_amount(variable) if variable
      end
    end

    ##
    # Called at the root node of a Ruby script.
    #
    # @param [RubyLint::Node] node
    #
    def on_root(node)
      parent = RubyLint::Importer.import('Object', Object, :ancestors => true)

      definitions = Definition::RubyObject.new(
        :name              => :root,
        :default_constants => ['Kernel'],
        :lazy              => true,
        :parents           => [parent]
      )

      @options[:node_definitions] = {}
      @options[:definitions]      = definitions

      associate_node_definition(node, definitions)
    end

    ##
    # Creates a new module definition and updates the scope accordingly. If the
    # module already exists the existing set of definitions is used instead of
    # creating a new one.
    #
    # @param [RubyLint::Node] node
    #
    def on_module(node)
      scope   = definitions
      mod_def = Definition::RubyObject.new_from_node(
        node,
        :value   => nil,
        :parents => [scope]
      )

      if scope.has_definition?(:constant, mod_def.name)
        existing = scope.lookup(:constant, mod_def.name)

        if existing
          existing.parents << scope unless existing.parents.include?(scope)
          @definitions     << existing

          return
        end
      end

      add_self(mod_def)

      scope.add(:constant, mod_def.name, mod_def)

      associate_node_definition(node, mod_def)

      @definitions << mod_def
    end

    ##
    # Changes the scope back to the outer scope of a module definition.
    #
    # @param [RubyLint::Node] node
    #
    def after_module(node)
      @definitions.pop
    end

    ##
    # Creates a new class definition and updates the scope accordingly.
    #
    # @see RubyLint::DefinitionsBuilder#on_module
    #
    def on_class(node)
      scope   = definitions
      parents = [scope]

      # Resolve the definition of the parent class.
      if node.children[1]
        if node.children[1].type == :constant_path
          parent = resolve_definitions(node.children[1].children)
        else
          parent = resolve_definitions([node.children[1]])
        end

        parents.unshift(parent)
      end

      class_def = Definition::RubyObject.new_from_node(
        node,
        :value   => nil,
        :parents => parents
      )

      # Use an existing definition list if it exists.
      if scope.has_definition?(:constant, class_def.name)
        existing = scope.lookup(:constant, class_def.name)

        if existing
          existing.parents << scope unless existing.parents.include?(scope)
          @definitions     << existing

          return
        end
      end

      add_self(class_def)

      scope.add(:constant, class_def.name, class_def)

      associate_node_definition(node, class_def)

      @definitions << class_def
    end

    ##
    # Changes the scope back to the outer scope of the class definition.
    #
    # @param [RubyLint::Node] node
    #
    def after_class(node)
      @definitions.pop
    end

    ##
    # Called when an sclass block is found. These blocks look like the
    # following:
    #
    #     class << self
    #       # ...
    #     end
    #
    # @param [RubyLint::Node] node
    #
    def on_sclass(node)
      use   = Definition::RubyObject.new_from_node(node.children[0])
      found = definitions.lookup(use.type, use.name)

      if !found
        found = definitions
      end

      associate_node_definition(node, found)

      @definitions << found
      @call_types  << :method
    end

    ##
    # Called after an sclass block has been processed.
    #
    # @param [RubyLint::Node] node
    #
    def after_sclass(node)
      @definitions.pop
      @call_types.pop
    end

    ##
    # Creates a new method definition. This definition is either added in the
    # current scope or in the scope of the receiver in case one is specified.
    # Any method parameters are automatically added as definitions to the inner
    # scope.
    #
    # @param [RubyLint::Node] node
    #
    def on_method_definition(node)
      scope  = definitions
      method = Definition::RubyMethod.new_from_node(
        node,
        :parents         => [scope],
        :definition_type => call_type
      )

      if method.receiver
        existing = scope.lookup(method.receiver.type, method.receiver.name)
        existing ? scope = method.receiver = existing : return
      end

      scope.add(method.definition_type, method.name, method)

      associate_node_definition(node, method)

      @definitions << method
    end

    ##
    # Resets the scope to the outer scope and exports various variables into
    # this scope.
    #
    # @param [RubyLint::Node] node
    #
    def after_method_definition(node)
      method = @definitions.pop

      # TODO: variables should only be exported when the method is actually
      # called.
      EXPORT_VARIABLES.each do |type|
        method.definitions[type].each do |name, defs|
          definitions.add(type, name, defs)
        end
      end
    end

    ##
    # Creates definitions for variable assignments. When assigning a value to a
    # constant path and a particular segment does not exist the entire
    # assignment is skipped.
    #
    # @param [RubyLint::Node|Array] node
    #
    def on_assign(node)
      var, val  = *node
      variables = [var]
      values    = [val].flatten
      type      = var.type

      scope = var.global_variable? ? @options[:definitions] : definitions

      if var.constant_path?
        found = resolve_definitions(var.children[0..-2])

        if found
          scope     = found
          variables = [var.children[-1]]
          type      = var.children[-1].type
        end

      # Array index, hash key and object member assignments.
      elsif is_object_member?(var)
        # TODO: implement assignments to return values of methods if
        # possible.
        return unless var.children[0].variable?

        found = scope.lookup(
          var.children[0].type,
          var.children[0].children[0]
        )

        if found
          scope     = found
          variables = [var.children[1]].flatten
          type      = :member
          values    = values.flatten
        end
      end

      variables.each_with_index do |variable, index|
        assign_variable(scope, variable, values[index], type)
      end

      @skip_increment_reference = true
    end

    ##
    # @see RubyLint::DefinitionsBuilder#on_assign
    #
    def after_assign(node)
      @skip_increment_reference = false
    end

    ##
    # Processes conditional variable assignments.
    #
    # @see RubyLint::DefinitionsBuilder#on_assign
    #
    def on_op_assign(node)
      type = node.children[0].type
      name = node.children[0].children[0]

      unless definitions.lookup(type, name)
        on_assign(node.children)
      end
    end

    ##
    # Processes the local variables created by `for` loops.
    #
    # @param [RubyLint::Node] node
    #
    def on_for(node)
      scope = definitions

      # The values are set to `nil` as the only reliable way of retrieving
      # these is actual code evaluation.
      node.children[0].each do |variable|
        assign_variable(scope, variable, nil)
      end
    end

    ##
    # Includes/extends a module when the `include` or `extend` method is
    # called.
    #
    # @param [RubyLint::Node] node
    #
    def on_method(node)
      return unless INCLUDE_CALLS.key?(node.children[0])

      method_call = Definition::RubyMethod.new_from_node(node)
      copy_types  = INCLUDE_CALLS[method_call.name]
      scope       = definitions

      method_call.parameters.each do |param|
        if param.receiver
          source = resolve_definitions(param.receiver_path)
        else
          source = scope.lookup(param.type, param.name)
        end

        if source.variable?
          source = source.value
        end

        next unless source.is_a?(Definition::RubyObject)

        copy_types.each do |from, to|
          source.definitions[from].each do |name, definition|
            scope.add(to, name, definition)
          end
        end
      end
    end

    private

    ##
    # Assigns a value to the specified variable.
    #
    # @param [RubyLint::Definition::RubyObject] definition The definition
    #  list to add the variable to.
    # @param [RubyLint::Node] variable The variable to create.
    # @param [RubyLint::NOde] value The value of the variable.
    # @param [NilClass|Symbol] type The type of variable to add, set to the
    #  type of `variable` by default.
    #
    def assign_variable(definition, variable, value, type = variable.type)
      current_scope = definitions

      # Resolve the value of a variable used for assigning a object member.
      if variable.variable? and type == :member
        found = current_scope.lookup(variable.type, variable.children[0])

        found ? variable = found.value.node : return
      end

      # Resolve variable values.
      if value and value.variable?
        found_value = current_scope.lookup(value.type, value.children[0])

        if found_value and found_value.constant?
          value = found_value
        elsif found_value
          value = found_value.value
        end
      end

      var_def = Definition::RubyObject.new_from_node(
        variable,
        :value => value
      )

      if value.is_a?(Node)
        if value.array?
          assign_array_indexes(var_def, var_def.value.value)
        end

        if value.hash?
          assign_hash_pairs(var_def, var_def.value.value)
        end
      end

      associate_node_definition(variable, var_def)

      definition.add(type, var_def.name, var_def)
    end

    ##
    # Assigns the indexes of the array to a definitions list.
    #
    # @param [RubyLint::Definition::RubyObject] definitions
    # @param [Array] values
    #
    def assign_array_indexes(definitions, values)
      values.each_with_index do |value, index|
        assign_variable(
          definitions,
          Node.new(:integer, [index.to_s]),
          value,
          :member
        )
      end
    end

    ##
    # Assigns the key/value pairs of a hash to a definition list.
    #
    # @param [RubyLint::Definition::RubyObject] definitions
    # @param [Array] values
    #
    def assign_hash_pairs(definitions, values)
      values.each do |pair|
        assign_variable(
          definitions,
          pair.children[0],
          pair.children[1],
          :member
        )
      end
    end

    ##
    # Returns `true` if the specified node indicates an object member (array
    # index, hash key, etc) is being referenced.
    #
    # @param [RubyLint::Node] node
    # @return [TrueClass|FalseClass]
    #
    def is_object_member?(node)
      return node.type == :aref || node.type == :field
    end

    ##
    # Adds a definition for the `self` keyword.
    #
    # @param [RubyLint::Definition::RubyObject] definition The definition
    #  list to add the keyword to.
    #
    def add_self(definition)
      definition.add(:keyword, 'self', definition)
    end

    ##
    # Increments the reference amount of the specified definition.
    #
    # @param [RubyLint::Definition::RubyObject] definition
    #
    def increment_reference_amount(definition)
      definition.reference_amount += 1 unless @skip_increment_reference
    end
  end # DefinitionsBuilder
end # RubyLint
