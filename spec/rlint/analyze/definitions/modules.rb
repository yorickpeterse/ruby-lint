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

  it 'Include a module into a class' do
    code = <<-CODE
module A
  def example_method

  end
end

class B
  include A
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'B')

    const.class.should == Rlint::Definition

    const.lookup(:method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == Rlint::Definition

    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'

    method.scope.class.should == Rlint::Scope
  end

  it 'Extend a class using a module' do
    code = <<-CODE
module A
  def example_method

  end
end

class B
  extend A
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'B')

    const.class.should == Rlint::Definition

    const.lookup(:instance_method, 'example_method').nil?.should == true

    method = const.lookup(:method, 'example_method')

    method.class.should == Rlint::Definition

    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'

    method.scope.class.should == Rlint::Scope
  end

  it 'Include a module using a constant path' do
    code = <<-CODE
module A
  module B
    def example_method

    end
  end
end

class C
  include A::B
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'C')

    const.class.should == Rlint::Definition

    const.lookup(:method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == Rlint::Definition

    method.token.class.should == Rlint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'

    method.scope.class.should == Rlint::Scope
  end

  it 'Define a module in an existing module' do
    code = <<-CODE
module Rlint
  module Derp

  end
end
    CODE

    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.lookup(:constant, 'Derp').nil?.should == true

    scope.lookup(:constant, 'Rlint').class.should == Rlint::Scope

    scope.lookup(:constant, 'Rlint') \
      .lookup(:constant, 'Derp') \
      .class \
      .should == Rlint::Definition

    rlint = scope.lookup(:constant, 'Rlint')
    derp  = rlint.lookup(:constant, 'Derp')

    derp.scope.parent.length.should == 1
  end
end
