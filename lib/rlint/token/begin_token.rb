module Rlint
  module Token
    ##
    # Token class used for storing information about begin/rescue/ensure
    # statements.
    #
    class BeginToken < Token
      ##
      # Array of rescue statements. Each item is an instance of
      # {Rlint::Token::StatementToken}.
      #
      # @return [Array]
      #
      attr_accessor :rescue

      ##
      # Attribute containing details about the ensure statement.
      #
      # @return [Rlint::Token::StatementToken]
      #
      attr_accessor :ensure

      ##
      # Attribute containing details about the else statement.
      #
      # @return [Rlint::Token::StatementToken]
      #
      attr_accessor :else
    end # BeginToken
  end # Token
end # Rlint
