require File.expand_path('../lib/ruby-lint/extensions/string', __FILE__)
require File.expand_path('../lib/ruby-lint/inspector', __FILE__)
require File.expand_path('../lib/ruby-lint/definition_generator', __FILE__)

require 'yaml'
require 'bundler/gem_tasks'
require 'digest/sha2'

GEMSPEC = Gem::Specification.load('ruby-lint.gemspec')

Dir['./task/*.rake'].each do |task|
  import(task)
end

task :default => :test
