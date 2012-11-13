require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Analyze::UndefinedVariables' do
  it 'Use of undefined variables' do
    code = <<-CODE
number = 10

puts numberx
puts @number
puts @@number
puts $number
puts NUMBER

# The code below should not add any errors.
numberx  = 10
@number  = 10
@@number = 10
$number  = 10
NUMBER   = 10

puts numberx
puts @number
puts @@number
puts $number
puts NUMBER
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 5

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined local variable or method numberx'
    errors[0][:line].should    == 3
    errors[0][:column].should  == 5

    errors[1][:message].should == 'undefined instance variable @number'
    errors[1][:line].should    == 4
    errors[1][:column].should  == 5

    errors[2][:message].should == 'undefined class variable @@number'
    errors[2][:line].should    == 5
    errors[2][:column].should  == 5

    errors[3][:message].should == 'undefined global variable $number'
    errors[3][:line].should    == 6
    errors[3][:column].should  == 5

    errors[4][:message].should == 'undefined constant NUMBER'
    errors[4][:line].should    == 7
    errors[4][:column].should  == 5
  end

  it 'Default global variables should not trigger errors' do
    code     = Kernel.global_variables.join("\n")
    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].nil?.should == true
  end

  it 'Use of undefined variables using a method scope' do
    code = <<-CODE
a  = 10
@a = 10

def number
  b = 10

  puts @a # @a should be available as it's an instance method
  puts a  # a is defined outside of this scope
  puts c  # c simply doesn't exist
end

puts a
puts b # b was defined inside the method and isn't available outside it
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 3

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined local variable or method a'
    errors[0][:line].should    == 8
    errors[0][:column].should  == 7

    errors[1][:message].should == 'undefined local variable or method c'
    errors[1][:line].should    == 9
    errors[1][:column].should  == 7

    errors[2][:message].should == 'undefined local variable or method b'
    errors[2][:line].should    == 13
    errors[2][:column].should  == 5
  end

  it 'Instance variables should be available outside a method' do
    code = <<-CODE
def number
  @number = 10
end

puts @number
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].nil?.should == true
  end

  it 'Instance variables should be available across a class\' methods' do
    code = <<-CODE
class Person
  def initialize
    @name = 'Ruby'
  end

  def some_method
    @name.upcase
    @namex.upcase
  end
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined instance variable @namex'
    error[:line].should    == 8
    error[:column].should  == 4
  end

  it 'Add errors for non existing constant paths' do
    code = <<-CODE
A::B = 10

module A

end

puts A::B
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 2

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined constant A'
    errors[0][:line].should    == 1
    errors[0][:column].should  == 0

    errors[1][:message].should == 'undefined constant A::B'
    errors[1][:line].should    == 7
    errors[1][:column].should  == 5
  end

  it 'Look up a constant using an implicit constant path' do
    code = <<-CODE
module RubyLint
  module Derp
    Foobar.name
    ConstantImporter.name
  end
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    report   = RubyLint::Report.new
    iterator = RubyLint::Iterator.new(report)

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined constant Foobar'
    error[:line].should    == 3
    error[:column].should  == 4
  end
end
