require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a method definition' do
    token = Rlint::Parser.new('def number; return 10; end').parse[0]

    token.class.should      == Rlint::Token::MethodDefinitionToken
    token.line.should       == 1
    token.column.should     == 4
    token.name.should       == 'number'
    token.visibility.should == :public
    token.type.should       == :instance_method

    token.parameters.class.should  == Array
    token.parameters.length.should == 0

    token.value.class.should  == Array
    token.value.length.should == 1
  end
end
