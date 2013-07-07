require 'ruby-prof'

fixture_path = File.expand_path(
  '../../spec/fixtures/complex/rails/basic_controller.rb',
  __FILE__
)

result = RubyProf.profile do
  require_relative '../lib/ruby-lint'

  config = RubyLint::Configuration.new
  runner = RubyLint::Runner.new(config)

  runner.analyze([fixture_path])
end

printer = RubyProf::GraphPrinter.new(result)

printer.print(STDOUT)
