require File.expand_path('../lib/ruby-lint/inspector', __FILE__)
require 'yaml'
require 'rubygems/package_task'
require 'digest/sha2'
require 'erb'

GEMSPEC = Gem::Specification.load('ruby-lint.gemspec')

DEFINITION_TEMPLATE = File.expand_path(
  '../lib/ruby-lint/template/definition.erb',
  __FILE__
)

Dir['./task/*.rake'].each do |task|
  import(task)
end

Gem::PackageTask.new(GEMSPEC) do |pkg|
  pkg.need_tar = false
  pkg.need_zip = false
end

task :default => :test
