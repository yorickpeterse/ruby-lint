module Rlint
  module Token
    ##
    # Token class used for storing methods, their parameters, body, etc.
    #
    # @since 2012-07-29
    #
    class MethodToken < Token
      ##
      # The receiver of the method call, if any.
      #
      # @since  2012-08-05
      # @return [Rlint::Token::Token]
      #
      attr_accessor :receiver

      ##
      # Symbol containing the method separator, if any.
      #
      # @since  2012-08-05
      # @return [Symbol]
      #
      attr_accessor :operator

      ##
      # Array of tokens for the method parameters.
      #
      # @since  2012-07-29
      # @return [Array]
      #
      attr_accessor :parameters

      ##
      # Token containing details about the block passed to the method.
      #
      # @since  2012-08-05
      # @return [Rlint::Token::BlockToken]
      #
      attr_accessor :block
    end # MethodToken
  end # Token
end # Rlint
