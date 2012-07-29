module Rlint
  module Token
    ##
    # Token class used for storing information about variables.
    #
    # @since 2012-07-29
    #
    class VariableToken < Token
      ##
      # The type of variable that was defined.
      #
      # @since  2012-07-29
      # @return [Symbol]
      #
      attr_reader :type

      ##
      # Boolean that indicates if the variable is used or not.
      #
      # @since  2012-07-29
      # @return [TrueClass|FalseClass]
      #
      attr_accessor :used

      ##
      # Override {Rlint::Token::Token#initialize} so that the type can be set
      # to `:local_variable` for local variables instead of `:identifier`.
      #
      # @since 2012-07-29
      # @see   Rlint::Token::Token#initialize
      #
      def initialize(*args)
        super

        @type = :local_variable if @type == :identifier
      end
    end # VariableToken
  end # Token
end # Rlint
