require 'spec_helper'

describe RubyLint::Analysis::UndefinedMethods do
  example 'add an error for calling an undefined method' do
    report = build_report('example_method', RubyLint::Analysis::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined method example_method'
  end

  example 'add an error for calling an undefined method with a receiver' do
    code = <<-CODE
class << self
  def example_method
  end
end

String.example_method
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 6
    entry.column.should  == 0
    entry.message.should == 'undefined method example_method on String'
  end

  example 'add an error for calling an undefined method on a receiver instance' do
    code   = '"hello".example_method'
    report = build_report(code, RubyLint::Analysis::UndefinedMethods)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 1
    entry.column.should  == 0
    entry.message.should == 'undefined method example_method ' \
      'on an instance of String'
  end

  example 'add an error when calling a method defined in a different scope' do
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

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 11
    entry.column.should  == 0
    entry.message.should == 'undefined method name'
  end

  describe 'core Ruby types' do
    example 'do not add errors for calling defined methods on a Fixnum' do
      report = build_report('10.to_s', RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end

    example 'do not add errors for calling defined methods on a Float' do
      report = build_report('(10.0).to_s', RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end

    example 'do not add errors for calling defined methods on a String' do
      report = build_report('"10".to_s', RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end

    example 'do not add errors for calling defined methods on a Hash' do
      report = build_report('{}.to_s', RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end

    example 'do not add errors for calling defined methods on an Array' do
      report = build_report('[].to_s', RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end
  end

  example 'do not add errors for variables created using blocks' do
    code = <<-CODE
[10, 20].each do |number|
  number.to_s
end
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.empty?.should == true
  end

  example 'take variable assignments into account' do
    code = <<-CODE
name = 'Ruby'

name.downcase
name.downcasex
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.line.should    == 4
    entry.column.should  == 0
    entry.message.should == 'undefined method downcasex on an instance of String'
  end

  example 'take variable assignments and custom classes into account' do
    code = <<-CODE
class User
  def example
  end
end

user = User.new

user.example
user.invalid
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.line.should    == 9
    entry.column.should  == 0
    entry.message.should == 'undefined method invalid on an instance of User'
  end

  example 'do not add errors when calling a method on an undefined constant' do
    code = 'A.example_method'

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.empty?.should == true
  end

  example 'do not add errors for methods called on variables without values' do
    code = <<-CODE
def example(number)
  number.to_s
end
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.empty?.should == true
  end

  example 'report the right receiver name in multiple variable assignments' do
    code = <<-CODE
number = 10

first = second = number.foobar
    CODE

    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.length.should == 1

    entry = report.entries[0]

    entry.message.should == 'undefined method foobar on an instance of Fixnum'
  end

  example 'ignore methods calls on other non existing methods' do
    code   = 'foo.bar'
    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.length.should == 1

    report.entries[0].message.should == 'undefined method foo'
  end

  example 'ignore methods calls with arguments on other non existing methods' do
    code   = 'foo.bar(:baz)'
    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.length.should == 1

    report.entries[0].message.should == 'undefined method foo'
  end

  example 'do not add errors for methods defined in Kernel' do
    code   = 'puts "hello"'
    report = build_report(code, RubyLint::Analysis::UndefinedMethods)

    report.entries.empty?.should == true
  end

  context 'core Ruby methods' do
    example 'do not add errors for #include' do
      code = <<-CODE
module Foo
end

class Bar
  include Foo
end
      CODE

      report = build_report(code, RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end

    example 'do not add errors for #attr_reader' do
      code = <<-CODE
class Bar
  attr_reader :foobar
end
      CODE

      report = build_report(code, RubyLint::Analysis::UndefinedMethods)

      report.entries.empty?.should == true
    end
  end
end
