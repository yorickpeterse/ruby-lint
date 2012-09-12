module Rlint
  module Formatter
    ##
    # Report formatter that displays results in plain text.
    #
    class Text
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
