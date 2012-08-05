module Rlint
  ##
  # Exception class that's raised when the parser {Rlint::Parser} detects
  # syntax errors.
  #
  # @since 2012-08-05
  #
  class ParserError < SyntaxError
    ##
    # The line number on which the error occured.
    #
    # @since  2012-08-05
    # @return [Fixnum|Bignum]
    #
    attr_reader :line

    ##
    # The column on which the error occured.
    #
    # @since  2012-08-05
    # @return [Fixnum|Bignum]
    #
    attr_reader :column

    ##
    # The name of the file in which the error occured.
    #
    # @since  2012-08-05
    # @return [String]
    #
    attr_reader :file

    ##
    # Creates a new instance of the error class.
    #
    # @since 2012-08-05
    # @param [String] message The error message.
    # @param [Fixnum|Bignum] line The line of the error.
    # @param [Fixnum|Bignum] column The column of the error.
    # @param [String] file The file in which the error occured.
    #
    def initialize(message, line, column, file)
      @line, @column, @file = line, column, file

      super(message)
    end
  end # ParserError
end # Rlint
