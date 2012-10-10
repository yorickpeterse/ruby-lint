require File.expand_path('../../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions: modules' do
  it 'Add module names to the current scope' do
    code = <<-CODE
module Foo
  def self.class_method

  end
end

Foo.class_method
Bar.class_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined constant Bar'
    error[:line].should    == 8
    error[:column].should  == 0
  end

  it 'Modules should inherit constants from the parent scope' do
    code = <<-CODE
NUMBER = 10

module Foobar
  puts NUMBER
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].nil?.should == true
  end
end
