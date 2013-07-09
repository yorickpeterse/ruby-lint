# Basic script that displays the locations from which a method is called using
# the TracePoint API. The name of the receiver and method can be specified as
# commandline arguments.
#
# Example:
#
#     ruby debug/trace_method.rb Hash initialize
#

unless Object.const_defined?(:TracePoint)
  abort 'This script requires the Ruby 2.0 TracePoint API'
end

receiver = ARGV.shift
method   = ARGV.shift

if !receiver and !method
  abort 'You must specify a method and optionally a receiver'
end

# Allow users to only specify a method.
if receiver and !method
  method   = receiver
  receiver = nil
end

abort 'You must specify a method name' unless method

tracers = []
method  = method.to_sym
calls   = Hash.new { |hash, key| hash[key] = [] }

[:call, :c_call].each do |event|
  tracers << TracePoint.new(event) do |tp|
    display_call = false
    class_name   = tp.defined_class.to_s

    if receiver
      display_call = class_name == receiver && tp.method_id == method
    else
      display_call = tp.method_id == method
    end

    if display_call
      key   = "#{class_name}##{tp.method_id}"
      value = [tp.path, tp.lineno]

      calls[key] << value unless calls[key].include?(value)
    end
  end
end

tracers.map(&:enable)

require_relative '../lib/ruby-lint'
require_relative '../lib/ruby-lint/definitions/rails'

tracers.map(&:disable)

calls.each do |name, locations|
  puts name

  locations.each_with_index do |(path, line), index|
    puts "  #{index + 1}. File: #{path}"
    puts "     Line: #{line}"
    puts
  end
end
