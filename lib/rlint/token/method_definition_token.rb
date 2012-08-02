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
      attr_reader :scope
    end # MethodDefinitionToken
  end # Token
end # Rlint
