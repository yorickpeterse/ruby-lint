require File.expand_path('../../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions: classes' do
  it 'Invalid method calls on custom classes' do
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

  it 'Calling class methods as instance methods' do
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

  it 'Calling methods defined using a receiver' do
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
