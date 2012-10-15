require File.expand_path('../../../lib/rlint', __FILE__)

file      = File.expand_path('../../../lib/rlint/scope.rb', __FILE__)
tokens    = Rlint::Parser.new(File.read(file), file).parse
report    = Rlint::Report.new
iterator  = Rlint::Iterator.new(report)
formatter = Rlint::Formatter::Text.new

iterator.bind(Rlint::Analyze::CodingStyle)
iterator.bind(Rlint::Analyze::Definitions)

iterator.iterate(tokens)

puts formatter.format(report)
