require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions' do
  it 'Add errors for undefined variables' do
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

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

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

  it 'Add errors for undefined variables using a method scope' do
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

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

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

  it 'Add errors for undefined methods' do
    code = <<-CODE
def defined_method; end

undefined_method
defined_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined local variable or method ' \
      'undefined_method'

    error[:line].should   == 3
    error[:column].should == 0
  end

  it 'Add errors for invalid method calls on constants' do
    code = <<-CODE
String.new
String.newx
Foobar.new
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

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

  it 'Add errors for invalid method calls' do
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
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 3

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined instance method upcasexx'
    errors[0][:line].should    == 4
    errors[0][:column].should  == 5

    errors[1][:message].should == 'undefined local variable or method foo'
    errors[1][:line].should    == 5
    errors[1][:column].should  == 0

    errors[2][:message].should == 'undefined instance method downcasex'
    errors[2][:line].should    == 8
    errors[2][:column].should  == 3
  end

  it 'Add errors for invalid method calls on custom classes' do
    code = <<-CODE
class Person
  def name

  end
end

person = Person.new

person.invalid_instance_method
person.name
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 1

    error = report.messages[:error][0]

    error[:message].should == 'undefined instance method ' \
      'invalid_instance_method'

    error[:line].should    == 9
    error[:column].should  == 7
  end

  it 'Add errors for calling a class method as an instance method' do
    code = <<-CODE
class Person
  def self.class_method_1

  end

  class << self
    def class_method_2

    end
  end
end

Person.class_method_1
Person.class_method_2

person = Person.new

person.class_method_1
person.class_method_2
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 2

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined instance method class_method_1'
    errors[0][:line].should    == 18
    errors[0][:column].should  == 7

    errors[1][:message].should == 'undefined instance method class_method_2'
    errors[1][:line].should    == 19
    errors[1][:column].should  == 7
  end

  it 'Add errors for calling methods defined using a receiver' do
    code = <<-CODE
def String.class_method

end

def Foo.class_method

end

String.class_method
''.class_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.iterate(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 2

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined method receiver Foo'
    errors[0][:line].should    == 5
    errors[0][:column].should  == 4

    errors[1][:message].should == 'undefined instance method class_method'
    errors[1][:line].should    == 10
    errors[1][:column].should  == 3
  end
end
