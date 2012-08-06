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
      attr_accessor :type

      ##
      # Boolean that indicates if the variable is used or not.
      #
      # @since  2012-07-29
      # @return [TrueClass|FalseClass]
      #
      attr_accessor :used

      ##
      # Boolean that indicates whether or not the variable is a block variable.
      # Block variables are method parameters prefixed with an ampersand.
      #
      # @since  2012-08-06
      # @return [TrueClass|FalseClass]
      #
      attr_accessor :block_variable

      ##
      # Boolean that indicates if the variable is a "rest variable". A "rest
      # variable" means it's a catch all parameter for a method, any passed
      # arguments will be stored as an array in this variable.
      #
      # @since  2012-08-06
      # @return [TrueClass|FalseClass]
      #
      attr_accessor :rest_variable

      ##
      # Override {Rlint::Token::Token#initialize} so that the type can be set
      # to `:local_variable` for local variables instead of `:identifier`.
      #
      # @since 2012-07-29
      # @see   Rlint::Token::Token#initialize
      #
      def initialize(*args)
        @used           = false
        @block_variable = false
        @rest_variable  = false

        super

        @type = :local_variable if @type == :identifier
      end
    end # VariableToken
  end # Token
end # Rlint
