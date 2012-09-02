require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a Proc' do
    token = Rlint::Parser.new('proc { |example| example }').parse[0]

    token.class.should == Rlint::Token::MethodToken
    token.name.should  == 'proc'

    token.block.class.should            == Rlint::Token::BlockToken
    token.block.parameters.class.should == Rlint::Token::ParametersToken
    token.block.type.should             == :brace_block

    params = token.block.parameters

    params.value.class.should  == Array
    params.value.length.should == 1

    params.value[0].class.should == Rlint::Token::VariableToken
    params.value[0].type.should  == :local_variable
    params.value[0].name.should  == 'example'

    token.block.value.class.should  == Array
    token.block.value.length.should == 1
  end

  it 'Parse a proc using do/end instead of curly braces' do
    token = Rlint::Parser.new('proc do |example|; example; end').parse[0]

    token.class.should == Rlint::Token::MethodToken
    token.name.should  == 'proc'

    token.block.class.should            == Rlint::Token::BlockToken
    token.block.parameters.class.should == Rlint::Token::ParametersToken
    token.block.type.should             == :do_block

    params = token.block.parameters

    params.value.class.should  == Array
    params.value.length.should == 1

    params.value[0].class.should == Rlint::Token::VariableToken
    params.value[0].type.should  == :local_variable
    params.value[0].name.should  == 'example'

    token.block.value.class.should  == Array
    token.block.value.length.should == 1
  end

  it 'Parse a Proc using Proc.new' do
    token = Rlint::Parser.new('Proc.new { |example| example }').parse[0]

    require 'awesome_print'; ap token
  end

  it 'Parse a Lambda' do

  end

  it 'Parse a Lambda using the dash rocket syntax' do

  end

  it 'Parse a block' do

  end
end
