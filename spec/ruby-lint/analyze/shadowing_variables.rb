require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Analyze::ShadowingVariables' do
  it 'Warn for shadowing outer variables' do
    code = <<-CODE
number = 10

[10, 20].each do |number|
  puts number
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.bind(Rlint::Analyze::ShadowingVariables)
    iterator.run(tokens)

    report.messages[:warning].class.should  == Array
    report.messages[:warning].length.should == 1

    warning = report.messages[:warning][0]

    warning[:message].should == 'shadowing outer local variable number'
    warning[:line].should    == 3
    warning[:column].should  == 18
  end
end
