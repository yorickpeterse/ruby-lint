module RubyLint
  module Token
    ##
    # Token class used for storing information about variable references.
    #
    class VariableToken < Token
      ##
      # @see RubyLint::Token::Token#initialize
      #
      def initialize(*args)
        super

        @type  = :local_variable if @type == :identifier
        @event = @type
      end
    end # VariableToken
  end # Token
end # RubyLint
