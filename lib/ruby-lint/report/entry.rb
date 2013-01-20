module RubyLint
  class Report
    ##
    # {RubyLint::Report::Entry} contains data about a single report entry such
    # as the message and line number.
    #
    # @!attribute [r] message
    #  @return [String]
    # @!attribute [r] line
    #  @return [Numeric]
    # @!attribute [r] column
    #  @return [Numeric]
    # @!attribute [r] file
    #  @return [String]
    #
    class Entry
      attr_reader :message, :line, :column, :file

      ##
      # @param [String] message
      # @param [Numeric] line
      # @param [Numeric] column
      # @param [String] file
      #
      def initialize(message, line, column, file)
        @message = message
        @line    = line
        @column  = column
        @file    = file
      end
    end # Entry
  end # Report
end # RubyLint
