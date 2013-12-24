require 'rspec'
require 'stringio'
require 'redcard'
require 'tmpdir'
require 'fileutils'
require 'tempfile'

if ENV['COVERAGE']
  require_relative 'support/simplecov'
end

if ENV['COVERALLS']
  require_relative 'support/coveralls'
end

# Disable caching of RubyLint::Runner for all tests.
ENV['RUBY_LINT_DISABLE_CACHE'] = '1'

require_relative '../lib/ruby-lint'
require_relative 'support/building'
require_relative 'support/parsing'
require_relative 'support/definitions'
require_relative 'support/fixtures'
require_relative 'support/versions'

RSpec.configure do |config|
  config.color = true
end
