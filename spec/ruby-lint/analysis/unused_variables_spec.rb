require 'spec_helper'

describe RubyLint::Analysis::UnusedVariables do
  example 'warn for unused local variables' do
    report = build_report('number = 1', RubyLint::Analysis::UnusedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'unused local variable number'
  end

  example 'do not warn for used variables' do
    code = <<-CODE
number = 1

number
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)

    report.entries.empty?.should == true
  end

  example 'warn for unused constants' do
    report = build_report('NUMBER = 10', RubyLint::Analysis::UnusedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'unused constant NUMBER'
  end

  example 'do not warn for used constants' do
    code = <<-CODE
A = 10

A
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)

    report.entries.empty?.should == true
  end

  example 'warn for unused constant paths' do
    code = <<-CODE
module A
end

A::B = 10
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 0
    entry.message.should == 'unused constant A::B'
  end

  example 'warn for unused variables in a method scope' do
    code = <<-CODE
def some_method
  number = 10
end
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 2
    entry.column.should  == 2
    entry.message.should == 'unused local variable number'
  end

  example 'do not add a warning when assigning a variable to another variable' do
    code = <<-CODE
first  = 10
second = first
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.line.should    == 2
    entry.column.should  == 0
    entry.message.should == 'unused local variable second'
  end

  example 'do not add warnings when defining classes and modules' do
    code = <<-CODE
module A
end

class B
end
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)

    report.entries.empty?.should == true
  end

  example 'ignore ivars if there is a corresponding method' do
    code = <<-CODE
@number = 10

def number; end
    CODE

    report = build_report(code, RubyLint::Analysis::UnusedVariables)

    report.entries.empty?.should == true
  end

  example 'ignore local variables that start with an underscore' do
    report = build_report('_number = 10', RubyLint::Analysis::UnusedVariables)

    report.entries.empty?.should == true
  end
end
