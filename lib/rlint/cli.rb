module Rlint
  ##
  # {Rlint::CLI} is a Shebang class that is used for running Rlint from the
  # commandline.
  #
  class CLI < Shebang::Command
    command :default

    ##
    # List of short names for various formatters and the corresponding classes.
    #
    # @return [Hash]
    #
    FORMATTERS = {
      'text' => Rlint::Formatter::Text
    }

    ##
    # Hash containing the short names for the various Analyzer classes.
    #
    # @return [Hash]
    #
    ANALYZERS = {
      'coding_style' => Rlint::Analyze::CodingStyle,
      'definitions'  => Rlint::Analyze::Definitions
    }

    banner 'A static code analysis tool and linter for Ruby'
    usage  '$ rlint [FILES] [OPTIONS]'

    help 'Formatters', <<-HELP.strip
text: formats the results as plain text
    HELP

    help 'Analyzers', <<-HELP.strip
coding_style: checks the coding style of a given Ruby file
  definitions: validates the code of a given Ruby file
    HELP

    help 'Reporting Levels', <<-HELP.strip
error
  warning
  info
    HELP

    o :v, :version, 'Shows the version of Rlint', :method => :version
    o :f, :formatter, 'The formatter to use', :type => String
    o :l, :levels, 'The reporting levels to enable', :type => Array
    o :a, :analyzers, 'The analyzers to enable', :type => Array

    ##
    # Runs the command.
    #
    # @param [Array] args Array of additional arguments specified.
    #
    def index(args = [])
      abort 'You have to specify at least one file to analyze' if args.empty?

      # Set the formatter to use.
      if option(:f) and FORMATTERS.key?(option(:f))
        Rlint.options.formatter = FORMATTERS[option(:f)]
      end

      # Set the reporting levels to use.
      if option(:l)
        Rlint.options.levels = option(:l).map { |l| l.to_sym }
      end

      # Set the analyzer classes to use.
      if option(:a)
        analyzers = []

        option(:a).each do |analyzer|
          if ANALYZERS.key?(analyzer)
            analyzers << ANALYZERS[analyzer]
          end
        end

        unless analyzers.empty?
          Rlint.options.analyzers = analyzers
        end
      end

      args.each do |file|
        abort "The file #{file} does not exist" unless File.exist?(file)

        code      = File.read(file, File.size(file))
        tokens    = Rlint::Parser.new(code, file).parse
        report    = Rlint::Report.new(file, Rlint.options.levels)
        iterator  = Rlint::Iterator.new(report)
        formatter = Rlint.options.formatter.new

        Rlint.options.analyzers.each do |analyzer|
          iterator.bind(analyzer)
        end

        iterator.run(tokens)

        output = formatter.format(report)

        unless output.empty?
          puts output
        end
      end
    end

    ##
    # Shows the version of Rlint and exits.
    #
    def version
      puts "Rlint version #{Rlint::VERSION} running on #{RUBY_DESCRIPTION}"
      exit
    end
  end # CLI
end # Rlint
