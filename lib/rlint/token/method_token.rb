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
      # The scope for this method. Note that this attribute is only set when
      # the token is used for defining a method, not when calling one.
      #
      # @since  2012-07-29
      # @return [Rlint::Scope]
      #
      attr_reader :scope
    end # MethodToken
  end # Token
end # Rlint
