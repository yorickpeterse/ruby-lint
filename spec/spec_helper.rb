require 'rspec'
require 'stringio'

if ENV['COVERAGE']
  require_relative 'support/simplecov'
end

if ENV['COVERALLS']
  require_relative 'support/coveralls'
end

require_relative '../lib/ruby-lint'
require_relative 'support/building'
require_relative 'support/parsing'
require_relative 'support/definitions'
require_relative 'support/fixtures'

RSpec.configure do |config|
  config.color = true
end
