require 'rspec'
require 'stringio'
require 'redcard'
require 'tmpdir'
require 'fileutils'
require 'tempfile'

if ENV['COVERAGE']
  require_relative 'support/simplecov'
end

require_relative '../lib/ruby-lint'
require_relative 'support/building'
require_relative 'support/parsing'
require_relative 'support/definitions'
require_relative 'support/fixtures'
require_relative 'support/versions'

RSpec.configure do |config|
  config.color = true

  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
