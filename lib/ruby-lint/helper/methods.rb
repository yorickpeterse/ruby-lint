module RubyLint
  module Helper
    ##
    # Helper module that provides various methods for looking up methods,
    # checking if they exist, etc.
    #
    module Methods
      include CurrentScope
      include Conversion

      ##
      # Checks if the method for the given node is defined or not.
      #
      # @param [RubyLint::Node] node
      # @return [TrueClass|FalseClass]
      #
      def method_defined?(node)
        scope = method_scope(node)

        if scope
          return scope.has_definition?(scope.method_call_type, node.name)
        else
          return false
        end
      end

      ##
      # Looks up the method definition for the specified method call.
      #
      # @param [RubyLint::Node] node
      # @return [RubyLint::Definition::RubyMethod]
      #
      def lookup_method(node)
        scope = method_scope(node)

        return scope.lookup(scope.method_call_type, node.name)
      end

      ##
      # Determines the scope to use for a method call.
      #
      # @param [RubyLint::Node] node
      # @return [RubyLint::Definition::RubyObject]
      #
      def method_scope(node)
        scope = node.receiver ? method_receiver(node.receiver) : current_scope

        return scope.variable? && scope.value ? scope.value : scope
      end

      ##
      # Tries to determine the receiver definition of a method call.
      #
      # @param [RubyLint::Node|Array] receiver
      # @return [RubyLint::Definition::RubyObject]
      #
      def method_receiver(receiver)
        receiver = receiver.is_a?(Array) ? receiver[0] : receiver
        scope    = instance_for_ruby_type(receiver)

        if !scope
          scope = current_scope.lookup(receiver.type, receiver.name)
        end

        # Last resort, try to load the receiver as a global constant.
        if !scope and receiver.constant?
          scope = RubyLint.global_constant(receiver.name)
        end

        return scope
      end
    end # Methods
  end # Helper
end # RubyLint
