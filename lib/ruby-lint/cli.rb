require 'optparse'

module RubyLint
  ##
  # {RubyLint::CLI} is the commandline interface to RubyLint.
  #
  class CLI
    ##
    # Creates a new instance of the class and configures OptionParser.
    #
    def initialize
      @formatters = constant_short_names(RubyLint::Formatter)
      @analyzers  = constant_short_names(RubyLint::Analyze)

      @option_parser = OptionParser.new do |opts|
        opts.banner         = 'A static code analysis tool and linter for Ruby'
        opts.program_name   = 'ruby-lint'
        opts.version        = RubyLint::VERSION
        opts.summary_indent = '  '

        opts.separator ''
        opts.separator 'Usage:'
        opts.separator '  $ ruby-lint [FILES] [OPTIONS]'

        opts.separator ''
        opts.separator 'Analyzers:'
        opts.separator hash_to_list(@analyzers)

        opts.separator ''
        opts.separator 'Formatters:'
        opts.separator hash_to_list(@formatters)

        opts.separator ''
        opts.separator 'Reporting levels:'
        opts.separator "  error\n  warning\n  info"

        opts.separator ''
        opts.separator 'Options:'

        opts.on(
          '-f',
          '--formatter=VALUE',
          'The formatter to use',
          String
        ) do |formatter|
          if @formatters.key?(formatter)
            RubyLint.options.formatter = @formatters[formatter]
          end
        end

        opts.on(
          '-l',
          '--levels=VALUE',
          'The reporting levels to enable',
          Array
        ) do |levels|
          RubyLint.options.levels = levels.map { |level| level.to_sym }
        end

        opts.on(
          '-a',
          '--analyzers=VALUE',
          'The analyzers to enable',
          Array
        ) do |names|
          analyzers = Options::REQUIRED_ANALYZERS.dup

          names.each do |name|
            const = @analyzers[name]

            if const and !analyzers.include?(const)
              analyzers << const
            end
          end

          RubyLint.options.analyzers = analyzers
        end

        opts.on('-h', '--help', 'Shows this help message') do
          puts @option_parser
          exit
        end

        opts.on('-v', '--version', 'Shows the current version') do
          version
        end
      end
    end

    ##
    # Runs RubyLint.
    #
    # @param [Array] argv Array of commandline parameters.
    #
    def run(argv = ARGV)
      @option_parser.parse!(argv)

      abort 'You have to specify a file to analyze' if argv.empty?

      argv.each do |file|
        abort "The file #{file} is not valid" unless File.file?(file)

        code      = File.read(file, File.size(file))
        tokens    = Parser.new(code, file).parse
        report    = Report.new(file, RubyLint.options.levels)
        iterator  = Iterator.new(report)
        formatter = RubyLint.options.formatter.new

        RubyLint.options.analyzers.each { |const| iterator.bind(const) }

        iterator.run(tokens)

        output = formatter.format(report)

        puts output unless output.empty?
      end
    end

    ##
    # Shows the current version of RubyLint.
    #
    def version
      puts "RubyLint version #{RubyLint::VERSION} running on #{RUBY_DESCRIPTION}"
      exit
    end

    private

    ##
    # Returns a hash containing various short names and the constants to use.
    #
    # @param  [Class] constant The constant to use.
    # @return [Hash]
    #
    def constant_short_names(constant)
      hash = {}

      constant.constants.sort.each do |const|
        name       = const.to_s.gsub(/([a-z]+)([A-Z]+)/, '\\1_\\2').downcase
        hash[name] = constant.const_get(const)
      end

      return hash
    end

    ##
    # Returns a string containing the names and descriptions of various
    # constants formatted as a list.
    #
    # @param  [Hash] hash
    # @return [String]
    #
    def hash_to_list(hash)
      longest = hash.keys.sort { |l, r| l.length <=> r.length }[-1].length
      longest = longest > 32 ? longest : 32
      list    = []

      hash.each do |name, const|
        description = const.const_get(:DESCRIPTION)

        list << "  %-#{longest}s %s" % [name, description]
      end

      return list.join("\n")
    end
  end # CLI
end # RubyLint
