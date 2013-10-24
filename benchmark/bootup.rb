# This benchmark script measures the amount of time it takes to boot up the CLI
# and analyze the VM with caching disabled.

require_relative '../lib/ruby-lint/benchmark/average'

script  = File.expand_path('../../bin/ruby-lint', __FILE__)
command = "#{script} analyze --disable-cache lib/ruby-lint/virtual_machine.rb"

RubyLint::Benchmark::Average.measure do
  output = `#{command}`

  raise "Command failed: #{output}" unless $?.success?
end
