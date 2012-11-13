require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Analyze::ShadowingVariables' do
  it 'Warn for shadowing outer variables' do
    code = <<-CODE
number = 10

[10, 20].each do |number|
  puts number
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::ShadowingVariables)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 1

    warning = report.messages[:warning][0]

    warning[:message].should == 'shadowing outer local variable number'
    warning[:line].should    == 3
    warning[:column].should  == 18
  end
end
