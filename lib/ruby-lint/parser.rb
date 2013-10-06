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

      internal_parser.diagnostics.all_errors_are_fatal = false
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
    # Parses a block of Ruby code and returns the AST and a mapping of each AST
    # node and their comments (if there are any). This mapping is returned as a
    # Hash.
    #
    # @param [String] code
    # @param [String] file
    # @param [Numeric] line
    # @return [Array]
    #
    def parse(code, file = '(ruby-lint)', line = 1)
      buffer        = ::Parser::Source::Buffer.new(file, line)
      buffer.source = code
      ast, comments = internal_parser.parse_with_comments(buffer)
      associator    = ::Parser::Source::Comment::Associator.new(ast, comments)

      internal_parser.reset

      root = AST::Node.new(:root, [ast], :location => ast.location)

      return root, associator.associate
    end
  end # Parser
end # RubyLint
