require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analyze::UndefinedVariables do
  should 'add an error for using an undefined instance variable' do
    report = build_report('@number', RubyLint::Analyze::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined instance variable @number'
  end

  should 'add an error for using an undefined class variable' do
    report = build_report('@@number', RubyLint::Analyze::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined class variable @@number'
  end

  should 'add an error for using an undefined global variable' do
    report = build_report('$number', RubyLint::Analyze::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined global variable $number'
  end

  should 'add an error for using an undefined constant' do
    report = build_report('NUMBER', RubyLint::Analyze::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined constant NUMBER'
  end

  should 'add an error for using an undefined constant in a constant path' do
    code = <<-CODE
# This is to ensure that the on_constant() callback isn't used to check for "B"
# in the global scope.
B = 10

module A
end

A::B
    CODE

    report = build_report(code, RubyLint::Analyze::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 8
    entry.column.should  == 3
    entry.message.should == 'undefined constant B'
  end

  should 'add an error when the entire constant path does not exist' do
    code   = 'A::B::C'
    report = build_report(code, RubyLint::Analyze::UndefinedVariables)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined constant A'
  end

  should 'not depend on the order of variable definitions' do
    code = <<-CODE
class Person
  def first
    @number = 10
  end

  def second
    return @number
  end
end
    CODE

    report = build_report(code, RubyLint::Analyze::UndefinedVariables)

    report.entries.empty?.should == true
  end

  should 'not add errors when autoloading constants' do
    code   = 'Encoding::BIG5'
    report = build_report(code, RubyLint::Analyze::UndefinedVariables)

    report.entries.empty?.should == true
  end

  should 'not error when inheriting data in a block' do
    code = <<-CODE
NUMBER = 10

example_method do
  NUMBER
end
CODE

    report = build_report(code, RubyLint::Analyze::UndefinedVariables)

    report.entries.empty?.should == true
  end
end
