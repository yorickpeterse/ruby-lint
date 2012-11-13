module Rlint
  ##
  # {Rlint::Callback} is a class that can be used (but you're not required to)
  # to remove some common boilerplate code from custom callback classes.
  #
  # Using this class can be done by simply extending it:
  #
  #     class MyCallback < Rlint::Callback
  #
  #     end
  #
  # Once extended the following helper methods are provided:
  #
  # * {Rlint::Callback#error}
  # * {Rlint::Callback#warning}
  # * {Rlint::Callback#info}
  #
  # These 3 methods can be used to add data to a report. If no report is set
  # the methods will not execute any code. This means your own code does not
  # have to check for a valid instance of {Rlint::Report} in the `@report`
  # instance variable every time you want to add data to it.
  #
  class Callback
    ##
    # Creates a new instance of the class and stores the report.
    #
    # @param [Rlint::Report|NilClass] report The report instance to use.
    # @param [Hash] options A hash containing custom options to set for the
    #  callback.
    #
    def initialize(report = nil, storage = {})
      @report  = report
      @storage = storage
    end

    protected

    ##
    # Adds an error message to the report.
    #
    # @param [String] message The message to add.
    # @param [Fixnum] line The line number of the message.
    # @param [Fixnum] column The column number of the message.
    #
    def error(message, line, column)
      @report.add(:error, message, line, column) if @report
    end

    ##
    # Adds a warning message to the report.
    #
    # @see Rlint::Callback#error
    #
    def warning(message, line, column)
      @report.add(:warning, message, line, column) if @report
    end

    ##
    # Adds a regular informational message to the report.
    #
    # @see Rlint::Callback#error
    #
    def info(message, line, column)
      @report.add(:info, message, line, column) if @report
    end
  end # Callback
end # Rlint
