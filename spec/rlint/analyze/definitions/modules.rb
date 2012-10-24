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
    iterator.run(tokens)

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
    iterator.run(tokens)

    report.messages[:error].nil?.should == true
  end

  it 'Redefining modules should not reset scoping related data' do
    code = <<-CODE
module Person
  def self.example

  end
end

Person.example

module Person
  def self.another_example

  end
end

Person.example
Person.another_example
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    report.messages[:error].nil?.should == true
  end

  it 'Including a module into the global scope' do
    code = <<-CODE
module A
  NUMBER = 10

  def example_instance_method

  end
end

NUMBER
example_instance_method

include A

NUMBER
example_instance_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 2

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined constant NUMBER'
    errors[0][:line].should    == 9
    errors[0][:column].should  == 0

    errors[1][:message].should == 'undefined local variable or ' \
      'method example_instance_method'

    errors[1][:line].should   == 10
    errors[1][:column].should == 0
  end

  it 'Including a module into a class' do
    code = <<-CODE
module A
  NUMBER = 10

  def example_method

  end
end

class Person

end

Person::NUMBER

person = Person.new
person.example_method
NUMBER

class Person
  include A
end

Person::NUMBER

person = Person.new
person.example_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 3

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined constant Person::NUMBER'
    errors[0][:line].should    == 13
    errors[0][:column].should  == 0

    errors[1][:message].should == 'undefined instance method example_method'
    errors[1][:line].should    == 16
    errors[1][:column].should  == 7

    errors[2][:message].should == 'undefined constant NUMBER'
    errors[2][:line].should    == 17
    errors[2][:column].should  == 0
  end

  it 'Extend a class using a module' do
    code = <<-CODE
module A
  NUMBER = 10

  def example_method

  end
end

class Person

end

Person::NUMBER
Person.example_method
NUMBER

class Person
  extend A
end

Person::NUMBER
Person.example_method
    CODE

    tokens   = Rlint::Parser.new(code).parse
    report   = Rlint::Report.new
    iterator = Rlint::Iterator.new(report)

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    report.messages[:error].class.should  == Array
    report.messages[:error].length.should == 3

    errors = report.messages[:error]

    errors[0][:message].should == 'undefined constant Person::NUMBER'
    errors[0][:line].should    == 13
    errors[0][:column].should  == 0

    errors[1][:message].should == 'undefined class method example_method'
    errors[1][:line].should    == 14
    errors[1][:column].should  == 7

    errors[2][:message].should == 'undefined constant NUMBER'
    errors[2][:line].should    == 15
    errors[2][:column].should  == 0
  end
end
