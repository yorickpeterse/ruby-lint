module Rlint
  ##
  # {Rlint::Report} is a class used for storing error messages, warnings and
  # informational messages about code processed by {Rlint::Iterator} and
  # individual callback classes.
  #
  class Report
    attr_reader :messages
    attr_reader :levels
    attr_reader :file

    def initialize(file = '(rlint)', levels = [:error, :warning, :info])
      @file      = file
      @levels    = levels
      @messages  = {}
    end

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
