require 'spec_helper'

describe RubyLint::Analysis::UndefinedVariables do
  example 'add an error for using an undefined instance variable' do
    report = build_report('@number', RubyLint::Analysis::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 1
    entry.message.should == 'undefined instance variable @number'
  end

  example 'add an error for using an undefined class variable' do
    report = build_report('@@number', RubyLint::Analysis::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 1
    entry.message.should == 'undefined class variable @@number'
  end

  example 'add an error for using an undefined global variable' do
    report = build_report('$number', RubyLint::Analysis::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 1
    entry.message.should == 'undefined global variable $number'
  end

  example 'add an error for using an undefined constant' do
    report = build_report('NUMBER', RubyLint::Analysis::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 1
    entry.message.should == 'undefined constant NUMBER'
  end

  example 'add an error for using an undefined constant path' do
    code = <<-CODE
# This is to ensure that the on_const() callback isn't used to check for "B"
# in the global scope.
B = 10

module A
end

A::B
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 8
    entry.column.should  == 1
    entry.message.should == 'undefined constant A::B'
  end

  example 'do not depend on the order of variable definitions' do
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

    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end

  example 'do not add errors when autoloading constants' do
    code   = 'Encoding::BIG5'
    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end

  example 'do not error when inheriting data in a block' do
    code = <<-CODE
NUMBER = 10

example_method do
  NUMBER
end
CODE

    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end

  example 'do not add errors for variable references in string interpolation' do
    code   = 'number = 10; "#{number}"'
    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end

  example 'do not add errors for class names' do
    code = <<-CODE
class Foo
end

module Namespace
  class Bar
  end
end
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end

  example 'do not add errors for built-in class names' do
    code   = 'class String; end'
    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end

  example 'do not add errors when aliasing global variables' do
    code   = 'alias $ARGV $*'
    report = build_report(code, RubyLint::Analysis::UndefinedVariables)

    report.entries.empty?.should == true
  end
end
