require File.expand_path('../../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions: methods' do
  it 'Build a list of globally defined methods' do
    code = <<-CODE
def example_method
  return 10
end

def another_example_method
  return 20
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == Rlint::Scope

    method_1 = scope.lookup(:instance_method, 'example_method')
    method_2 = scope.lookup(:instance_method, 'another_example_method')

    method_1.class.should       == Rlint::Definition
    method_1.token.class.should == Rlint::Token::MethodDefinitionToken
    method_1.token.name.should  == 'example_method'
    method_1.scope.class.should == Rlint::Scope

    method_2.class.should       == Rlint::Definition
    method_2.token.class.should == Rlint::Token::MethodDefinitionToken
    method_2.token.name.should  == 'another_example_method'
    method_2.scope.class.should == Rlint::Scope
  end

  it 'Build a list of globally defined class methods' do
    code = <<-CODE
def self.example_method
  return 10
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == Rlint::Scope

    method = scope.lookup(:method, 'example_method')

    method.class.should       == Rlint::Definition
    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a class method on the String class' do
    code = <<-CODE
def String.example_method
  return 10
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.class.should == Rlint::Scope

    scope.lookup(:instance_method, 'example_method').nil?.should == true
    scope.lookup(:method, 'example_method').nil?.should          == true

    string = scope.lookup(:constant, 'String')

    string.class.should == Rlint::Scope

    method = string.lookup(:method, 'example_method')

    method.class.should       == Rlint::Definition
    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end
end
