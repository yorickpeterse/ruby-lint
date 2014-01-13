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
end