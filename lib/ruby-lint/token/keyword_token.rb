module RubyLint
  module Token
    ##
    # {RubyLint::Token::KeywordToken} is a token class similar to
    # {RubyLint::Token::MethodToken} but instead of being used for regular
    # method calls it's soley used for keywords such as `super` and
    # `defined?()`.
    #
    class KeywordToken < Token
      ##
      # Array of tokens for the method parameters.
      #
      # @return [Array]
      #
      attr_accessor :parameters

      ##
      # Token containing details about the block passed to the method.
      #
      # @return [RubyLint::Token::BlockToken]
      #
      attr_accessor :block

      ##
      # @see RubyLint::Token::Token#initialize
      #
      def initialize(*args)
        @type = :keyword

        super

        @parameters = [] unless @parameters
      end

      ##
      # @see RubyLint::Token::Token#child_nodes
      #
      def child_nodes
        return super << @parameters << [@block]
      end
    end # KeywordToken
  end # Token
end # RubyLint
