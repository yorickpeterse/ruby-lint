RubyLint::CLI.options.command :cache do
  banner      'Usage: ruby-lint cache [COMMAND] [OPTIONS]'
  description 'Manages ruby-lint cache files'

  separator <<-EOF.chomp

About:

  This command can be used to view and manage cache entries created by
  ruby-lint. This command is mainly meant to be used for debugging purposes.

Examples:

  Print a summary of the cache:

      $ ruby-lint cache

  Clear the cache:

      $ ruby-lint cache clear
  EOF

  separator RubyLint::CLI::OPTIONS_HEADER

  RubyLint::CLI.help_option(self)

  run do
    config  = RubyLint::Configuration.load_from_file
    pattern = File.join(config.cache_directory, '*.cache')
    files   = Dir.glob(pattern)
    size    = files.map { |file| File.size(file) }.inject(:+).to_f

    size_kb = (size / 1024).round(2)
    size_mb = (size / 1024 / 1024).round(2)

    puts <<-EOF.strip
Directory:   #{config.cache_directory}
Total files: #{files.length}
Total size:  #{size_kb} KB (#{size_mb} MB)
    EOF
  end

  command :clear do
    banner      'Usage: ruby-lint cache clear [OPTIONS]'
    description 'Removes all the cache files'

    separator RubyLint::CLI::OPTIONS_HEADER

    RubyLint::CLI.help_option(self)

    run do
      config  = RubyLint::Configuration.load_from_file
      pattern = File.join(config.cache_directory, '*.cache')

      Dir.glob(pattern).each do |file|
        File.unlink(file)
      end
    end
  end
end
