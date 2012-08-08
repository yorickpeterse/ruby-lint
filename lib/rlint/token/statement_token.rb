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
      # @since  2012-08-08
      # @return [Rlint::Token::Token]
      #
      attr_accessor :statement
    end # StatementToken
  end # Token
end # Rlint
