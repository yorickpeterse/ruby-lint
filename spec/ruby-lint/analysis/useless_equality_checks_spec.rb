require 'spec_helper'

describe RubyLint::Analysis::UselessEqualityChecks do
  example 'compare a String literal with a Fixnum literal' do
    code   = "'foo' == 10"
    report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)
    entry  = report.entries[0]

    entry.line.should    == 1
    entry.column.should  == 1
    entry.message.should == 'Comparing String with Fixnum evaluates to false'
  end

  example 'compare a variable with a Fixnum literal' do
    code = <<-EOF
string = 'foo'

string == 10
    EOF

    report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)
    entry  = report.entries[0]

    entry.message.should == 'Comparing String with Fixnum evaluates to false'
  end

  example 'compare two variables' do
    code = <<-EOF
string = 'foo'
number = 10

string == number
    EOF

    report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)
    entry  = report.entries[0]

    entry.message.should == 'Comparing String with Fixnum evaluates to false'
  end

  example 'compare a String literal with a method call' do
    code = <<-EOF
# @return [Fixnum]
def number
  return 10
end

'foo' == number
    EOF

    report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)
    entry  = report.entries[0]

    entry.message.should == 'Comparing String with Fixnum evaluates to false'
  end

  example 'ignore values that are unknown' do
    code = <<-EOF
def foo
end

10 == foo
    EOF

    report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)

    report.entries.empty?.should == true
  end

  example 'calling methods on objects that return unknown values' do
    code = <<-CODE
def example(number)
  return '10' == number.to_s
end
    CODE

    report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)

    report.entries.empty?.should == true
  end

  context 'ignoring variables with unknown values' do
    example 'ignore a local variable without a value' do
      code = <<-CODE
[10, 20].each do |number|
  number == false
end
      CODE

      report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)

      report.entries.empty?.should == true
    end

    example 'ignore an instance variable without a value' do
      code = <<-CODE
[10, 20].each do |@number|
  @number == false
end
      CODE

      report = build_report(code, RubyLint::Analysis::UselessEqualityChecks)

      report.entries.empty?.should == true
    end
  end
end
