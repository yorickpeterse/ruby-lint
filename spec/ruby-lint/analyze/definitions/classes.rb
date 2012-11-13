require File.expand_path('../../../../helper', __FILE__)

describe 'RubyLint::Analyze::Definitions: classes' do
  it 'Define a class in the global scope' do
    code = <<-CODE
class Example
  def example_method

  end
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'Example')

    const.class.should == RubyLint::Definition

    const.token.class.should      == RubyLint::Token::ClassToken
    const.token.name.should       == ['Example']
    const.token.value.nil?.should == true

    # Check the method that was defined inside the class.
    scope.lookup(:instance_method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a class method inside a class' do
    code = <<-CODE
class Example
  def self.example_method

  end
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.lookup(:method, 'example_method').nil?.should == true

    const = scope.lookup(:constant, 'Example')

    const.class.should == RubyLint::Definition

    const.lookup(:instance_method, 'example_method').nil?.should == true
    const.lookup(:method, 'example_method').class.should == RubyLint::Definition
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

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    a = scope.lookup(:constant, 'A')
    b = scope.lookup(:constant, 'B')

    # check class A
    a.class.should == RubyLint::Definition

    a.token.class.should  == RubyLint::Token::ClassToken
    a.token.name.should   == ['A']
    a.token.parent.should == ['Object']

    a.lookup(:method, :methods).class.should          == RubyLint::Definition
    a.lookup(:instance_method, :methods).class.should == RubyLint::Definition

    # check class B
    b.class.should == RubyLint::Definition

    b.token.class.should  == RubyLint::Token::ClassToken
    b.token.name.should   == ['B']
    b.token.parent.should == ['A']

    b.lookup(:instance_method, 'parent_method') \
      .class \
      .should == RubyLint::Definition

    b.lookup(:method, :methods).class.should          == RubyLint::Definition
    b.lookup(:instance_method, :methods).class.should == RubyLint::Definition
  end
end
