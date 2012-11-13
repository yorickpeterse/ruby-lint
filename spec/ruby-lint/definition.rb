require File.expand_path('../../helper', __FILE__)

describe 'RubyLint::Definition' do
  it 'Look up a symbol in a scope' do
    scope = RubyLint::Definition.new

    scope.lookup(:local_variable, 'number').should == nil

    scope.add(:local_variable, 'number', 10)

    scope.lookup(:local_variable, 'number').should == 10
  end

  it 'Look up a symbol in a parent scope' do
    parent = RubyLint::Definition.new
    child  = RubyLint::Definition.new(parent)

    parent.add(:local_variable, 'number', 10)
    parent.add(:global_variable, '$number', 20)

    parent.lookup(:local_variable, 'number').should   == 10
    parent.lookup(:global_variable, '$number').should == 20

    child.lookup(:local_variable, 'number').should   == nil
    child.lookup(:global_variable, '$number').should == 20
  end

  it 'Create a scope with default Ruby constants and methods' do
    scope = RubyLint::Definition.new(nil, :lazy => true, :kernel => true)
    found = scope.lookup(:constant, 'Kernel')

    found.class.should == RubyLint::Definition

    method = found.lookup(:method, 'warn')

    method.class.should == RubyLint::Definition

    method.token.class.should == RubyLint::Token::MethodDefinitionToken
    method.token.name.should  == 'warn'

    method.token.parameters.value.class.should  == Array
    method.token.parameters.value.length.should == 1

    param = method.token.parameters.value[0]

    param.class.should == RubyLint::Token::VariableToken
    param.name.should  == ''
    param.type.should  == :local_variable
  end

  it 'Lazy import the Time class' do
    scope = RubyLint::Definition.new

    scope.lookup(:constant, 'Time').nil?.should == true

    scope = RubyLint::Definition.new(nil, :lazy => true)

    scope.lookup(:constant, 'Time').class.should == RubyLint::Definition
  end

  it 'Lazy import the Encoding class and a child constant' do
    scope = RubyLint::Definition.new(nil, :lazy => true)
    enc   = scope.lookup(:constant, 'Encoding')

    enc.class.should == RubyLint::Definition

    enc.lookup(:constant, 'BINARY').class.should == RubyLint::Definition
  end

  it 'Lazy import RubyLint::Definition' do
    scope = RubyLint::Definition.new(nil, :lazy => true)

    rlint = scope.lookup(:constant, 'RubyLint')

    rlint.class.should == RubyLint::Definition

    rlint_scope = rlint.lookup(:constant, 'Definition')

    rlint_scope.class.should == RubyLint::Definition

    rlint_scope.lookup(:constant, 'LOOKUP_PARENT').class.should == RubyLint::Definition
  end

  it 'Create a scope with multiple parent scopes' do
    scope_1 = RubyLint::Definition.new
    scope_2 = RubyLint::Definition.new

    scope_1.add(:method, 'method_1', true)
    scope_2.add(:method, 'method_2', true)

    scope_3 = RubyLint::Definition.new([scope_1, scope_2])

    scope_3.lookup(:method, 'method_1').should == true
    scope_3.lookup(:method, 'method_2').should == true
  end
end
