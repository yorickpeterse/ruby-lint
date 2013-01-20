module RubyLint
  ##
  # Exception class that's raised when the parser {RubyLint::Parser} detects
  # syntax errors.
  #
  # @!attribute [r] line
  #  @return [Numeric]
  # @!attribute [r] column
  #  @return [Numeric]
  # @!attribute [r] file
  #  @return [String]
  #
  class ParserError < SyntaxError
    attr_reader :line, :column, :file

    ##
    # @param [String] message
    # @param [Numeric] line
    # @param [Numeric] column
    # @param [String] file
    #
    def initialize(message, line, column, file)
      @line   = line
      @column = column
      @file   = file

      super(message)
    end
  end # ParserError
end # RubyLint
