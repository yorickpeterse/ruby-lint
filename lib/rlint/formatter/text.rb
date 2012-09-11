module Rlint
  module Formatter
    ##
    # Report formatter that displays results in plain text.
    #
    class Text
      def format(report)
        lines    = []
        per_file = {}

        # Organize the messages per file.
        report.each do |level, messages|
          messages.each do |message|
            message[:level]            = level
            per_file[message[:file]] ||= []
            per_file[message[:file]] << message
          end
        end

        # Sort the messages per file and level and create each line to output.
        per_file.sort.each do |file, messages|
          messages.sort { |l, r| l[:level] <=> r[:level] }.each do |message|
            lines << '%s: %s: line %s, column %s: %s' % [
              message[:file],
              message[:level],
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
