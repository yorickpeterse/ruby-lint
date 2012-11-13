module RubyLint
  module Token
    ##
    # Token class used for storing information about blocks/procs.
    #
    # @since 2012-08-05
    #
    class BlockToken < Token
      ##
      # The parameters of the block.
      #
      # @return [RubyLint::Token::ParametersToken]
      #
      attr_accessor :parameters
    end
  end # Token
end # RubyLint
