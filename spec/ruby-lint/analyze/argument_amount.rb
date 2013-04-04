require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analyze::ArgumentAmount do
  should 'validate the amount of required arguments' do
    code = <<-CODE
def example(first, second)
end

example
    CODE

    report = build_report(code, RubyLint::Analyze::ArgumentAmount)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 0
    entry.message.should == 'wrong number of arguments (expected 2 but got 0)'
  end

  should 'validate argument amounts when using optional arguments' do
    code = <<-CODE
def example(first, second, third = nil)
end

example
    CODE

    report = build_report(code, RubyLint::Analyze::ArgumentAmount)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 0
    entry.message.should == 'wrong number of arguments ' \
      '(expected 2..3 but got 0)'
  end

  should 'validate argument amounts when using rest arguments' do
    code = <<-CODE
def example(first, second, *args)
end

example
    CODE

    report = build_report(code, RubyLint::Analyze::ArgumentAmount)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 4
    entry.column.should  == 0
    entry.message.should == 'wrong number of arguments ' \
      '(expected 2 but got 0)'
  end

  should 'validate argument amounts when using a required and rest argument' do
    code = <<-CODE
def example(required, *numbers)
end

example(10, 20, 30)
    CODE

    report = build_report(code, RubyLint::Analyze::ArgumentAmount)

    report.entries.length.should == 0
  end

  should 'take variable assignments into account' do
    code = <<-CODE
name = 'Ruby'

name.downcase
    CODE

    report = build_report(code, RubyLint::Analyze::ArgumentAmount)

    report.entries.empty?.should == true
  end
end
