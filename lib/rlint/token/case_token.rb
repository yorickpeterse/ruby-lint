module Rlint
  module Token
    ##
    # Token class containing details about a case statement.
    #
    # @since 2012-08-12
    #
    class CaseToken < StatementToken
      ##
      # Array containing all the `when` statements sorted in the order of their
      # appearance.
      #
      # @since  2012-08-12
      # @return [Array]
      #
      attr_accessor :when

      ##
      # Token containing details about the `else` statement.
      #
      # @since  2012-08-12
      # @return [Rlint::Token::StatementToken]
      #
      attr_accessor :else

      ##
      # @since 2012-08-08
      # @see   Rlint::Token#initialize
      #
      def initialize(*args)
        @when = []

        super
      end
    end # CaseToken
  end # Token
end # Rlint
