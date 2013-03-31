RubyLint::CLI.options.command :analyze do
  banner      'Usage: ruby-lint analyze [FILES] [OPTIONS]'
  description 'Analyzes the source code of Ruby files'

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

  run do |opts, args|
    abort 'You must specify at least one file to analyze' if args.empty?

    files = RubyLint::CLI.existing_files(args)

    RubyLint.load_configuration

    RubyLint.configuration.set_reporting_levels(opts[:l]) if opts[:l]
    RubyLint.configuration.set_presenter(opts[:p]) if opts[:p]
    RubyLint.configuration.set_analysis(opts[:a]) if opts[:a]

    files.each do |file|
      ast          = RubyLint::Parser.new(File.read(file), file).parse
      defs_builder = RubyLint::DefinitionsBuilder.new
      loader       = RubyLint::ConstantLoader.new
      report       = RubyLint.configuration.report
      presenter    = RubyLint.configuration.presenter.new

      loader.iterate(ast)
      defs_builder.iterate(ast)

      RubyLint.configuration.analysis.each do |constant|
        instance = constant.new(
          :report           => report,
          :definitions      => defs_builder.options[:definitions],
          :node_definitions => defs_builder.options[:node_definitions]
        )

        instance.iterate(ast)
      end

      output = presenter.present(report)

      puts output unless output.empty?
    end
  end # run do |opts, args|
end # RubyLint::CLI.options.command
