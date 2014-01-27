require File.expand_path('../lib/ruby-lint/extensions/string', __FILE__)
require File.expand_path('../lib/ruby-lint/inspector', __FILE__)
require File.expand_path('../lib/ruby-lint/definition_generator', __FILE__)

require File.expand_path('../lib/ruby-lint/rake_task', __FILE__)

RubyLint::RakeTask.new do |task|
  task.name  = 'lint'
  task.files = ['./lib/ruby-lint']
end

require 'yaml'
require 'bundler/gem_tasks'
require 'digest/sha2'
require 'coveralls/rake/task'
require 'rake/clean'

Coveralls::RakeTask.new

GEMSPEC = Gem::Specification.load('ruby-lint.gemspec')

CLEAN.include(['coverage', 'yardoc'])

Dir['./task/*.rake'].each do |task|
  import(task)
end

task :default => :test
