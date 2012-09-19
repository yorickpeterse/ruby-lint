module Rlint
  module Formatter
    ##
    # {Rlint::Formatter::Text} is a formatter class that formats a report in a
    # format similar to the one used by Ruby when validating a Ruby file using
    # the `ruby` executable. An example of this format is the following:
    #
    #     b.rb: error: line 1, column 1: test error
    #     b.rb: info: line 3, column 1: test info b.rb
    #
    # Basic usage of this formatter is as following:
    #
    #     report    = Rlint::Report.new
    #     formatter = Rlint::Formatter::Text.new
    #
    #     # Add some data to the report.
    #     # ...
    #
    #     puts formatter.format(report)
    #
    class Text
      ##
      # Formats the specified report.
      #
      # @param  [Rlint::Report] report The report to format.
      # @return [String]
      #
      def format(report)
        lines = []

        report.messages.sort.each do |level, messages|
          messages.each do |message|
            lines << '%s: %s: line %s, column %s: %s' % [
              report.file,
              level,
              message[:line],
              message[:column],
              message[:message]
            ]
          end
        end

        return lines.join("\n")
      end
    end # Text
  end # Formatter
end # Rlint
