require File.expand_path('../../../lib/ruby-lint', __FILE__)

# This file benchmarks the memory increase after parsing a particular Rlint
# file and performing code analysis on the resulting tokens.
#
# For each iteration (the amount is set in the "AMOUNT" environment variable)
# the increase is measured. Once finished the average increase is displayed as
# well as the total memory usage at the end of the script.

def memory_usage
  return `ps -o rss= #{Process.pid}`.strip.to_i
end

def benchmark_memory
  start_memory = memory_usage

  yield

  return memory_usage - start_memory
end

memory_kb = 0.0
amount    = ENV['AMOUNT'] ? ENV['AMOUNT'].to_i : 100
path      = File.expand_path('../../../lib/ruby-lint/parser.rb', __FILE__)
code      = File.read(path, File.size(path))

amount.times do
  memory_kb += benchmark_memory do
    tokens   = Rlint::Parser.new(code, path).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::CodingStyle)
    iterator.bind(Rlint::Analyze::Definitions)

    iterator.run(tokens)
  end
end

memory_kb     /= amount
memory_mb      = memory_kb / 1024
memory_end_kb  = memory_usage
memory_end_mb  = memory_end_kb / 1024

puts "Average memory increase for each iteration (total of #{amount})"
puts
puts "Kilobytes: #{memory_kb.round}"
puts "Megabytes: #{memory_mb.round(2)}"
puts
puts 'End memory usage'
puts
puts "Kilobytes: #{memory_end_kb.round}"
puts "Megabytes: #{memory_end_mb.round(2)}"
