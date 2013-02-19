module RubyLint
  module Helper
    ##
    # Helper module that provides various methods for looking up methods,
    # checking if they exist, etc.
    #
    module Methods
      include CurrentScope

      ##
      # Checks if the method for the given node is defined or not.
      #
      # @param [RubyLint::Node] node
      # @return [TrueClass|FalseClass]
      #
      def method_defined?(node)
        return method_scope(node).has_definition?(node.method_type, node.name)
      end

      ##
      # Looks up the method definition for the specified method call.
      #
      # @param [RubyLint::Node] node
      # @return [RubyLint::Definition::RubyMethod]
      #
      def lookup_method(node)
        return method_scope(node).lookup(node.method_type, node.name)
      end

      private

      ##
      # Determines the scope to use for a method call.
      #
      # @param [RubyLint::Node] node
      # @return [RubyLint::Definition::RubyObject]
      #
      def method_scope(node)
        scope = current_scope

        if node.receiver
          scope = scope.lookup(node.receiver.type, node.receiver.name)
        end

        return scope
      end
    end # Methods
  end # Helper
end # RubyLint
