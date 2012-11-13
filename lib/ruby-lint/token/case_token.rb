module RubyLint
  module Token
    ##
    # Token class containing details about a case statement.
    #
    class CaseToken < StatementToken
      ##
      # Array containing all the `when` statements sorted in the order of their
      # appearance.
      #
      # @return [Array]
      #
      attr_accessor :when

      ##
      # Token containing details about the `else` statement.
      #
      # @return [RubyLint::Token::StatementToken]
      #
      attr_accessor :else

      ##
      # @see RubyLint::Token#initialize
      #
      def initialize(*args)
        @when = []
        @type = :case

        super
      end

      ##
      # @see RubyLint::Token::Token#child_nodes
      #
      def child_nodes
        nodes = super

        nodes.insert(1, @when)

        return nodes.select { |array| array.length > 0 }
      end
    end # CaseToken
  end # Token
end # RubyLint
