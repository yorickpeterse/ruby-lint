require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analyze::UndefinedMethods do
  should 'add an error for calling an undefined method' do
    report = build_report('example_method', RubyLint::Analyze::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined method example_method'
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
    entry.message.should == 'undefined method example_method on String'
  end

  should 'add an error for calling an undefined method on a receiver instance' do
    code   = '"hello".example_method'
    report = build_report(code, RubyLint::Analyze::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 8
    entry.message.should == 'undefined method example_method ' \
      'on an instance of String'
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
    entry.message.should == 'undefined method name'
  end

  describe 'core Ruby types' do
    should 'not add errors for calling defined methods on a Fixnum' do
      report = build_report('10.to_s', RubyLint::Analyze::UndefinedMethods)

      report.entries.empty?.should == true
    end

    should 'not add errors for calling defined methods on a Float' do
      report = build_report('(10.0).to_s', RubyLint::Analyze::UndefinedMethods)

      report.entries.empty?.should == true
    end

    should 'not add errors for calling defined methods on a String' do
      report = build_report('"10".to_s', RubyLint::Analyze::UndefinedMethods)

      report.entries.empty?.should == true
    end

    should 'not add errors for calling defined methods on a Hash' do
      report = build_report('{}.to_s', RubyLint::Analyze::UndefinedMethods)

      report.entries.empty?.should == true
    end

    should 'not add errors for calling defined methods on an Array' do
      report = build_report('[].to_s', RubyLint::Analyze::UndefinedMethods)

      report.entries.empty?.should == true
    end
  end

  should 'not add errors for variables created using blocks' do
    code = <<-CODE
[10, 20].each do |number|
  number.to_s
end
    CODE

    report = build_report(code, RubyLint::Analyze::UndefinedMethods)

    report.entries.empty?.should == true
  end

  should 'take variable assignments into account' do
    code = <<-CODE
name = 'Ruby'

name.downcase
name.downcasex
    CODE

    report = build_report(code, RubyLint::Analyze::UndefinedMethods)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.line.should    == 4
    entry.column.should  == 5
    entry.message.should == 'undefined method downcasex on an instance of String'
  end
end
