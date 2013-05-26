module RubyLint
  ##
  # {RubyLint::Parser} provides a small wrapper around the Parser Gem and
  # allows for the use of a custom AST builder.
  #
  class Parser
    def initialize
      builder = AST::Builder.new
      @parser = ::Parser::CurrentRuby.new(builder)

      @parser.diagnostics.all_errors_are_fatal = true
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
      ast           = @parser.parse(buffer)

      return AST::Node.new(:root, [ast])
    end
  end # Parser
end # RubyLint
