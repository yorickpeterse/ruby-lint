# This benchmarks N runs of the VM and outputs them to the console making it
# easy to pass the data to tools such as `ministat`
# (http://www.freebsd.org/cgi/man.cgi?ministat).

require_relative '../lib/ruby-lint'
require 'benchmark'

parser = RubyLint::Parser.new
file   = File.expand_path('../../lib/ruby-lint/virtual_machine.rb', __FILE__)
ast    = parser.parse(File.read(file), file)
amount = 1000

amount.times do
  timing = Benchmark.measure { RubyLint::VirtualMachine.new.run(ast) }

  puts timing.real
end
