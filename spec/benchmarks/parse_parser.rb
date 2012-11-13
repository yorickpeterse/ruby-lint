# This file runs a simple benchmark to see how fast (or slow) Rlint is.
# It benchmarks how long it takes to parse the main parser file
# (lib/ruby-lint/parser.rb) itself.
require File.expand_path('../../../lib/ruby-lint', __FILE__)
require 'benchmark'

code   = File.read(File.expand_path('../../../lib/ruby-lint/parser.rb', __FILE__))
amount = ENV['AMOUNT'] ? ENV['AMOUNT'].to_i : 100

Benchmark.bmbm(40) do |bench|
  bench.report "Parse parser.rb #{amount} times" do
    amount.times do
      Rlint::Parser.new(code).parse
    end
  end
end
