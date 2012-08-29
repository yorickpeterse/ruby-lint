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

    token.parameters.class.should == Rlint::Token::ParametersToken

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == Rlint::Token::StatementToken
    token.value[0].name.should  == :return

    token.value[0].value.class.should  == Array
    token.value[0].value.length.should == 1

    value = token.value[0].value[0]

    value.class.should == Rlint::Token::Token
    value.type.should  == :integer
    value.value.should == '10'
  end

  it 'Parse a method definition with parameters' do
    code = <<-CODE
def number(a, b = 10, *args, more, &block)
  return num
end
    CODE

    token = Rlint::Parser.new(code).parse[0]

    token.class.should  == Rlint::Token::MethodDefinitionToken
    token.name.should   == 'number'
    token.line.should   == 1
    token.column.should == 4

    params = token.parameters

    params.class.should       == Rlint::Token::ParametersToken
    params.value.class.should == Array

    # Required parameters
    params.value.length.should    == 1
    params.value[0].class.should  == Rlint::Token::VariableToken
    params.value[0].name.should   == 'a'
    params.value[0].action.should == :assign

    # Optional parameters
    params.optional.class.should  == Array
    params.optional.length.should == 1

    optional = params.optional[0]

    optional.class.should  == Rlint::Token::VariableToken
    optional.name.should   == 'b'
    optional.action.should == :assign

    optional.value.class.should == Rlint::Token::Token
    optional.value.type.should  == :integer
    optional.value.value.should == '10'

    # Rest parameters
    params.rest.name.should  == 'args'
    params.rest.class.should == Rlint::Token::VariableToken

    # More parameters
    params.more.class.should   == Array
    params.more.length.should  == 1
    params.more[0].name.should == 'more'

    # Block parameters
    params.block.class.should == Rlint::Token::VariableToken
    params.block.name.should  == 'block'
  end
end
