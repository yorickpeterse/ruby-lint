module RubyLint
  module Analyze
    class Definitions < Iterator
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

      ##
      # Called at the root node of a Ruby script.
      #
      # @param [RubyLint::Node] node
      #
      def on_root(node)
        # No need to store all the child nodes as those are processed
        # individually.
        @options[:definitions] = Definition::RubyObject.new(
          node.updated(nil, []),
          :kernel => true,
          :lazy   => true
        )
      end

      ##
      # Creates a new module definition and updates the scope accordingly. If
      # the module already exists the existing set of definitions is used
      # instead of creating a new one.
      #
      # @param [RubyLint::Node] node
      #
      def on_module(node)
        target   = definitions
        mod_def  = Definition::RubyVariable.new(node, nil, :parents => [target])
        existing = target.lookup(:constant, mod_def.name)

        # Use the existing definition list.
        if existing
          existing.parents << target
          @definitions     << existing

          return
        end

        target.add(:constant, mod_def.name, mod_def)

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
      # Creates a new method definition. This definition is either added in the
      # current scope or in the scope of the receiver in case one is specified.
      # Any method parameters are automatically added as definitions to the
      # inner scope.
      #
      # @param [RubyLint::Node] node
      #
      def on_method_definition(node)
        target     = definitions
        method_def = Definition::RubyMethod.new(node, :parents => [target])

        if method_def.receiver
          existing = target.lookup(
            method_def.receiver.type,
            method_def.receiver.name
          )

          existing ? target = method_def.receiver = existing : return
        end

        target.add(method_def.definition_type, method_def.name, method_def)

        @definitions << method_def
      end

      ##
      # Resets the scope to the outer scope and exports various variables into
      # this scope.
      #
      # @param [RubyLint::Node] node
      #
      def after_method_definition(node)
        method_def = @definitions.pop

        # TODO: variables should only be exported when the method is actually
        # called.
        EXPORT_VARIABLES.each do |type|
          method_def.definitions[type].each do |name, defs|
            definitions.add(type, name, defs)
          end
        end
      end

      ##
      # Creates definitions for variable assignments. When assigning a value to
      # a constant path and a particular segment does not exist the entire
      # assignment is skipped.
      #
      # @param [RubyLint::Node] node
      #
      def on_assign(node)
        var, val = *node
        target   = definitions

        if var.type == :constant_path
          found = resolve_definitions(var.children[0..-2])
          found ? target = found : return

          var_def = Definition::RubyVariable.new(var.children[-1], val)
        else
          var_def = Definition::RubyVariable.new(var, val)
        end

        target = @options[:definitions] if var_def.global_variable?

        target.add(var_def.type, var_def.name, var_def)
      end

      ##
      # Includes/extends a module when the `include` or `extend` method is
      # called.
      #
      # @param [RubyLint::Node] node
      #
      def on_method(node)
        return unless INCLUDE_CALLS.key?(node.children[0])

        method_call = Definition::RubyMethod.new(node)
        copy_types  = INCLUDE_CALLS[method_call.name]
        target      = definitions

        method_call.parameters.each do |param|
          if param.receiver
            source = resolve_definitions(param.receiver_path)
          else
            source = target.lookup(param.type, param.name)
          end

          next unless source.is_a?(Definition::RubyVariable)

          # Resolve variables to their constants.
          # TODO: this could potentially result in an infinite loop. If
          # possible some kind of limit should be set similar to when using
          # Timeout.timeout.
          until source.type == :module
            source = target.lookup(source.value.type, source.value.name)
          end

          copy_types.each do |from, to|
            source.definitions[from].each do |name, definition|
              target.add(to, name, definition)
            end
          end
        end
      end
    end # Definitions
  end # Analyze
end # RubyLint
