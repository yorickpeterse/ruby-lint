module Rlint
  module Token
    ##
    # Token class for storing information about regular expressions.
    #
    # @since 2012-08-02
    #
    class RegexpToken < Token
      ##
      # Array containing the modes of the regular expression.
      #
      # @since  2012-08-02
      # @return [Array]
      #
      attr_accessor :modes
    end # RegexpToken
  end # Token
end # Rlint
