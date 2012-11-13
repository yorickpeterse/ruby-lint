module RubyLint
  module Token
    ##
    # Token class used for storing information about begin/rescue/ensure
    # statements.
    #
    class BeginRescueToken < Token
      ##
      # Array of rescue statements. Each item is an instance of
      # {RubyLint::Token::StatementToken}.
      #
      # @return [Array]
      #
      attr_accessor :rescue

      ##
      # Attribute containing details about the ensure statement.
      #
      # @return [RubyLint::Token::StatementToken]
      #
      attr_accessor :ensure

      ##
      # Attribute containing details about the else statement.
      #
      # @return [RubyLint::Token::StatementToken]
      #
      attr_accessor :else

      ##
      # @see RubyLint::Token#initialize
      #
      def initialize(*args)
        @type = :begin_rescue

        super
      end

      ##
      # @see RubyLint::Token::Token#child_nodes
      #
      def child_nodes
        nodes = [@rescue]

        if @ensure
          nodes << [@ensure]
        end

        if @else
          nodes << [@else]
        end

        return super + nodes
      end
    end # BeginRescueToken
  end # Token
end # RubyLint
