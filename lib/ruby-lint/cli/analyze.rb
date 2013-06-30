RubyLint::CLI.options.command :analyze do
  banner      'Usage: ruby-lint analyze [FILES] [OPTIONS]'
  description 'Analysiss the source code of Ruby files'

  separator <<-EOF.chomp

About:

  This command analyses the source code of a Ruby file and presents a report
  containing information such as errors about invalid code, warnings and
  informational messages.

Configuration:

  When this command is executed it will try to load a configuration file in
  one of the following two locations (in this order):

  * $PWD/ruby-lint.rb
  * ~/.ruby-lint.rb

  Only the first existing configuration file is loaded.

  These configuration files can be used for specifying the presenter, reporting
  levels and various other options.

  You can also configure various parts using the supplied commandline options.
  For example, to use the JSON presenter you'd run the following:

    $ ruby-lint analyze ./test_file.rb --presenter=json

Analysis Classes:

  #{RubyLint::CLI.format_names('analysis')}

Presenters:

  #{RubyLint::CLI.format_names('presenters')}

Reporting Levels:

  #{RubyLint::CLI.format_names('levels')}

Examples:

  To analyze a single file you can run the following command:

      $ ruby-lint analyze ./test_file.rb

  You can also specify multiple files:

      $ ruby-lint analyze first_file.rb second_file.rb
  EOF

  separator RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  on :l=, :levels=, 'The reporting levels to enable', :as => Array
  on :p=, :presenter=, 'The presenter to use', :as => String
  on :a=, :analysis=, 'The analysis classes to use', :as => Array

  ##
  # Returns an Array containing the file paths that exist. If a non existing
  # file is encountered `abort` is called.
  #
  # @param [Array] files
  # @return [Array]
  #
  def extract_files(files)
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
  # @return [Hash]
  #
  def option_mapping
    return {
      :levels    => :report_levels=,
      :presenter => :presenter=,
      :analysis  => :analysis_classes=
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

  run do |opts, args|
    abort 'You must specify at least one file to analyze' if args.empty?

    files         = extract_files(args)
    configuration = RubyLint::Configuration.load_from_file
    parser        = RubyLint::Parser.new
    report        = RubyLint::Report.new(configuration.report_levels)
    presenter     = configuration.presenter.new

    option_mapping.each do |key, setter|
      configuration.send(setter, opts[key]) if opts[key]
    end

    files.each do |file|
      code = File.read(file)
      ast  = parser.parse(code, file)
      vm   = RubyLint::VirtualMachine.new

      vm.run(ast)

      configuration.analysis_classes.each do |const|
        instance = const.new(:vm => vm, :report => report)
        instance.iterate(ast)
      end
    end

    output = presenter.present(report)

    output_destination.puts output unless output.empty?
  end # run do |opts, args|
end # RubyLint::CLI.options.command
