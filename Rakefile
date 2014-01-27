require_relative 'lib/ruby-lint/definition_generator'
require_relative 'lib/ruby-lint/rake_task'

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
