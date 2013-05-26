module RubyLint
  class VirtualMachine < Iterator
    include Helper::ConstantPaths

    attr_reader :associations, :definitions

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
    # Called after a new instance of the virtual machine has been created.
    #
    def after_initialize
      @associations        = {}
      @definitions         = initial_definitions
      @scopes              = [@definitions]
      @in_sclass           = false
      @in_mass_assign      = false
      @asgn_nesting        = 0
      @masgn_nesting       = 0
      @values_buffer       = []
      @variables_buffer    = []
      @last_assigned_value = nil
    end

    def on_lvasgn(node)
      @asgn_nesting  += 1
      @values_buffer << []
    end

    def after_lvasgn(node)
      @asgn_nesting -= 1

      values = pop_values

      if values.empty? and @last_assigned_value
        values = [@last_assigned_value]
      end

      variable = Definition::RubyObject.new(
        :type          => :lvar,
        :name          => node.children[0].to_s,
        :value         => values.first, # TODO: handle multiple values
        :instance_type => :instance
      )

      if buffer_variables?
        push_variable(variable)
      else
        current_scope.add(variable.type, variable.name, variable)
      end

      @last_assigned_value = variable.value
    end

    def on_cdecl(node)
      @asgn_nesting  += 1
      @values_buffer << []
    end

    def after_cdecl(node)
      @asgn_nesting -= 1

      values = pop_values
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

      if buffer_variables?
        push_variable(variable)
      else
        scope.add(variable.type, variable.name, variable)
      end
    end

    def on_masgn(node)
      @masgn_nesting    += 1
      @values_buffer    << []
      @variables_buffer << []
    end

    def after_masgn(node)
      @masgn_nesting -= 1

      variables = pop_variables
      values    = pop_values

      variables.each_with_index do |variable, index|
        variable.value = values[index]

        current_scope.add(variable.type, variable.name, variable)
      end
    end

    def on_lvar(node)
      if buffer_values?
        name = node.children[0].to_s

        push_value(current_scope.lookup(:lvar, name).value)
      end
    end

    def on_int(node)
      if buffer_values?
        value = Definition::RubyObject.new(
          :type          => :int,
          :value         => node.children[0],
          :instance_type => :instance
        )

        push_value(value)
      end
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

    def on_sclass(node)
      receiver = node.children[0]

      if receiver.self?
        definition = current_scope.lookup(:keyword, 'self')
      else
        definition = current_scope.lookup(receiver.type, receiver.name)
      end

      associate_node(node, definition)

      push_scope(definition)

      @in_sclass = true
    end

    def after_sclass(node)
      @in_sclass = false

      pop_scope
    end

    def on_def(node)
      if @in_sclass
        opts = {:type => :method}
      else
        opts = {:type => :instance_method}
      end

      builder    = DefinitionBuilder::RubyMethod.new(node, current_scope, opts)
      definition = builder.build

      builder.scope.add_definition(definition)

      associate_node(node, definition)

      push_scope(definition)
    end

    def after_def(node)
      pop_scope
    end

    alias on_defs on_def
    alias after_defs after_def

    def on_send(node)
      name = node.children[1].to_s

      return unless INCLUDE_CALLS.key?(name)

      arguments  = node.children[2..-1]
      copy_types = INCLUDE_CALLS[name]
      scope      = current_scope

      arguments.each do |arg|
        if arg.receiver and arg.const?
          source = resolve_constant_path(arg)
        else
          source = scope.lookup(arg.type, arg.name)
        end

        next unless source

        copy_types.each do |from, to|
          source.list(from).each do |definition|
            scope.add(to, definition.name, definition)
          end
        end
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

      if scope.has_definition?(definition.type, definition.name)
        definition = scope.lookup(definition.type, definition.name)

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

    def buffer_values?
      return @asgn_nesting > 0 || @masgn_nesting > 0
    end

    def buffer_variables?
      return @masgn_nesting > 0
    end

    def push_value(value)
      @values_buffer.last << value
    end

    def pop_values
      return @values_buffer.pop
    end

    def push_variable(variable)
      @variables_buffer.last << variable
    end

    def pop_variables
      return @variables_buffer.pop
    end
  end # VirtualMachine
end # RubyLint
