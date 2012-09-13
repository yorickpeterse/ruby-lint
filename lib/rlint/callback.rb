module Rlint
  ##
  # {Rlint::Callback} is a class that can be used (but you're not required to)
  # to remove some common boilerplate code from custom callback classes.
  #
  class Callback
    def initialize(report)
      @report = report
    end

    protected

    def error(message, line, column)
      @report.add(:error, message, line, column) if @report
    end

    def warning(message, line, column)
      @report.add(:warning, message, line, column) if @report
    end

    def info(message, line, column)
      @report.add(:info, message, line, column) if @report
    end
  end # Callback
end # Rlint
