require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analysis::ConfusingVariables do
  should 'warn when optionally overriding methods in a statement body' do
    code = <<-CODE
def number
  return 10
end

def another_number
  unless number
    number = 20
  end

  return number
end
    CODE

    report = build_report(code, RubyLint::Analysis::ConfusingVariables)
    entry  = report.entries[0]

    entry.line.should    == 7
    entry.column.should  == 4
    entry.message.should =~ /given the statement evaluates to false/
  end

  should 'not warn for optional overwriting when using the same scope' do
    code = <<-CODE
def number
  return 10
end

unless number
  number = 20
end
    CODE

    report = build_report(code, RubyLint::Analysis::ConfusingVariables)

    report.entries.empty?.should == true
  end
end
