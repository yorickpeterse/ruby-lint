module RubyLint
  class VirtualMachine < Iterator
    include Helper::ConstantPaths

    attr_reader :associations, :definitions

    attr_reader :value_stack, :variable_stack

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

    ASSIGNMENT_TYPES = {
      :lvasgn => :lvar,
      :ivasgn => :ivar,
      :cvasgn => :cvar,
      :gvasgn => :gvar
    }

    PRIMITIVES = [:int, :float, :str, :sym]

    ##
    # Hash containing various Node types and the associated Ruby classes.
    #
    # @return [Hash]
    #
    RUBY_CLASSES = {
      :str    => 'String',
      :sym    => 'Symbol',
      :int    => 'Fixnum',
      :float  => 'Float',
      :regexp => 'Regexp',
      :array  => 'Array',
      :hash   => 'Hash',
      :irange => 'Range',
      :erange => 'Range',
      :lambda => 'Proc'
    }

    SEND_MAPPING = {'[]=' => 'assign_member'}

    ##
    # Called after a new instance of the virtual machine has been created.
    #
    def after_initialize
      @associations   = {}
      @definitions    = initial_definitions
      @scopes         = [@definitions]
      @in_sclass      = false
      @value_stack    = NestedStack.new
      @variable_stack = NestedStack.new

      reset_method_type
    end

    def on_assign(node)
      reset_assignment_value
      value_stack.add_stack
    end

    def after_assign(node)
      values = value_stack.pop

      if values.empty? and assignment_value
        values = [assignment_value]
      end

      variable = Definition::RubyObject.new(
        :type          => ASSIGNMENT_TYPES[node.type],
        :name          => node.children[0].to_s,
        :value         => values.first, # TODO: handle multiple values
        :instance_type => :instance
      )

      buffer_assignment_value(variable.value)

      add_variable(variable)
    end

    ASSIGNMENT_TYPES.each do |callback, type|
      alias :"on_#{callback}" :on_assign
      alias :"after_#{callback}" :after_assign
    end

    alias on_casgn on_assign

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
      value_stack.add_stack
      variable_stack.add_stack
    end

    def after_masgn(node)
      variables = variable_stack.pop
      values    = value_stack.pop

      variables.each_with_index do |variable, index|
        variable.value = values[index]

        current_scope.add(variable.type, variable.name, variable)
      end
    end

    PRIMITIVES.each do |type|
      define_method("on_#{type}") do |node|
        push_value(node)
      end
    end

    ASSIGNMENT_TYPES.each do |asgn_name, type|
      define_method("on_#{type}") do |node|
        push_variable(node)
      end
    end

    def on_array(node)
      # TODO: implement this
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
      pop_scope
    end

    alias on_defs on_def
    alias after_defs after_def

    def on_send(node)
      name     = node.children[1].to_s
      name     = SEND_MAPPING.fetch(name, name)
      callback = "on_send_#{name}"

      execute_callback(callback, node)
    end

    def after_send(node)
      name     = node.children[1].to_s
      name     = SEND_MAPPING.fetch(name, name)
      callback = "after_send_#{name}"

      execute_callback(callback, node)
    end

    def on_send_include(node)
      name       = node.children[1].to_s
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

    alias on_send_extend on_send_include

    def on_send_assign_member(node)
=begin
      receiver_node = node.children[0]
      receiver_name = receiver_node.children[0].to_s
      receiver      = current_scope.lookup(receiver_node.type, receiver_name)
      members       = node.children[2..-2]
      value         = node.children[-1]
=end
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

    def push_variable(node)
      return unless value_stack.push?

      name = node.children[0].to_s

      value_stack.push(current_scope.lookup(node.type, name).value)
    end

    def push_value(node, options = {})
      value_stack.push(create_primitive(node, options)) if value_stack.push?
    end

    def add_variable(variable, scope = current_scope)
      if variable_stack.push?
        variable_stack.push(variable)
      else
        scope.add(variable.type, variable.name, variable)
      end
    end

    def create_primitive(node, options = {})
      parents    = []
      ruby_class = RUBY_CLASSES[node.type]

      if ruby_class
        found = RubyLint.global_constant(ruby_class)
        parents << found if found
      end

      options = {
        :type          => node.type,
        :value         => node.children[0],
        :instance_type => :instance,
        :parents       => parents
      }.merge(options)

      return Definition::RubyObject.new(options)
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
  end # VirtualMachine
end # RubyLint
