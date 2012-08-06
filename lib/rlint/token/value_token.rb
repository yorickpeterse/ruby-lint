module Rlint
  module Token
    ##
    # Token class used for storing data of values (integers, strings, etc).
    #
    # @since 2012-07-29
    #
    class ValueToken < Token
      ##
      # Hash containing various Ripper names for value types and the Rlint
      # names to use instead.
      #
      # @since  2012-07-29
      # @return [Hash]
      #
      TYPE_MAPPING = {
        :@int   => :integer,
        :@float => :float,
      }

      ##
      # The type of value, e.g. `:integer`.
      #
      # @since  2012-07-29
      # @return [Symbol]
      #
      attr_accessor :type

      ##
      # Override {Rlint::Token::Token#initialize} so that the variable type can
      # be set properly.
      #
      # @since 2012-07-29
      # @see   Rlint::Token::Token#initialize
      #
      def initialize(*args)
        super

        @type = TYPE_MAPPING[@type] if TYPE_MAPPING[@type]
      end
    end # ValueToken
  end # Token
end # Rlint
