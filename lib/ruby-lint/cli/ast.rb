RubyLint::CLI.options.command :ast do
  banner      'Usage: ruby-lint ast [FILE] [OPTIONS]'
  description 'Shows the AST of a Ruby file'
  separator   RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  run do |opts, args|
    file = args[0]

    if !file or !File.file?(file)
      abort 'You must specify an existing file'
    end

    puts RubyLint::Parser.new(File.read(file), file).parse.inspect
  end
end
