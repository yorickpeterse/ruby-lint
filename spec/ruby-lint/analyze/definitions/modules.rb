require File.expand_path('../../../../helper', __FILE__)

describe 'RubyLint::Analyze::Definitions: modules' do
  it 'Define a module in the global scope' do
    code = <<-CODE
module Example
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

    const.token.class.should == RubyLint::Token::Token
    const.token.type.should  == :module
    const.token.name.should  == ['Example']

    scope.lookup(:instance_method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a class method in a module' do
    code = <<-CODE
module Example
  def self.example_method

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

    const.token.class.should == RubyLint::Token::Token
    const.token.type.should  == :module
    const.token.name.should  == ['Example']

    scope.lookup(:method, 'example_method').nil?.should == true

    method = const.lookup(:method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
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

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'B')

    const.class.should == RubyLint::Definition

    const.lookup(:method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
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

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'B')

    const.class.should == RubyLint::Definition

    const.lookup(:instance_method, 'example_method').nil?.should == true

    method = const.lookup(:method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
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

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]
    const = scope.lookup(:constant, 'C')

    const.class.should == RubyLint::Definition

    const.lookup(:method, 'example_method').nil?.should == true

    method = const.lookup(:instance_method, 'example_method')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'example_method'
  end

  it 'Define a module in an existing module' do
    code = <<-CODE
module RubyLint
  module Derp

  end
end
    CODE

    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope = iterator.storage[:scope]

    scope.lookup(:constant, 'Derp').nil?.should == true

    scope.lookup(:constant, 'RubyLint').class.should == RubyLint::Definition

    scope.lookup(:constant, 'RubyLint') \
      .lookup(:constant, 'Derp') \
      .class \
      .should == RubyLint::Definition

    rlint = scope.lookup(:constant, 'RubyLint')
    derp  = rlint.lookup(:constant, 'Derp')

    derp.parent.length.should == 1
  end
end
