desc 'Analyses the Ruby standard library

This task parses and analyses all the files in the Ruby standard library.
Errors that might occur during this process are catched using pry-rescue.'

task :stdlib do
  require File.expand_path('../../lib/ruby-lint', __FILE__)
  require 'pry/rescue'

  dir     = RbConfig::CONFIG['rubylibdir']
  files   = Dir.glob(File.join(dir, '/**/*.rb'))
  amount  = files.length
  spacing = "#{amount}/#{amount}:".length

  puts "Analysing the Ruby standard library"

  files.each_with_index do |file, index|
    prefix = "#{index + 1}/#{amount}:"
    path   = file.gsub(dir, '').gsub(%r{^/|/$}, '')

    puts "%-#{spacing}s %s" % [prefix, path]

    Pry.rescue do
      RubyLint::Parser.new(File.read(file), file).parse
    end
  end
end
