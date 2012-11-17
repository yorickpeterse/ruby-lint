module RubyLint
  module Spec
    ##
    # Helper module that removes some common cruft from specifications.
    #
    module Helper
      ##
      # Parses the given file path and returns an array of tokens.
      #
      # @param  [String] file The file to parse.
      # @return [Array]
      #
      def parse_file(file)
        return Parser.new(File.read(file), file).parse
      end

      ##
      # Creates a new instance of {RubyLint::Iterator} and binds all the
      # available analysis classes to it.
      #
      # @param  [RubyLint::Report] report An optional report to assign to the
      #  iterator.
      # @return [RubyLint::Iterator]
      #
      def create_iterator(report = nil)
        iterator = RubyLint::Iterator.new(report)

        iterator.bind(RubyLint::Analyze::Definitions)
        iterator.bind(RubyLint::Analyze::CodingStyle)
        iterator.bind(RubyLint::Analyze::MethodValidation)
        iterator.bind(RubyLint::Analyze::ShadowingVariables)
        iterator.bind(RubyLint::Analyze::UndefinedVariables)
        iterator.bind(RubyLint::Analyze::UnusedVariables)

        return iterator
      end
    end # Helper
  end # Spec
end # RubyLint
