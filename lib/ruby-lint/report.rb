module RubyLint
  ##
  # {RubyLint::Report} is a class used for storing error messages, warnings and
  # informational messages about code processed by {RubyLint::Iterator} and
  # individual callback classes.
  #
  # The process of adding data to a report involves two steps:
  #
  # 1. setting which levels to enable
  # 2. adding the data
  #
  # The first step is done by creating a new instance of this class and
  # defining a list of level names in the constructor's second parameter. The
  # following levels are used by RubyLint itself:
  #
  # * `:error`
  # * `:warning`
  # * `:info`
  #
  # The second step is done by calling {RubyLint::Report#add}. This method is
  # used to add data for a specific level. If this level is disabled the data
  # is not added to the report.
  #
  # A basic example of this is the following:
  #
  #     report = RubyLint::Report.new('test_file.rb', [:error])
  #
  #     report.add(:error, 'This is an error message', 1, 0)
  #
  #     # This message will not be added since it's not an error.
  #     report.add(:info, 'This is an info message', 2, 0)
  #
  class Report
    ##
    # Array containing the levels that are enabled by default.
    #
    # @return [Array]
    #
    DEFAULT_LEVELS = [:error, :warning, :info]

    ##
    # A hash containing the various messages stored per level.
    #
    # @return [Hash]
    #
    attr_reader :messages

    ##
    # An array of levels to use. For example, if `:info` is not included any
    # message using this level is ignored.
    #
    # @return [Array]
    #
    attr_reader :levels

    ##
    # Creates a new instance of the class.
    #
    # @param [Array] levels The message levels to use for this report.
    #
    def initialize(levels = DEFAULT_LEVELS)
      @levels   = levels.map { |level| level.to_sym }.freeze
      @messages = {}

      @levels.each { |level| @messages[level] = [] }
    end

    ##
    # Adds a message to the report.
    #
    # @param [Symbol] level The level of the message.
    # @param [String] message The message to add.
    # @param [Fixnum] line
    # @param [Fixnum] column
    # @param [String] file
    #
    def add(level, message, line, column, file)
      return unless valid_level?(level)

      @messages[level] << {
        :message => message,
        :line    => line,
        :column  => column,
        :file    => file
      }
    end

    private

    ##
    # Checks if the specified level is valid.
    #
    # @param [Symbol] level
    # @return [TrueClass|FalseClass]
    #
    def valid_level?(level)
      return @levels.include?(level)
    end
  end # Report
end # RubyLint
