require 'ruby-prof'

RubyProf.measure_mode = RubyProf::MEMORY

result = RubyProf.profile do
  require_relative '../lib/ruby-lint'
  require_relative '../lib/ruby-lint/definitions/rails'
end

total    = result.threads[0].total_time
total_kb = total.round(2)
total_mb = (total / 1024).round(2)

puts "Total memory usage: #{total_mb}MB (#{total_kb}KB)"
