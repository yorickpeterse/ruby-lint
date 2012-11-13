module RubyLint
  module Token
    ##
    # Token class for storing information about statements such as `return`
    # statements and `elsif` statements.
    #
    # @since 2012-08-08
    #
    class StatementToken < Token
      ##
      # The value of the statement in case of `if` and `elsif` statements.
      #
      # @return [RubyLint::Token::Token|Array]
      #
      attr_accessor :statement

      ##
      # The content of the `else` statement.
      #
      # @return [RubyLint::Token::StatementToken]
      #
      attr_accessor :else

      ##
      # Array containing the `elsif` statement in their original order.
      #
      # @return [Array]
      #
      attr_accessor :elsif

      ##
      # @see RubyLint::Token::Token#initialize
      #
      def initialize(*args)
        @type  = :statement
        @elsif = []

        super
      end

      ##
      # @see RubyLint::Token::Token#child_nodes
      #
      def child_nodes
        nodes = []

        if @statement
          if @statement.is_a?(Array)
            nodes << @statement.flatten
          else
            nodes << [@statement]
          end
        end

        nodes += super

        if @elsif
          nodes << @elsif
        end

        if @else
          nodes << [@else]
        end

        return nodes.select { |array| array.length > 0 }
      end
    end # StatementToken
  end # Token
end # RubyLint
