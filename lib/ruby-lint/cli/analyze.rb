RubyLint::CLI.options.command :analyze do
  banner      'Usage: ruby-lint analyze [FILES] [OPTIONS]'
  description 'Analyzes the source code of Ruby files'
  separator   RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  run do |opts, args|
    abort 'You must specify at least one file to analyze' if args.empty?

    files = []

    args.each do |path|
      path = File.expand_path(path)

      if File.file?(path)
        files << path
      else
        abort "The file #{path} does not exist"
      end
    end

    files.each do |file|
      ast          = RubyLint::Parser.new(File.read(file), file).parse
      defs_builder = RubyLint::DefinitionsBuilder.new
      report       = RubyLint::Report.new
      presenter    = RubyLint::Presenter::Text.new

      defs_builder.iterate(ast)

      RubyLint::Analyze.constants.each do |name|
        const    = RubyLint::Analyze.const_get(name)
        instance = const.new(
          :report           => report,
          :definitions      => defs_builder.options[:definitions],
          :node_definitions => defs_builder.options[:node_definitions]
        )

        instance.iterate(ast)
      end

      puts presenter.present(report)
    end
  end
end
