require File.expand_path('../lib/ruby-lint/extensions/string', __FILE__)
require File.expand_path('../lib/ruby-lint/inspector', __FILE__)
require File.expand_path('../lib/ruby-lint/definition_generator', __FILE__)

require 'yaml'
require 'rubygems/package_task'
require 'digest/sha2'

GEMSPEC = Gem::Specification.load('ruby-lint.gemspec')

Dir['./task/*.rake'].each do |task|
  import(task)
end

Gem::PackageTask.new(GEMSPEC) do |pkg|
  pkg.need_tar = false
  pkg.need_zip = false
end

task :default => :test
