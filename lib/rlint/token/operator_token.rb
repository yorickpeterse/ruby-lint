module Rlint
  module Token
    ##
    # Token class used for storing data of operators and the values used for
    # the operation.
    #
    # The operator that was used is stored in the `name` attribute. This token
    # class also doesn't store the line number, column number or source code as
    # this is already stored in the tokens used for the operation.
    #
    # @since 2012-07-29
    #
    class OperatorToken < Token
      ##
      # The token to the left of the operator.
      #
      # @since  2012-07-29
      # @return [Rlint::Token::Token]
      #
      attr_reader :left

      ##
      # The token to the right of the operator.
      #
      # @since  2012-07-29
      # @return [Rlint::Token::Token]
      #
      attr_reader :right
    end # OperatorToken
  end # Token
end # Rlint
