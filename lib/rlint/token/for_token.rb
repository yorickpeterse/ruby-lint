module Rlint
  module Token
    ##
    # Token class used for storing information about `for` loops.
    #
    # @since 2012-08-13
    #
    class ForToken < Token
      ##
      # Array containing the variables to create for each iteration. Even if
      # only one variable was specified this attribute will always be an array.
      #
      # @since  2012-08-13
      # @return [Array]
      #
      attr_accessor :variables

      ##
      # Token class containing details about the enumerable to iterate over.
      #
      # @since  2012-08-13
      # @return [Rlint::Token::Token]
      #
      attr_accessor :enumerable
    end # ForToken
  end # Token
end # Rlint
