module Rlint
  ##
  # {Rlint::Report} is a class used for storing error messages, warnings and
  # informational messages about code processed by {Rlint::Iterator} and
  # individual callback classes.
  #
  # The process of adding data to a report involves two steps:
  #
  # 1. setting which levels to enable
  # 2. adding the data
  #
  # The first step is done by creating a new instance of this class and
  # defining a list of level names in the constructor's second parameter. The
  # following levels are used by Rlint itself:
  #
  # * `:error`
  # * `:warning`
  # * `:info`
  #
  # The second step is done by calling {Rlint::Report#add}. This method is used
  # to add data for a specific level. If this level is disabled the data is not
  # added to the report.
  #
  # A basic example of this is the following:
  #
  #     report = Rlint::Report.new('test_file.rb', [:error])
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
    # String containing the name/path of the file this report belongs to.
    #
    # @return [String]
    #
    attr_reader :file

    ##
    # Creates a new instance of the class.
    #
    # @param [String] file The name/path of the file that this report belongs
    #  to.
    # @param [Array] levels The message levels to use for this report.
    #
    def initialize(file = '(rlint)', levels = DEFAULT_LEVELS)
      @file     = file
      @levels   = levels
      @messages = {}
    end

    ##
    # Adds a message to the report.
    #
    # @param [#to_sym] level The level of the message.
    # @param [String] message The message to add.
    # @param [Fixnum] line The line number of the message.
    # @param [Fixnum] column The column number of the message.
    #
    def add(level, message, line, column)
      level = level.to_sym

      return unless @levels.include?(level)

      @messages[level] ||= []

      @messages[level] << {
        :message => message,
        :line    => line,
        :column  => column
      }
    end
  end # Report
end # Rlint
