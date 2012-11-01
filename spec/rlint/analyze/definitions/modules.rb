require File.expand_path('../../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions: modules' do
  it 'Define a module in the global scope' do
    code = <<-CODE
module Example
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

    const.token.class.should == Rlint::Token::Token
    const.token.type.should  == :module
    const.token.name.should  == ['Example']

    scope.lookup(:instance_method, 'example_method').nil?.should == true

    method = const.scope.lookup(:instance_method, 'example_method')

    method.class.should == Rlint::Definition

    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a class method in a module' do
    code = <<-CODE
module Example
  def self.example_method

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

    const.token.class.should == Rlint::Token::Token
    const.token.type.should  == :module
    const.token.name.should  == ['Example']

    scope.lookup(:method, 'example_method').nil?.should == true

    method = const.scope.lookup(:method, 'example_method')

    method.class.should == Rlint::Definition

    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end
end
