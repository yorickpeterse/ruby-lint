require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse the assignment of a local variable' do
    token = Rlint::Parser.new('number = 10').parse[0]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == 'number'
    token.type.should == :local_variable

    token.value.class.should == Rlint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of a global variable' do
    token = Rlint::Parser.new('$number = 10').parse[0]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == '$number'
    token.type.should == :global_variable

    token.value.class.should == Rlint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of an instance variable' do
    token = Rlint::Parser.new('@number = 10').parse[0]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == '@number'
    token.type.should == :instance_variable

    token.value.class.should == Rlint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of a class variable' do
    token = Rlint::Parser.new('@@number = 10').parse[0]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == '@@number'
    token.type.should == :class_variable

    token.value.class.should == Rlint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of a constant' do
    token = Rlint::Parser.new('NUMBER = 10').parse[0]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == 'NUMBER'
    token.type.should == :constant

    token.value.class.should == Rlint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse a reference to a local variable' do
    token = Rlint::Parser.new("number = 10\nnumber").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :local_variable
    token.name.should   == 'number'
  end

  it 'Parse a reference to a global variable' do
    token = Rlint::Parser.new("$number = 10\n$number").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :global_variable
    token.name.should   == '$number'
  end

  it 'Parse a reference to a instance variable' do
    token = Rlint::Parser.new("@number = 10\n@number").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :instance_variable
    token.name.should   == '@number'
  end

  it 'Parse a reference to a class variable' do
    token = Rlint::Parser.new("@@number = 10\n@@number").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :class_variable
    token.name.should   == '@@number'
  end

  it 'Parse a reference to a constant' do
    token = Rlint::Parser.new("NUMBER = 10\nNUMBER").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :constant
    token.name.should   == 'NUMBER'
  end
end
