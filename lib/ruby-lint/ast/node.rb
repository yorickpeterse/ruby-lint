module RubyLint
  module AST
    ##
    # Extends the Node class provided by the `parser` Gem with various extra
    # methods.
    #
    class Node < ::Parser::AST::Node
      include ::RubyLint::VariablePredicates

      ##
      # @return [Numeric]
      #
      def line
        return location.expression.line
      end

      ##
      # @return [Numeric]
      #
      def column
        return location.expression.column
      end

      ##
      # @return [String]
      #
      def file
        return location.expression.source_buffer.name
      end

      ##
      # @todo Think about whether or not this method is really needed.
      # @return [String]
      #
      def name
        name = (constant? ? children[-1] : children[0]) || type
        name = name.is_a?(Node) ? name.children[0] : name

        return name.to_s
      end

      ##
      # Returns the name of the node, assuming it's a variable node.
      #
      # @return [String]
      #
      def variable_name
        return const? ? children[1].to_s : children[0].to_s
      end

      ##
      # @return [Mixed]
      #
      def value
        value = collection? ? children : children[-1]
        value = children[1] if variable?

        return value
      end

      ##
      # Returns the receiver of the method call/definition.
      #
      # @return [RubyLint::Node]
      #
      def receiver
        return method? ? children[-1] : children[-2]
      end

      ##
      # Returns a symbol that indicates if a node is either a method or instance
      # method.
      #
      # @return [Symbol]
      #
      def method_type
        return receiver ? :method : :instance_method
      end
    end # Node
  end # AST
end # RubyLint
