require File.expand_path('../../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions: classes' do
  it 'Define a class in the global scope' do
    code = <<-CODE
class Example
  def example_method

  end
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'Example')

    const.class.should == Rlint::Definition

    const.token.class.should      == Rlint::Token::ClassToken
    const.token.name.should       == ['Example']
    const.token.value.nil?.should == true

    # Check the method that was defined inside the class.
    scope.lookup(:instance_method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == Rlint::Definition

    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a class method inside a class' do
    code = <<-CODE
class Example
  def self.example_method

  end
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.lookup(:method, 'example_method').nil?.should == true

    const = scope.lookup(:constant, 'Example')

    const.class.should == Rlint::Definition

    const.lookup(:instance_method, 'example_method').nil?.should == true
    const.lookup(:method, 'example_method').class.should == Rlint::Definition
  end

  it 'Inherit methods from a parent class' do
    code = <<-CODE
class A
  def parent_method

  end
end

class B < A

end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    a = scope.lookup(:constant, 'A')
    b = scope.lookup(:constant, 'B')

    # check class A
    a.class.should == Rlint::Definition

    a.token.class.should  == Rlint::Token::ClassToken
    a.token.name.should   == ['A']
    a.token.parent.should == ['Object']

    a.lookup(:method, :methods).class.should          == Rlint::Definition
    a.lookup(:instance_method, :methods).class.should == Rlint::Definition

    # check class B
    b.class.should == Rlint::Definition

    b.token.class.should  == Rlint::Token::ClassToken
    b.token.name.should   == ['B']
    b.token.parent.should == ['A']

    b.lookup(:instance_method, 'parent_method') \
      .class \
      .should == Rlint::Definition

    b.lookup(:method, :methods).class.should          == Rlint::Definition
    b.lookup(:instance_method, :methods).class.should == Rlint::Definition
  end
end
