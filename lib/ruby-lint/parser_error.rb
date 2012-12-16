module RubyLint
  ##
  # Exception class that's raised when the parser {RubyLint::Parser} detects
  # syntax errors.
  #
  class ParserError < SyntaxError
    ##
    # The line number on which the error occured.
    #
    # @return [Fixnum]
    #
    attr_reader :line

    ##
    # The column on which the error occured.
    #
    # @return [Fixnum]
    #
    attr_reader :column

    ##
    # Creates a new instance of the error class.
    #
    # @param [String] message The error message.
    # @param [Fixnum|Bignum] line The line of the error.
    # @param [Fixnum|Bignum] column The column of the error.
    #
    def initialize(message, line, column)
      @line, @column = line, column

      super(message)
    end
  end # ParserError
end # RubyLint
