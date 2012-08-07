module Rlint
  module Token
    ##
    # Token class used for storing data about a newly defined method.
    #
    # @since 2012-08-02
    #
    class MethodDefinitionToken < MethodToken
      ##
      # The scope for this method. Note that this attribute is only set when
      # the token is used for defining a method, not when calling one.
      #
      # @since  2012-07-29
      # @return [Rlint::Scope]
      #
      attr_accessor :scope

      ##
      # The visibility of the method, set to `:public` by default.
      #
      # @since  2012-08-07
      # @return [Symbol]
      #
      attr_accessor :visibility
    end # MethodDefinitionToken
  end # Token
end # Rlint
