require_relative '../lib/ruby-lint'
require 'benchmark'

parser = RubyLint::Parser.new
file   = File.expand_path('../../lib/ruby-lint/virtual_machine.rb', __FILE__)
ast    = parser.parse(File.read(file), file)
amount = 500

Benchmark.bmbm(40) do |bench|
  bench.report 'RubyLint::VirtualMachine#run' do
    amount.times do
      RubyLint::VirtualMachine.new.run(ast)
    end
  end
end
