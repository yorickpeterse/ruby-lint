module RubyLint
  ##
  # Class used for running the CLI.
  #
  # @!attribute [r] options
  #  @return [Hash|Slop]
  #
  class Command
    attr_reader :options

    ##
    # @return [Hash]
    #
    OPTION_MAPPING = {
      :levels    => :report_levels=,
      :presenter => :presenter=,
      :analysis  => :analysis_classes=,
      :debug     => :debug=
    }

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
    # @param [Hash|Slop] options
    #
    def initialize(options)
      @options = options
    end

    ##
    # Runs the command with the supplied arguments.
    #
    # @param [Array] args
    #
    def run(args)
      start_time    = Time.now.to_f
      files         = extract_files(args)
      configuration = Configuration.load_from_file

      configure(configuration, options)

      runner    = Runner.new(configuration)
      output    = runner.analyze(files)
      exec_time = Time.now.to_f - start_time

      puts output unless output.empty?

      show_benchmark_info(exec_time) if options[:benchmark]
    end

    ##
    # Returns an Array containing the file paths that exist.
    #
    # @param [Array] files
    # @return [Array]
    #
    def extract_files(files)
      return RubyLint::FileList.new.process(files)
    end

    ##
    # @param [RubyLint::Configuration] configuration
    # @param [Hash] opts
    #
    def configure(configuration, options)
      OPTION_MAPPING.each do |key, setter|
        configuration.send(setter, options[key]) if options[key]
      end
    end

    ##
    # @param [Float] exec_time
    #
    def show_benchmark_info(exec_time)
      mem_kb = `ps -o rss= #{Process.pid}`.strip.to_f
      mem_mb = mem_kb / 1024

      stderr "Execution time: #{exec_time.round(4)} seconds"
      stderr "Memory usage: #{mem_mb.round(2)} MB (#{mem_kb.round(2)} KB)"
    end

    private

    ##
    # @param [String] text
    #
    def stderr(text)
      STDERR.puts(text)
    end
  end # Command
end # RubyLint
