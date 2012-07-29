module Rlint
  module Token
    ##
    # Generic token class used for data that doesn't require its own specific
    # token.
    #
    # @since 2012-07-29
    #
    class Token
      ##
      # Hash containing various Ripper tokens and the Rlint tokens to use
      # instead.
      #
      # @since  2012-07-29
      # @return [Hash]
      #
      TOKEN_MAPPING = {
        :@ident => :identifier,
        :@gvar  => :global_variable,
        :@ivar  => :instance_variable,
        :@cvar  => :class_variable,
        :@const => :constant
      }

      ##
      # The name of the token. For example, when the token is a variable this
      # is set to the name of the variable.
      #
      # @since  2012-07-29
      # @return [String]
      #
      attr_reader :name

      ##
      # The value of the token. For example, if the token is a variable this
      # attribute is set to the token for the variable's value.
      #
      # @since  2012-07-29
      # @return [Rlint::Token::Token]
      #
      attr_reader :value

      ##
      # The line number on which the token was defined.
      #
      # @since  2012-07-29
      # @return [Fixnum|Bignum]
      #
      attr_reader :line

      ##
      # The column number on which the token was defined.
      #
      # @since  2012-07-29
      # @return [Fixnum|Bignum]
      #
      attr_reader :column

      ##
      # The source code of the line on which the token was defined. Due to
      # these values being references to a single list of lines these values
      # should never be modified directly (e.g. by using `#gsub!()`).
      #
      # @since  2012-07-29
      # @return [String]
      #
      attr_reader :code

      ##
      # Creates a new instance of the token and sets various instance variables
      # based on the specified hash.
      #
      # @since 2012-07-29
      # @param [Hash] options A hash containing various instance variables to
      #  set and their values. For a variable to be set it requires a
      #  corresponding public getter mehtod to be set.
      #
      def initialize(options = {})
        options.each do |key, value|
          if respond_to?(key)
            instance_variable_set("@#{key}", value)
          end
        end

        # If the token class has a `type` attribute it should be mapped to a
        # nicer version of the token as stored in TOKEN_MAPPING.
        if TOKEN_MAPPING[@type]
          @type = TOKEN_MAPPING[@type]
        end
      end
    end # Token
  end # Token
end # Rlint
