require 'spec_helper'

describe RubyLint::Analysis::ShadowingVariables do
  example 'warn for shadowing outer variables' do
    code = <<-CODE
number = 10

[10, 20].each do |number|
  puts number
end
    CODE

    report = build_report(code, RubyLint::Analysis::ShadowingVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 3
    entry.column.should  == 18
    entry.message.should == 'shadowing outer local variable number'
  end

  example 'not warn for shadowed variables in a new scope' do
    code = <<-CODE
number = 10

def example
  [10, 20].each do |number|
    puts number
  end
end
    CODE

    report = build_report(code, RubyLint::Analysis::ShadowingVariables)

    report.entries.empty?.should == true
  end

  example 'warn when shadowing variables after a new scope' do
    code = <<-CODE
number = 10

def example; end

[10, 20].each do |number|
  puts number
end
    CODE

    report = build_report(code, RubyLint::Analysis::ShadowingVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 5
    entry.column.should  == 18
    entry.message.should == 'shadowing outer local variable number'
  end

  example 'not fail when re-using the same block' do
    code = <<-CODE
number = 10

A::B.example do |number|
  number
end

A::B.example do |number|
  number
end
    CODE

    report = build_report(code, RubyLint::Analysis::ShadowingVariables)

    report.entries.length.should == 2

    first, second = report.entries

    first.line.should    == 3
    first.column.should  == 17

    second.line.should    == 7
    second.column.should  == 17
  end
end