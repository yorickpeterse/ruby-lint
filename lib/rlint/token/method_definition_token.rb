module Rlint
  module Token
    ##
    # Token class used for storing data about a newly defined method.
    #
    # @since 2012-08-02
    #
    class MethodDefinitionToken < Token
      ##
      # The scope for this method. Note that this attribute is only set when
      # the token is used for defining a method, not when calling one.
      #
      # @since  2012-07-29
      # @return [Rlint::Scope]
      #
      attr_accessor :scope

      ##
      # Array of tokens for the method parameters.
      #
      # @since  2012-07-29
      # @return [Array]
      #
      attr_accessor :parameters

      ##
      # The visibility of the method, set to `:public` by default.
      #
      # @since  2012-08-07
      # @return [Symbol]
      #
      attr_accessor :visibility

      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        @parameters = []
        @visibility = :public
        @type       = :instance_method

        super
      end
    end # MethodDefinitionToken
  end # Token
end # Rlint
