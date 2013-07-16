require 'spec_helper'

describe RubyLint::Analysis::ConfusingVariables do
  example 'warn when assigning a variable with the same name as a method' do
    code = <<-CODE
def number
end

number = 10
    CODE

    report = build_report(code, RubyLint::Analysis::ConfusingVariables)
    entry  = report.entries[0]

    entry.line.should    == 4
    entry.column.should  == 0
    entry.message.should =~ /variable assignment using the same name/
  end

  example 'not warn when the variable is assigned inside the method itself' do
    code = <<-CODE
def number
  number = 10
end
    CODE

    report = build_report(code, RubyLint::Analysis::ConfusingVariables)

    report.entries.empty?.should == true
  end

  example 'not warn when the method is defined in a different scope' do
    code = <<-CODE
module Foo
  def number
  end
end

number = 10
    CODE

    report = build_report(code, RubyLint::Analysis::ConfusingVariables)

    report.entries.empty?.should == true
  end
end