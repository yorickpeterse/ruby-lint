module Rlint
  ##
  # {Rlint::Report} is a class used for storing error messages, warnings and
  # informational messages about code processed by {Rlint::Iterator} and
  # individual callback classes.
  #
  class Report
    attr_reader :messages
    attr_reader :levels

    def initialize(levels = [:error, :warning, :info])
      @levels    = levels
      @messages  = {}
    end

    def add(level, message, line, column, file)
      level = level.to_sym

      return unless @levels.include?(level)

      @messages[level] ||= []

      @messages[level] << {
        :message => message,
        :line    => line,
        :column  => column,
        :file    => file
      }
    end
  end # Report
end # Rlint
