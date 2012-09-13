require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a class declaration' do
    token = Rlint::Parser.new('class Foo; end').parse[0]

    token.class.should  == Rlint::Token::ClassToken
    token.name.should   == ['Foo']
    token.type.should   == :class
    token.line.should   == 1
    token.column.should == 6
    token.code.should   == 'class Foo; end'

    token.value.class.should  == Array
    token.value.length.should == 0
  end

  it 'Parse a top level class declaration' do
    token = Rlint::Parser.new('class ::Foo; end').parse[0]

    token.class.should == Rlint::Token::ClassToken
    token.name.should  == ['Foo']
    token.type.should  == :class
  end

  it 'Parse a class declaration with a parent class' do
    token = Rlint::Parser.new('class Foo < Bar; end').parse[0]

    token.class.should  == Rlint::Token::ClassToken
    token.name.should   == ['Foo']
    token.parent.should == ['Bar']
    token.type.should   == :class
    token.line.should   == 1
    token.column.should == 6
    token.code.should   == 'class Foo < Bar; end'

    token.value.class.should  == Array
    token.value.length.should == 0
  end

  it 'Parse a class declaration with multiple name segments' do
    token = Rlint::Parser.new('class Foo::Bar < A::B; end').parse[0]

    token.class.should == Rlint::Token::ClassToken
    token.type.should  == :class
    token.name.should  == ['Foo', 'Bar']

    token.parent.should == ['A', 'B']
    token.line.should   == 1
    token.column.should == 6
    token.code.should   == 'class Foo::Bar < A::B; end'
  end

  it 'Parse a top level class declaration with multiple name segments' do
    token = Rlint::Parser.new('class ::Foo::Bar; end').parse[0]

    token.class.should  == Rlint::Token::ClassToken
    token.type.should   == :class
    token.name.should   == ['Foo', 'Bar']
    token.line.should   == 1
    token.column.should == 8
    token.code.should   == 'class ::Foo::Bar; end'
  end

  it 'Parse the assignments of method visibilities' do
    code = <<-CODE
class First
  private

  def private_method
    return 'private method'
  end
end

def public_method
  return 'public method'
end

class Second
  protected

  def protected_method
    return 'protected method'
  end
end
    CODE

    first, pub_method, second = Rlint::Parser.new(code).parse

    first.class.should  == Rlint::Token::ClassToken
    first.name.should   == ['First']
    first.line.should   == 1
    first.column.should == 6
    first.code.should   == 'class First'

    first.value[0].class.should      == Rlint::Token::MethodDefinitionToken
    first.value[0].name.should       == 'private_method'
    first.value[0].visibility.should == :private
    first.value[0].line.should       == 4
    first.value[0].column.should     == 6
    first.value[0].code.should       == '  def private_method'

    pub_method.class.should      == Rlint::Token::MethodDefinitionToken
    pub_method.name.should       == 'public_method'
    pub_method.visibility.should == :public

    second.class.should == Rlint::Token::ClassToken
    second.name.should  == ['Second']

    second.value[0].class.should      == Rlint::Token::MethodDefinitionToken
    second.value[0].name.should       == 'protected_method'
    second.value[0].visibility.should == :protected
  end
end
