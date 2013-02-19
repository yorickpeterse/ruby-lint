require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analyze::UndefinedMethods do
  should 'add an error for calling an undefined method' do
    report = build_report('example_method', RubyLint::Analyze::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined instance method example_method'
  end

  should 'add an error for calling an undefined method with a receiver' do
    code = <<-CODE
class << self
  def example_method
  end
end

String.example_method
    CODE

    report = build_report(code, RubyLint::Analyze::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 6
    entry.column.should  == 7
    entry.message.should == 'undefined method example_method'
  end

  should 'add an error when calling a method defined in a different scope' do
    code = <<-CODE
class Person
  def name
    return 'name'
  end

  def greet
    name
  end
end

name
    CODE

    report = build_report(code, RubyLint::Analyze::UndefinedMethods)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 11
    entry.column.should  == 0
    entry.message.should == 'undefined instance method name'
  end
end
