module RubyLint
  class Report
    ##
    # {RubyLint::Report::Entry} contains data about a single report entry such
    # as the message and line number.
    #
    # @!attribute [r] level
    #  @return [Symbol]
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
      attr_reader :level, :message, :line, :column, :file

      ##
      # @param [Symbol] level
      # @param [String] message
      # @param [Numeric] line
      # @param [Numeric] column
      # @param [String] file
      #
      def initialize(level, message, line, column, file)
        @level   = level
        @message = message
        @line    = line
        @column  = column
        @file    = file
      end

      ##
      # @return [String]
      #
      def filename
        return File.basename(file)
      end

      ##
      # Returns a Hash containing the attributes of the entry.
      #
      # @return [Hash]
      #
      def attributes
        return {
          :level   => level,
          :message => message,
          :line    => line,
          :column  => column,
          :file    => file
        }
      end

      ##
      # Determines the sort order of the current entry. The entry is sorted
      # based on the filename and the line.
      #
      # @param [RubyLint::Report::Entry] other The entry to compare with the
      #  current one.
      # @return [Numeric]
      #
      def <=>(other)
        return (filename <=> other.filename) <=> (other.line <=> line)
      end
    end # Entry
  end # Report
end # RubyLint
