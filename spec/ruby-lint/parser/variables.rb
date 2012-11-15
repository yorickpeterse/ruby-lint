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
    tokens = RubyLint::Parser.new('foo, bar = 10, 20').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 2

    foo = tokens[0]
    bar = tokens[1]

    foo.class.should == RubyLint::Token::AssignmentToken
    foo.name.should  == 'foo'
    foo.type.should  == :local_variable
    foo.event.should == :assignment

    foo.value.class.should == RubyLint::Token::Token
    foo.value.type.should  == :integer
    foo.value.value.should == '10'

    bar.class.should == RubyLint::Token::AssignmentToken
    bar.name.should  == 'bar'
    bar.type.should  == :local_variable
    bar.event.should == :assignment

    bar.value.class.should == RubyLint::Token::Token
    bar.value.type.should  == :integer
    bar.value.value.should == '20'
  end

  it 'Parse the mass assignment of multiple variables using an array' do
    tokens = RubyLint::Parser.new('foo, bar = [10, 20]').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 2

    foo = tokens[0]
    bar = tokens[1]

    foo.class.should == RubyLint::Token::AssignmentToken
    foo.name.should  == 'foo'
    foo.type.should  == :local_variable

    foo.value.class.should == RubyLint::Token::Token
    foo.value.type.should  == :integer
    foo.value.value.should == '10'

    bar.class.should == RubyLint::Token::AssignmentToken
    bar.name.should  == 'bar'
    bar.type.should  == :local_variable

    bar.value.class.should == RubyLint::Token::Token
    bar.value.type.should  == :integer
    bar.value.value.should == '20'
  end

  it 'Parse the mass assignment of multiple variables using a single value' do
    tokens = RubyLint::Parser.new('foo, bar = 10').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 2

    foo = tokens[0]
    bar = tokens[1]

    foo.class.should == RubyLint::Token::AssignmentToken
    foo.name.should  == 'foo'
    foo.type.should  == :local_variable

    foo.value.class.should == RubyLint::Token::Token
    foo.value.type.should  == :integer
    foo.value.value.should == '10'

    bar.class.should == RubyLint::Token::AssignmentToken
    bar.name.should  == 'bar'
    bar.type.should  == :local_variable

    bar.value.nil?.should == true
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

  it 'Parse the conditional assignment of a variable' do
    token = RubyLint::Parser.new('number ||= 10').parse[0]

    token.class.should == RubyLint::Token::AssignmentToken
    token.name.should  == 'number'
    token.type.should  == :local_variable
    token.event.should == :op_assignment

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end
end
