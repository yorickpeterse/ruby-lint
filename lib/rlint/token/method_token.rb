module Rlint
  module Token
    ##
    # Token class used for storing methods, their parameters, body, etc.
    #
    # @since 2012-07-29
    #
    class MethodToken < Token
      ##
      # Array of tokens for the method parameters.
      #
      # @since  2012-07-29
      # @return [Array]
      #
      attr_reader :parameters

      ##
      # Token containing details about the block passed to the method.
      #
      # @since  2012-08-05
      # @return [Rlint::Token::BlockToken]
      #
      attr_reader :block
    end # MethodToken
  end # Token
end # Rlint
