module RubyLint
  module Presenter
    ##
    # {RubyLint::Presenter::Emacs} formats a instance of {RubyLint::Report} into
    # a format parsable by Emacs compile mode
    #
    class Emacs < Base
      register 'emacs'

      ##
      # The default format to use when presenting report entries.
      #
      # @return [String]
      #
      FORMAT = '%{file}:%{line}:%{column}:%{level}: %{message}'

      ##
      # @param [String] format The format to use for each entry.
      #
      def initialize(format = FORMAT.dup)
        @format = format
      end

      ##
      # @param [RubyLint::Report] report The report to present.
      # @return [String]
      #
      def present(report)
        entries = []

        report.entries.sort.each do |entry|
          entries << @format % entry.attributes
        end

        return entries.join("\n")
      end
    end # Emacs
  end # Presenter
end # RubyLint
