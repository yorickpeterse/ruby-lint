module Rlint
  module Token
    ##
    # Token class for storing information about object getters and setters.
    #
    # @since 2012-08-13
    #
    class AttributeToken < Token
      ##
      # The operator that was used to separate the object and attribute.
      #
      # @since  2012-08-13
      # @return [Symbol]
      #
      attr_accessor :operator

      ##
      # The object on which the attribute is called.
      #
      # @since  2012-08-13
      # @return [Rlint::Token::Token]
      #
      attr_accessor :receiver
    end # AttributeBoken
  end # Token
end # Rlint
