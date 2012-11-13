require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Parser' do
  it 'Parse the assignment of a local variable' do
    token = RubyLint::Parser.new('number = 10').parse[0]

    token.class.should  == RubyLint::Token::AssignmentToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == 'number'
    token.type.should == :local_variable

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of a global variable' do
    token = RubyLint::Parser.new('$number = 10').parse[0]

    token.class.should  == RubyLint::Token::AssignmentToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == '$number'
    token.type.should == :global_variable

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of an instance variable' do
    token = RubyLint::Parser.new('@number = 10').parse[0]

    token.class.should  == RubyLint::Token::AssignmentToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == '@number'
    token.type.should == :instance_variable

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of a class variable' do
    token = RubyLint::Parser.new('@@number = 10').parse[0]

    token.class.should  == RubyLint::Token::AssignmentToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == '@@number'
    token.type.should == :class_variable

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse the assignment of a constant' do
    token = RubyLint::Parser.new('NUMBER = 10').parse[0]

    token.class.should  == RubyLint::Token::AssignmentToken
    token.line.should   == 1
    token.column.should == 0

    token.name.should == 'NUMBER'
    token.type.should == :constant

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse a reference to a local variable' do
    token = RubyLint::Parser.new("number = 10\nnumber").parse[1]

    token.class.should  == RubyLint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :local_variable
    token.name.should   == 'number'
  end

  it 'Parse a reference to a global variable' do
    token = RubyLint::Parser.new("$number = 10\n$number").parse[1]

    token.class.should  == RubyLint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :global_variable
    token.name.should   == '$number'
  end

  it 'Parse a reference to a instance variable' do
    token = RubyLint::Parser.new("@number = 10\n@number").parse[1]

    token.class.should  == RubyLint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :instance_variable
    token.name.should   == '@number'
  end

  it 'Parse a reference to a class variable' do
    token = RubyLint::Parser.new("@@number = 10\n@@number").parse[1]

    token.class.should  == RubyLint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :class_variable
    token.name.should   == '@@number'
  end

  it 'Parse a reference to a constant' do
    token = RubyLint::Parser.new("NUMBER = 10\nNUMBER").parse[1]

    token.class.should  == RubyLint::Token::VariableToken
    token.line.should   == 2
    token.column.should == 0
    token.type.should   == :constant
    token.name.should   == 'NUMBER'
  end

  it 'Parse the mass assignment of multiple variables' do
    token = RubyLint::Parser.new('foo, bar = 10, 20').parse[0]

    token.class.should == RubyLint::Token::AssignmentToken

    token.name.class.should  == Array
    token.name.length.should == 2
    token.type.should        == :mass_assignment

    token.name[0].class.should == RubyLint::Token::Token
    token.name[0].name.should  == 'foo'
    token.name[0].type.should  == :local_variable

    token.name[1].class.should == RubyLint::Token::Token
    token.name[1].name.should  == 'bar'
    token.name[1].type.should  == :local_variable

    token.value.class.should  == Array
    token.value.length.should == 2

    token.value[0].class.should == RubyLint::Token::Token
    token.value[0].value.should == '10'
    token.value[0].type.should  == :integer

    token.value[1].class.should == RubyLint::Token::Token
    token.value[1].value.should == '20'
    token.value[1].type.should  == :integer
  end

  it 'Parse the reference of a constant path' do
    token = RubyLint::Parser.new('A::B::C').parse[0]

    token.class.should  == RubyLint::Token::VariableToken
    token.type.should   == :constant_path
    token.name.should   == ['A', 'B', 'C']
    token.line.should   == 1
    token.column.should == 0
  end

  it 'Parse the assignment of a constant path' do
    token = RubyLint::Parser.new('A::B::C = 10').parse[0]

    token.class.should  == RubyLint::Token::AssignmentToken
    token.type.should   == :constant_path
    token.name.should   == ['A', 'B', 'C']
    token.line.should   == 1
    token.column.should == 0

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end
end
