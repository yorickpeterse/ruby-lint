require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Analyze::ShadowingVariables do
  should 'warn for shadowing outer variables' do
    code = <<-CODE
number = 10

[10, 20].each do |number|
  puts number
end
    CODE

    report = build_report(code, RubyLint::Analyze::ShadowingVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 3
    entry.column.should  == 18
    entry.message.should == 'shadowing outer local variable number'
  end

  should 'not warn for shadowed variables in a new scope' do
    code = <<-CODE
number = 10

def example
  [10, 20].each do |number|
    puts number
  end
end
    CODE

    report = build_report(code, RubyLint::Analyze::ShadowingVariables)

    report.entries.empty?.should == true
  end

  should 'warn when shadowing variables after a new scope' do
    code = <<-CODE
number = 10

def example; end

[10, 20].each do |number|
  puts number
end
    CODE

    report = build_report(code, RubyLint::Analyze::ShadowingVariables)
    entry  = report.entries[0]

    entry.is_a?(RubyLint::Report::Entry).should == true

    entry.line.should    == 5
    entry.column.should  == 18
    entry.message.should == 'shadowing outer local variable number'
  end
end
