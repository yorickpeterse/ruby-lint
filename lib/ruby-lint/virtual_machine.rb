module RubyLint
  ##
  # @!attribute [r] associations
  #  @return [Hash]
  # @!attribute [r] definitions
  #  @return [RubyLint::Definition::RubyObject]
  # @!attribute [r] value_stack
  #  @return [RubyLint::NestedStack]
  # @!attribute [r] variable_stack
  #  @return [RubyLint::NestedStack]
  #
  class VirtualMachine < Iterator
    include Helper::ConstantPaths

    attr_reader :associations, :definitions, :value_stack, :variable_stack

    private :value_stack, :variable_stack

    ##
    # Hash containing the definition types to copy when including/extending a
    # module.
    #
    # @return [Hash]
    #
    INCLUDE_CALLS = {
      'include' => {
        :const           => :const,
        :instance_method => :instance_method
      },
      'extend' => {
        :const           => :const,
        :instance_method => :method
      }
    }

    ##
    # Hash containing variable assignment types and the corresponding variable
    # reference types.
    #
    # @return [Hash]
    #
    ASSIGNMENT_TYPES = {
      :lvasgn => :lvar,
      :ivasgn => :ivar,
      :cvasgn => :cvar,
      :gvasgn => :gvar
    }

    ##
    # Collection of primitive value types.
    #
    # @return [Array]
    #
    PRIMITIVES = [:int, :float, :str, :sym]

    ##
    # Remaps the names for `on_send` callback nodes in cases where the original
    # name of a method could not be used. For example, `on_send_[]=` is
    # considered to be invalid syntax and thus its mapped to
    # `on_send_assign_member`.
    #
    # @return [Hash]
    #
    SEND_MAPPING = {'[]=' => 'assign_member'}

    ##
    # Array containing the various argument types of method definitions.
    #
    # @return [Array]
    #
    ARGUMENT_TYPES = [:arg, :optarg, :restarg, :blockarg]

    ##
    # The types of variables to export outside of a method definition.
    #
    # @return [Array]
    #
    EXPORT_VARIABLES = [:ivar, :cvar, :const]

    ##
    # Array containing the directories to use for looking up definition files.
    #
    # @return [Array]
    #
    LOAD_PATH = [File.expand_path('../definitions/core', __FILE__)]

    ##
    # Called after a new instance of the virtual machine has been created.
    #
    def after_initialize
      @associations     = {}
      @definitions      = initial_definitions
      @scopes           = [@definitions]
      @in_sclass        = false
      @value_stack      = NestedStack.new
      @variable_stack   = NestedStack.new
      @ignored_nodes    = []
      @constant_loader  = ConstantLoader.new

      reset_method_type
    end

    ##
    # Processes the given AST. Constants are autoloaded first.
    #
    # @see #iterate
    #
    def run(ast)
      @constant_loader.iterate(ast)

      iterate(ast)
    end

    def on_root(node)
      associate_node(node, current_scope)
    end

    def on_assign(node)
      reset_assignment_value
      value_stack.add_stack
    end

    def after_assign(node)
      type  = ASSIGNMENT_TYPES[node.type]
      name  = node.children[0].to_s
      value = value_stack.pop.first

      if !value and assignment_value
        value = assignment_value
      end

      assign_variable(type, name, value)
    end

    ASSIGNMENT_TYPES.each do |callback, type|
      alias :"on_#{callback}" :on_assign
      alias :"after_#{callback}" :after_assign
    end

    def on_casgn(node)
      # Don't push values for the receiver constant.
      @ignored_nodes << node.children[0] if node.children[0]

      reset_assignment_value
      value_stack.add_stack
    end

    def after_casgn(node)
      values = value_stack.pop
      scope  = current_scope

      if node.children[0]
        scope = resolve_constant_path(node.children[0])

        return unless scope
      end

      variable = Definition::RubyObject.new(
        :type          => :const,
        :name          => node.children[1].to_s,
        :value         => values.first,
        :instance_type => :instance
      )

      add_variable(variable, scope)
    end

    def on_masgn(node)
      add_stacks
    end

    def after_masgn(node)
      variables = variable_stack.pop
      value     = value_stack.pop.first

      if value.array?
        values = value.value
      else
        values = [value]
      end

      variables.each_with_index do |variable, index|
        variable.value = values[index].value

        current_scope.add(variable.type, variable.name, variable)
      end
    end

    def on_or_asgn(node)
      add_stacks
    end

    def after_or_asgn(node)
      variable = variable_stack.pop.first
      value    = value_stack.pop.first

      conditional_assignment(variable, value, false)
    end

    def on_and_asgn(node)
      add_stacks
    end

    def after_and_asgn(node)
      variable = variable_stack.pop.first
      value    = value_stack.pop.first

      conditional_assignment(variable, value)
    end

    PRIMITIVES.each do |type|
      define_method("on_#{type}") do |node|
        push_value(create_primitive(node))
      end
    end

    ASSIGNMENT_TYPES.each do |asgn_name, type|
      define_method("on_#{type}") do |node|
        increment_reference_amount(node)
        push_variable_value(node)
      end
    end

    def on_const(node)
      increment_reference_amount(node)
      push_variable_value(node)
    end

    def on_array(node)
      value_stack.add_stack
    end

    def after_array(node)
      builder = DefinitionBuilder::RubyArray.new(
        node,
        current_scope,
        :values => value_stack.pop
      )

      push_value(builder.build)
    end

    def on_hash(node)
      value_stack.add_stack
    end

    def after_hash(node)
      builder = DefinitionBuilder::RubyHash.new(
        node,
        current_scope,
        :values => value_stack.pop
      )

      push_value(builder.build)
    end

    def on_pair(node)
      value_stack.add_stack
    end

    def after_pair(node)
      key, value = value_stack.pop

      member = Definition::RubyObject.new(
        :name  => key.value.to_s,
        :type  => :member,
        :value => value
      )

      push_value(member)
    end

    def on_module(node)
      define_module(node, DefinitionBuilder::RubyModule)
    end

    def after_module(node)
      pop_scope
    end

    def on_class(node)
      define_module(node, DefinitionBuilder::RubyClass)
    end

    def after_class(node)
      pop_scope
    end

    def on_block(node)
      definition = Definition::RubyObject.new(
        :name           => 'block',
        :type           => :block,
        :parents        => [current_scope],
        # TODO: apply this to other scopes as well (where needed).
        :update_parents => [:lvar, :ivar, :cvar, :gvar]
      )

      current_scope.list(:lvar).each do |variable|
        definition.add_definition(variable)
      end

      associate_node(node, definition)

      push_scope(definition)
    end

    def after_block(node)
      pop_scope
    end

    def on_sclass(node)
      receiver = node.children[0]

      # TODO: this won't work for receivers that are types (e.g. a string) or
      # methods.
      if receiver.self?
        definition = current_scope.lookup(:keyword, 'self')
      else
        definition = current_scope.lookup(receiver.type, receiver.name)
      end

      associate_node(node, definition)

      push_scope(definition)

      @method_type = :method
    end

    def after_sclass(node)
      reset_method_type
      pop_scope
    end

    def on_def(node)
      builder = DefinitionBuilder::RubyMethod.new(
        node,
        current_scope,
        :type => @method_type
      )

      definition = builder.build

      builder.scope.add_definition(definition)

      associate_node(node, definition)

      push_scope(definition)
    end

    def after_def(node)
      previous = pop_scope
      current  = current_scope

      EXPORT_VARIABLES.each do |type|
        current.copy(previous, type)
      end
    end

    def on_args(node)
      variable_stack.add_stack
    end

    def after_args(node)
      variables = variable_stack.pop

      variables.each do |variable|
        current_scope.add_definition(variable)
      end
    end

    ARGUMENT_TYPES.each do |type|
      define_method("on_#{type}") do |node|
        value_stack.add_stack
      end

      define_method("after_#{type}") do |node|
        value = value_stack.pop.first
        name  = node.children[0].to_s
        arg   = Definition::RubyObject.new(
          :type          => type,
          :name          => name,
          :value         => value,
          :instance_type => :instance
        )

        current_scope.add_definition(arg)

        assign_variable(:lvar, name, value)
      end
    end

    alias on_defs on_def
    alias after_defs after_def

    def on_send(node)
      name     = node.children[1].to_s
      name     = SEND_MAPPING.fetch(name, name)
      callback = "on_send_#{name}"

      value_stack.add_stack

      execute_callback(callback, node)
    end

    def after_send(node)
      receiver, name, _ = *node

      name        = name.to_s
      mapped_name = SEND_MAPPING.fetch(name, name)
      callback    = "after_send_#{mapped_name}"

      execute_callback(callback, node)

      context, _ = value_stack.pop

      if context
        retval = context.call(name)

        # Associate the receiver node with the context so that it becomes
        # easier to retrieve later on.
        associate_node(receiver, context) if receiver

        push_value(retval)
      end
    end

    def on_send_include(node)
      value_stack.add_stack
    end

    def after_send_include(node)
      copy_types = INCLUDE_CALLS[node.children[1].to_s]
      scope      = current_scope
      arguments  = value_stack.pop

      arguments.each do |source|
        copy_types.each do |from, to|
          source.list(from).each do |definition|
            scope.add(to, definition.name, definition)
          end
        end
      end
    end

    alias on_send_extend on_send_include
    alias after_send_extend after_send_include

    def on_send_assign_member(node)
      value_stack.add_stack
    end

    def after_send_assign_member(node)
      array, *indexes, values = value_stack.pop

      if values.array?
        values = values.list(:member).map(&:value)
      else
        values = [values]
      end

      indexes.each do |index|
        member = Definition::RubyObject.new(
          :name  => index.value.to_s,
          :type  => :member,
          :value => values.shift
        )

        array.add_definition(member)
      end
    end

    private

    ##
    # Returns the initial set of definitions to use.
    #
    # @return [RubyLint::Definition::RubyObject]
    #
    def initial_definitions
      definitions = Definition::RubyObject.new(
        :name          => 'root',
        :type          => :root,
        :parents       => [RubyLint.global_constant('Kernel')],
        :instance_type => :instance
      )

      definitions.merge(RubyLint.global_scope)

      definitions.add(:keyword, 'self', definitions)

      return definitions
    end

    ##
    # Defines a new module/class based on the supplied node.
    #
    # @param [RubyLint::Node] node
    # @param [Class] definition_builder
    #
    def define_module(node, definition_builder)
      builder    = definition_builder.new(node, current_scope)
      definition = builder.build
      scope      = builder.scope
      existing   = scope.lookup(definition.type, definition.name)

      if existing
        definition = existing

        unless definition.parents.include?(current_scope)
          definition.parents << current_scope
        end
      else
        scope.add_definition(definition)
      end

      associate_node(node, definition)

      push_scope(definition)
    end

    ##
    # @return [RubyLint::Definition::RubyObject]
    #
    def current_scope
      return @scopes.last
    end

    ##
    # Associates the given node and defintion with each other.
    #
    # @param [RubyLint::AST::Node] node
    # @param [RubyLint::Definition::RubyObject] definition
    #
    def associate_node(node, definition)
      @associations[node] = definition
    end

    ##
    # Pushes a new scope on the list of available scopes.
    #
    # @param [RubyLint::Definition::RubyObject] definition
    #
    def push_scope(definition)
      unless definition.is_a?(RubyLint::Definition::RubyObject)
        raise(
          ArgumentError,
          "Expected a RubyLint::Definition::RubyObject but got " \
            "#{definition.class} instead"
        )
      end

      @scopes << definition
    end

    ##
    # Removes a scope from the list.
    #
    # TODO: raise an error when trying to pop the stack when it is already
    # empty.
    #
    def pop_scope
      @scopes.pop
    end

    def push_variable_value(node)
      return if value_stack.empty? || @ignored_nodes.include?(node)

      definition = definition_for_node(node)

      if definition
        value = definition.value ? definition.value : definition

        push_value(value)
      end
    end

    def push_value(definition)
      value_stack.push(definition) if definition && !value_stack.empty?
    end

    def add_stacks
      variable_stack.add_stack
      value_stack.add_stack
    end

    def assign_variable(type, name, value)
      variable = Definition::RubyObject.new(
        :type          => type,
        :name          => name,
        :value         => value,
        :instance_type => :instance
      )

      buffer_assignment_value(variable.value)

      add_variable(variable)
    end

    def add_variable(variable, scope = current_scope)
      if variable_stack.empty?
        scope.add(variable.type, variable.name, variable)
      else
        variable_stack.push(variable)
      end
    end

    def create_primitive(node, options = {})
      builder = DefinitionBuilder::Primitive.new(node, current_scope, options)

      return builder.build
    end

    def reset_assignment_value
      @assignment_value = nil
    end

    def assignment_value
      return @assignment_value
    end

    def buffer_assignment_value(value)
      @assignment_value = value
    end

    def reset_method_type
      @method_type = :instance_method
    end

    def conditional_assignment(variable, value, bool = true)
      if current_scope.has_definition?(variable.type, variable.name) == bool
        variable.value = value

        current_scope.add_definition(variable)

        buffer_assignment_value(variable.value)
      end
    end

    def definition_for_node(node)
      if node.const? and node.children[0]
        definition = resolve_constant_path(node)
      else
        definition = current_scope.lookup(node.type, node.variable_name)
      end

      return definition
    end

    def increment_reference_amount(node)
      definition = definition_for_node(node)

      definition.reference_amount += 1 if definition
    end
  end # VirtualMachine
end # RubyLint
