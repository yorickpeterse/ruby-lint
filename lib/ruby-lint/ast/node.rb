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
      # @return [String]
      #
      def name
        return const? ? children[-1].to_s : children[0].to_s
      end
    end # Node
  end # AST
end # RubyLint
