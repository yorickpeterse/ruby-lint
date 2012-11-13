module Rlint
  module Token
    ##
    # Token class for storing information about regular expressions.
    #
    class RegexpToken < Token
      ##
      # Array containing the modes of the regular expression.
      #
      # @return [Array]
      #
      attr_accessor :modes
    end # RegexpToken
  end # Token
end # Rlint
