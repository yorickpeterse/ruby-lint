module Rlint
  module Token
    ##
    # Token class used for storing data about ranges.
    #
    # @since 2012-08-02
    #
    class RangeToken < Token
      ##
      # The start value of the range.
      #
      # @since 2012-08-02
      # @param [Rlint::Token::ValueToken|Rlint::Token::VariableToken]
      #
      attr_accessor :start_value

      ##
      # The end value of the range.
      #
      # @since 2012-08-02
      # @param [Rlint::Token::ValueToken|Rlint::Token::VariableToken]
      #
      attr_accessor :end_value
    end # RangeToken
  end # Token
end # Rlint
