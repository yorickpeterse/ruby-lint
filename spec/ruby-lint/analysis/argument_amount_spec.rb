require 'spec_helper'

describe RubyLint::Analysis::ArgumentAmount do
  it 'validates the amount of required arguments' do
    code = <<-CODE
def example(first, second)
end

example
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 1
    entry.message.should == 'wrong number of arguments (expected 2 but got 0)'
  end

  it 'validates argument amounts when using optional arguments' do
    code = <<-CODE
def example(first, second, third = nil)
end

example
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 1
    entry.message.should == 'wrong number of arguments ' \
      '(expected 2..3 but got 0)'
  end

  it 'validates argument amounts when using rest arguments' do
    code = <<-CODE
def example(first, second, *args)
end

example
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 1
    entry.message.should == 'wrong number of arguments ' \
      '(expected 2 but got 0)'
  end

  it 'validates argument amounts when using a required and rest argument' do
    code = <<-CODE
def example(required, *numbers)
end

example(10, 20, 30)
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)

    report.entries.length.should == 0
  end

  it 'takes variable assignments into account' do
    code = <<-CODE
name = 'Ruby'

name.downcase
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)

    report.entries.empty?.should == true
  end

  it 'does not validate methods called on undefined receivers' do
    code   = 'A.example_method'
    report = build_report(code, RubyLint::Analysis::ArgumentAmount)

    report.entries.empty?.should == true
  end

  it 'uses #initialize for arguments when processing .new' do
    code = <<-CODE
class Person
  def initialize(name)
  end
end

Person.new
Person.new(10, 20)
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)

    report.entries.length.should == 2

    first, second = report.entries

    first.line.should    == 6
    first.column.should  == 1
    first.message.should == 'wrong number of arguments (expected 1 but got 0)'

    second.line.should    == 7
    second.column.should  == 1
    second.message.should == 'wrong number of arguments (expected 1 but got 2)'
  end

  it 'ignores block arguments' do
    code = <<-CODE
def example; end

block = proc {}

example(&block)
    CODE

    report = build_report(code, RubyLint::Analysis::ArgumentAmount)

    report.entries.empty?.should == true
  end
end
