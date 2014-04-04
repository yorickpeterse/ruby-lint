require_relative 'lib/ruby-lint/definition_generator'
require_relative 'lib/ruby-lint/rake_task'

require 'yaml'
require 'bundler/gem_tasks'
require 'digest/sha2'
require 'rake/clean'

RubyLint::RakeTask.new do |task|
  task.name  = 'lint'
  task.files = ['./lib/ruby-lint']
end

GEMSPEC = Gem::Specification.load('ruby-lint.gemspec')

CLEAN.include(['coverage', 'yardoc'])

Dir['./task/*.rake'].each do |task|
  import(task)
end

task :default => :test
