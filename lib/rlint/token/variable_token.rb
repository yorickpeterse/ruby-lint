module Rlint
  module Token
    ##
    # Token class used for storing information about variable references.
    #
    class VariableToken < Token
      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        super

        @type = :local_variable if @type == :identifier
      end
    end # VariableToken
  end # Token
end # Rlint
