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

    ##
    # Returns an Array containing the file paths that exist. If a non existing
    # file is encountered `abort` is called.
    #
    # @param [Array] files
    # @return [Array]
    #
    def self.existing_files(files)
      existing = []

      files.each do |file|
        file = File.expand_path(file)

        if File.file?(file)
          existing << file
        else
          abort "The file #{file} does not exist"
        end
      end

      return existing
    end

    ##
    # Starts the CLI.
    #
    def self.run
      options.parse
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
          puts self
          exit
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
  end # CLI
end # RubyLint
