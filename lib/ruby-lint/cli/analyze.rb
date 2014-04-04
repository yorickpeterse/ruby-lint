RubyLint::CLI.options.command :analyze do
  banner      'Usage: ruby-lint analyze [FILES] [OPTIONS]'
  description 'Analyze the source code of Ruby files'

  separator <<-EOF.chomp

About:

  This command analyses the source code of a Ruby file and presents a report
  containing information such as errors about invalid code, warnings and
  informational messages.

Configuration:

  When this command is executed it will try to load a configuration file in
  one of the following two locations (in this order):

  * $PWD/ruby-lint.yml
  * ~/.ruby-lint.yml

  Only the first existing configuration file is loaded.

  These configuration files can be used for specifying the presenter, reporting
  levels and various other options.

  You can also configure various parts using the supplied commandline options.
  For example, to use the JSON presenter you'd run the following:

    $ ruby-lint analyze ./test_file.rb --presenter=json

Analysis Classes:

  #{RubyLint::CLI.format_names(:available_analysis_classes)}

Presenters:

  #{RubyLint::CLI.format_names(:available_presenters)}

Reporting Levels:

  #{RubyLint::CLI.format_names(:available_report_levels)}

Examples:

  To analyze a single file you can run the following command:

      $ ruby-lint analyze ./test_file.rb

  You can also specify multiple files:

      $ ruby-lint analyze first_file.rb second_file.rb

  Run analysis on an entire directory:

      $ ruby-lint analyze lib/
  EOF

  separator RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  on :l=, :levels=, 'The reporting levels to enable', :as => Array
  on :p=, :presenter=, 'The presenter to use', :as => String
  on :a=, :analysis=, 'The analysis classes to use', :as => Array
  on :b, :benchmark, 'Enables benchmarking mode'
  on :d, :debug, 'Displays debugging output in STDERR'

  ##
  # Returns an Array containing the file paths that exist. If a non existing
  # file is encountered `abort` is called.
  #
  # @param [Array] files
  # @return [Array]
  #
  def extract_files(files)
    return RubyLint::FileList.new.process(files)

  rescue Errno::ENOENT => error
    abort error.message
  end

  ##
  # @return [Hash]
  #
  def option_mapping
    return {
      :levels    => :report_levels=,
      :presenter => :presenter=,
      :analysis  => :analysis_classes=,
      :debug     => :debug=
    }
  end

  ##
  # @return [IO]
  #
  def output_destination
    return @output_destination ||= STDOUT
  end

  ##
  # @param [IO] destination
  #
  def output_destination=(destination)
    @output_destination = destination
  end

  # The stdout and stderr methods mainly exist to make testing a bit easier.

  ##
  # @return [IO]
  #
  def stdout
    return STDOUT
  end

  ##
  # @return [IO]
  #
  def stderr
    return STDERR
  end

  ##
  # @param [RubyLint::Configuration] configuration
  # @param [Hash] opts
  #
  def configure(configuration, options)
    option_mapping.each do |key, setter|
      configuration.send(setter, options[key]) if options[key]
    end
  end

  ##
  # @param [String] output
  # @param [Float] exec_time
  #
  def show_benchmark_info(output, exec_time)
    memory_kb = `ps -o rss= #{Process.pid}`.strip.to_f
    memory_mb = memory_kb / 1024

    output_destination.puts unless output.empty?

    output_destination.puts "Execution time: #{exec_time.round(4)} seconds"

    output_destination.puts "Memory usage: #{memory_mb.round(2)} MB " \
      "(#{memory_kb.round(2)} KB)"
  end

  run do |opts, args|
    abort 'You must specify at least one file to analyze' if args.empty?

    start_time    = Time.now.to_f
    files         = extract_files(args)
    configuration = RubyLint::Configuration.load_from_file

    configure(configuration, opts)

    runner    = RubyLint::Runner.new(configuration)
    output    = runner.analyze(files)
    exec_time = Time.now.to_f - start_time

    output_destination.puts output unless output.empty?

    show_benchmark_info(output, exec_time) if opts[:benchmark]
  end # run do |opts, args|
end # RubyLint::CLI.options.command
