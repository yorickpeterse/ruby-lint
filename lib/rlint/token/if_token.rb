module Rlint
  module Token
    ##
    # Token class used for storing information about `if`, `else` and `elsif`
    # statements.
    #
    # @since 2012-08-08
    #
    class IfToken < StatementToken
      ##
      # The content of the `else` statement.
      #
      # @since  2012-08-08
      # @return [Rlint::Token::Token|NilClass]
      #
      attr_accessor :else

      ##
      # Array containing the `elsif` statement in their original order.
      #
      # @since  2012-08-08
      # @return [Array|NilClass]
      #
      attr_accessor :elsif

      ##
      # @since 2012-08-08
      # @see   Rlint::Token#initialize
      #
      def initialize(*args)
        @elsif = []

        super
      end
    end # IfToken
  end # Token
end # Rlint
