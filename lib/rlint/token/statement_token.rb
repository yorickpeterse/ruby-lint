module Rlint
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
      # @return [Rlint::Token::Token]
      #
      attr_accessor :statement

      ##
      # The content of the `else` statement.
      #
      # @return [Rlint::Token::Token]
      #
      attr_accessor :else

      ##
      # Array containing the `elsif` statement in their original order.
      #
      # @return [Array]
      #
      attr_accessor :elsif

      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        @type  = :statement
        @elsif = []

        super
      end
    end # StatementToken
  end # Token
end # Rlint
