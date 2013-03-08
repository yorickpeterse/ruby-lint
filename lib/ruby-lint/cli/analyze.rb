RubyLint::CLI.options.command :analyze do
  banner      'Usage: ruby-lint analyze [FILES] [OPTIONS]'
  description 'Analyzes the source code of Ruby files'

  separator <<-EOF.chomp

About:

  This command analyses the source code of a Ruby file and presents a report
  containing information such as errors about invalid code, warnings and
  informational messages.

Examples:

  To analyze a single file you can run the following command:

      $ ruby-lint analyze ./test_file.rb

  You can also specify multiple files:

      $ ruby-lint analyze first_file.rb second_file.rb
  EOF

  separator RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  run do |opts, args|
    abort 'You must specify at least one file to analyze' if args.empty?

    files = RubyLint::CLI.existing_files(args)

    RubyLint.load_configuration

    files.each do |file|
      ast          = RubyLint::Parser.new(File.read(file), file).parse
      defs_builder = RubyLint::DefinitionsBuilder.new
      report       = RubyLint.configuration.report
      presenter    = RubyLint.configuration.presenter.new

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
