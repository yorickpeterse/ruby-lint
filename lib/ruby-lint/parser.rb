module RubyLint
  ##
  #
  class Parser
    ##
    # Tries to require the parser class based on the current Ruby version.
    #
    def self.require_parser
      begin
        require "parser/ruby#{ruby_version}"
      rescue LoadError
        require 'parser/ruby19'
      end
    end

    ##
    # Returns an identifier that indicates the current Ruby version.
    #
    # @return [String]
    #
    def self.ruby_version
      return RUBY_VERSION.split('.').first(2).join('')
    end

    ##
    # Returns the Parser constant to use based on the current Ruby version.
    #
    # @return [Class]
    #
    def self.parser_constant
      return ::Parser.const_get("Ruby#{ruby_version}")
    end

    def initialize
      builder = AST::Builder.new
      @parser = self.class.parser_constant.new(builder)

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

RubyLint::Parser.require_parser
