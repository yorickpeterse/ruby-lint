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
      # @return [Symbol]
      #
      attr_accessor :action

      ##
      # The object receiver, set when a value is assigned to an object
      # attribute.
      #
      # @return [Rlint::Token::Token]
      #
      attr_accessor :receiver

      ##
      # Symbol containing the operator that was used to separate the receiver
      # and attribute name.
      #
      # @return [Symbol]
      #
      attr_accessor :operator

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
