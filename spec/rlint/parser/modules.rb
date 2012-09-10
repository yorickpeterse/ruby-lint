require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a module' do
    code = <<-CODE
module Foo
  def foo
    return 'foo'
  end
end
    CODE

    token = Rlint::Parser.new(code).parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :module
    token.name.should   == ['Foo']
    token.line.should   == 1
    token.column.should == 7

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == Rlint::Token::MethodDefinitionToken
    token.value[0].name.should  == 'foo'
  end

  it 'Parse a module with multiple name segments' do
    token = Rlint::Parser.new('module A::B; end').parse[0]

    token.class.should == Rlint::Token::Token
    token.type.should  == :module
    token.name.should  == ['A', 'B']

    token.line.should   == 1
    token.column.should == 7
  end

  it 'Parse a top level module' do
    token = Rlint::Parser.new('module ::A::B; end').parse[0]

    token.class.should == Rlint::Token::Token
    token.type.should  == :module
    token.name.should  == ['A', 'B']

    token.line.should   == 1
    token.column.should == 9
  end
end
