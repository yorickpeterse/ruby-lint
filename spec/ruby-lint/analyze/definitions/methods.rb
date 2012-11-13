require File.expand_path('../../../../helper', __FILE__)

describe 'RubyLint::Analyze::Definitions: methods' do
  it 'Build a list of globally defined methods' do
    code = <<-CODE
def example_method
  return 10
end

def another_example_method
  return 20
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == RubyLint::Definition

    method_1 = scope.lookup(:instance_method, 'example_method')
    method_2 = scope.lookup(:instance_method, 'another_example_method')

    method_1.class.should       == RubyLint::Definition
    method_1.token.class.should == RubyLint::Token::MethodDefinitionToken
    method_1.token.name.should  == 'example_method'

    method_2.class.should       == RubyLint::Definition
    method_2.token.class.should == RubyLint::Token::MethodDefinitionToken
    method_2.token.name.should  == 'another_example_method'
  end

  it 'Build a list of globally defined class methods' do
    code = <<-CODE
def self.example_method
  return 10
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == RubyLint::Definition

    method = scope.lookup(:method, 'example_method')

    method.class.should       == RubyLint::Definition
    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a class method on the String class' do
    code = <<-CODE
def String.example_method
  return 10
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == RubyLint::Definition

    scope.lookup(:instance_method, 'example_method').nil?.should == true
    scope.lookup(:method, 'example_method').nil?.should          == true

    string = scope.lookup(:constant, 'String')

    string.class.should == RubyLint::Definition

    method = string.lookup(:method, 'example_method')

    method.class.should       == RubyLint::Definition
    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end
end
