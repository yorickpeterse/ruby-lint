module Rlint
  module Token
    ##
    # Token class used for storing information about variables.
    #
    # @since 2012-07-29
    #
    class VariableToken < Token
      ##
      # The action that was performed on the variable. This attribute is set to
      # `:assign` for variable assignments and `:reference` for variable
      # references.
      #
      # @since  2012-08-20
      # @return [Symbol]
      #
      attr_accessor :action

      ##
      # @see Rlint::Token::Token#initialize
      #
      def initialize(*args)
        @action = :reference

        super

        @type = :local_variable if @type == :identifier
      end
    end # VariableToken
  end # Token
end # Rlint
