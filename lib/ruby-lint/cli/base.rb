module RubyLint
  module CLI
    ##
    # Hash containing configuration options for Slop.
    #
    # @return [Hash]
    #
    SLOP_OPTIONS = {
      :strict => true,
      :banner => 'Usage: ruby-lint [COMMAND] [OPTIONS]'
    }

    ##
    # The header to use for separating options with other bits of information
    # in help messages.
    #
    # @return [String]
    #
    OPTIONS_HEADER = "\nOptions:\n"

    #:nocov:

    ##
    # Formats the keys of a particular Hash stored on class level in
    # {RubyLint::Configuration}.
    #
    # @param [Symbol] name
    # @return [String]
    #
    def self.format_names(name)
      return "* #{Configuration.send(name).keys.sort.join("\n  * ")}"
    end

    ##
    # Starts the CLI.
    #
    # @param [Array] argv
    #
    def self.run(argv = ARGV)
      options.parse(argv)
    end

    ##
    # @return [Slop]
    #
    def self.options
      return @options ||= default_options
    end

    ##
    # @return [Slop]
    #
    def self.default_options
      return Slop.new(SLOP_OPTIONS) do
        separator OPTIONS_HEADER

        CLI.help_option(self)

        on :v, :version, 'Shows the current version' do
          puts CLI.version_information
          exit
        end

        run do |opts, args|
          if args.empty?
            puts self
            exit
          else
            CLI.options.commands['analyze'].parse(args)
          end
        end
      end
    end

    ##
    # Adds a `-h/--help` option for a command. This method should be executed
    # in the context of a Slop command.
    #
    # @param [Mixed] command
    #
    def self.help_option(command)
      command.instance_eval do
        on :h, :help, 'Shows this help message' do
          puts self
          exit
        end
      end
    end

    ##
    # Returns a String containing information about the current ruby-lint
    # version and platform.
    #
    # @return [String]
    #
    def self.version_information
      return "ruby-lint v#{VERSION} on #{RUBY_DESCRIPTION}"
    end

    #:nocov:
  end # CLI
end # RubyLint
