module RubyLint
  ##
  # {RubyLint::Parser} provides a small wrapper around the Parser Gem and
  # allows for the use of a custom AST builder.
  #
  # @!attribute [r] internal_parser
  #  @return [Parser::Parser]
  #
  class Parser
    attr_reader :internal_parser

    def initialize
      builder          = AST::Builder.new
      @internal_parser = ::Parser::CurrentRuby.new(builder)
    end

    ##
    # Registers the consumer with the internal diagnostics handler.
    #
    # @param [#call] consumer
    #
    def consumer=(consumer)
      internal_parser.diagnostics.consumer = consumer
    end

    ##
    # Parses a block of Ruby code and wraps the resulting AST in a root node.
    #
    # @param [String] code
    # @param [String] file
    # @param [Numeric] line
    # @return [RubyLint::AST::Node]
    #
    def parse(code, file = '(ruby-lint)', line = 1)
      buffer        = ::Parser::Source::Buffer.new(file, line)
      buffer.source = code
      ast           = internal_parser.parse(buffer)

      internal_parser.reset

      return AST::Node.new(:root, [ast])
    end
  end # Parser
end # RubyLint
