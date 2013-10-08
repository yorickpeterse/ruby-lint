require 'ruby-prof'

require_relative '../lib/ruby-lint'

parser = RubyLint::Parser.new
file   = File.expand_path('../../lib/ruby-lint/virtual_machine.rb', __FILE__)
ast    = parser.parse(File.read(file), file)
amount = 1000

result = RubyProf.profile do
  amount.times do
    RubyLint::VirtualMachine.new.run(ast)
  end
end

result.eliminate_methods!([/Integer#times/])

printer = RubyProf::GraphHtmlPrinter.new(result)

printer.print(STDOUT, :sort_method => :self_time)
