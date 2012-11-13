desc 'Analyses the Ruby standard library

This task parses and analyses all the files in the Ruby standard library.
Errors that might occur during this process are catched using pry-rescue.'

task :stdlib do
  require File.expand_path('../../lib/ruby-lint', __FILE__)
  require 'pry/rescue'

  dir = RbConfig::CONFIG['rubylibdir']

  puts 'Analysing the Ruby standard library'

  Pry.rescue do
    Dir.glob(File.join(dir, '/**/*.rb')).each do |f|
      puts "- #{f}"

      tokens   = RubyLint::Parser.new(File.read(f), f).parse
      iterator = RubyLint::Iterator.new

      Rlint.options.analyzers.each { |const| iterator.bind(const) }
    end
  end
end
