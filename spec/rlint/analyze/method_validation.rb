require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Analyze::MethodValidation' do
  it 'Calling undefined methods' do
    code = <<-CODE
def defined_method; end

undefined_method
defined_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.bind(Rlint::Analyze::MethodValidation)
    iterator.bind(Rlint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined local variable or method ' \
      'undefined_method'

    error[:line].should   == 3
    error[:column].should == 0
  end

  it 'Calling non existing methods on constants' do
    code = <<-CODE
String.new
String.newx
Foobar.new
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.bind(Rlint::Analyze::MethodValidation)
    iterator.bind(Rlint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 2

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined class method newx'
    errors[0][:line].should    == 2
    errors[0][:column].should  == 7

    errors[1][:message].should == 'undefined constant Foobar'
    errors[1][:line].should    == 3
    errors[1][:column].should  == 0
  end

  it 'Calling non existing methods on variables and values directly' do
    code = <<-CODE
name = 'Ruby'

name.upcase
name.upcasexx
foo.upcase

''.downcase
''.downcasex
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.bind(Rlint::Analyze::MethodValidation)
    iterator.bind(Rlint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 3

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined instance method upcasexx'
    errors[0][:line].should    == 4
    errors[0][:column].should  == 5

    errors[1][:message].should == 'undefined instance method downcasex'
    errors[1][:line].should    == 8
    errors[1][:column].should  == 3

    errors[2][:message].should == 'undefined local variable or method foo'
    errors[2][:line].should    == 5
    errors[2][:column].should  == 0
  end

  it 'Method parameters should be added as local variables' do
    code = <<-CODE
def uppercase(name = 'Ruby', *args, &block)
  name.upcase
  namex.upcase
  args.flatten
  block.call
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.bind(Rlint::Analyze::MethodValidation)
    iterator.bind(Rlint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined local variable or method namex'
    error[:line].should    == 3
    error[:column].should  == 2
  end

  it 'Calling methods on a constant path' do
    code = <<-CODE
A::B.invalid_method

module A; end

A::B.invalid_method

module A
  module B
    def self.valid_method

    end
  end
end

A::B.invalid_method
A::B.valid_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.bind(Rlint::Analyze::UndefinedVariables)
    iterator.bind(Rlint::Analyze::MethodValidation)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 3

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined constant A'
    errors[0][:line].should    == 1
    errors[0][:column].should  == 0

    errors[1][:message].should == 'undefined constant A::B'
    errors[1][:line].should    == 5
    errors[1][:column].should  == 0

    errors[2][:message].should == 'undefined class method invalid_method'
    errors[2][:line].should    == 15
    errors[2][:column].should  == 5
  end
end
