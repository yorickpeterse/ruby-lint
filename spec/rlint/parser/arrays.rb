require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse an Array' do
    token = Rlint::Parser.new('[10, 20]').parse[0]

    token.class.should == Rlint::Token::Token
    token.type.should  == :array

    token.value.class.should  == Array
    token.value.length.should == 2

    token.line.should   == 1
    token.column.should == 8

    token.value[0].class.should == Rlint::Token::Token
    token.value[0].type.should  == :integer
    token.value[0].value.should == '10'

    token.value[1].class.should == Rlint::Token::Token
    token.value[1].type.should  == :integer
    token.value[1].value.should == '20'
  end

  it 'Parse an Array using %w{}' do
    token = Rlint::Parser.new('%w{10 20}').parse[0]

    token.class.should == Rlint::Token::Token
    token.type.should  == :array

    token.value.class.should  == Array
    token.value.length.should == 2

    token.line.should   == 1
    token.column.should == 9

    token.value[0].class.should == Rlint::Token::Token
    token.value[0].type.should  == :string
    token.value[0].value.should == '10'

    token.value[1].class.should == Rlint::Token::Token
    token.value[1].type.should  == :string
    token.value[1].value.should == '20'
  end

  it 'Parse an Array using %W{}' do
    token = Rlint::Parser.new('%W{10 20}').parse[0]

    token.class.should == Rlint::Token::Token
    token.type.should  == :array

    token.value.class.should  == Array
    token.value.length.should == 2

    token.line.should   == 1
    token.column.should == 9

    token.value[0].class.should == Rlint::Token::Token
    token.value[0].type.should  == :string
    token.value[0].value.should == '10'

    token.value[1].class.should == Rlint::Token::Token
    token.value[1].type.should  == :string
    token.value[1].value.should == '20'
  end

  it 'Parse an Array index reference' do
    token = Rlint::Parser.new("[10][0]").parse[0]

    token.class.should  == Rlint::Token::Token
    token.line.should   == 1
    token.column.should == 4

    token.key.class.should  == Array
    token.key.length.should == 1

    token.key[0].class.should == Rlint::Token::Token
    token.key[0].type.should  == :integer
    token.key[0].value.should == '0'
  end

  it 'Parse an Array index reference using a variable' do
    token = Rlint::Parser.new("numbers = [10]\nnumbers[0]").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.name.should   == 'numbers'

    token.key.class.should  == Array
    token.key.length.should == 1

    token.key[0].class.should == Rlint::Token::Token
    token.key[0].type.should  == :integer
    token.key[0].value.should == '0'
  end

  it 'Parse multiple Array index references' do
    token = Rlint::Parser.new("numbers = [10]\nnumbers[0,1]").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.name.should   == 'numbers'

    token.key.class.should  == Array
    token.key.length.should == 2

    token.key[0].class.should == Rlint::Token::Token
    token.key[0].type.should  == :integer
    token.key[0].value.should == '0'

    token.key[1].class.should == Rlint::Token::Token
    token.key[1].type.should  == :integer
    token.key[1].value.should == '1'
  end
end
