require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse the assignment of a value to a local and * variable' do
    ast = RubyLint::Parser.new('a, * = 10').parse[0]

    ast.class.should  == Array
    ast.length.should == 1

    token = ast[0]

    token.class.should == RubyLint::Token::AssignmentToken
    token.type.should  == :local_variable
    token.name.should  == 'a'

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :integer
    token.value.value.should == '10'
  end

  it 'Parse a left hand expand assignment' do
    tokens = RubyLint::Parser.new('*numbers = 10').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 1

    token = tokens[0]

    token.class.should == RubyLint::Token::AssignmentToken
    token.type.should  == :local_variable
    token.expand.should == true
    token.name.should  == 'numbers'

    token.value.class.should == RubyLint::Token::Token
    token.value.type.should  == :array

    token.value.value.class.should  == Array
    token.value.value.length.should == 1

    val = token.value.value[0]

    val.class.should == RubyLint::Token::Token
    val.type.should  == :integer
    val.value.should == '10'
  end

  it 'Parse a left hand expand and local variable assignment' do
    tokens = RubyLint::Parser.new('number, *numbers = 10').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 2

    number  = tokens[0]
    numbers = tokens[1]

    number.class.should == RubyLint::Token::AssignmentToken
    number.name.should  == 'number'
    number.type.should  == :local_variable
    number.expand.should == false

    number.value.class.should == RubyLint::Token::Token
    number.value.type.should  == :integer
    number.value.value.should == '10'

    numbers.class.should == RubyLint::Token::AssignmentToken
    numbers.name.should  == 'numbers'
    numbers.type.should  == :local_variable
    numbers.expand.should == true

    numbers.value.class.should        == RubyLint::Token::Token
    numbers.value.type.should         == :array
    numbers.value.value.length.should == 0
  end

  it 'Parse a mass assignment using an expand variable on the left' do
    tokens = RubyLint::Parser.new('*numbers, number, numberx = 10').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 3

    numbers = tokens[0]
    number  = tokens[1]
    numberx = tokens[2]

    numbers.class.should == RubyLint::Token::AssignmentToken
    numbers.name.should  == 'numbers'
    numbers.type.should  == :local_variable
    numbers.expand.should == true

    numbers.value.class.should        == RubyLint::Token::Token
    numbers.value.type.should         == :array
    numbers.value.value.class.should  == Array
    numbers.value.value.length.should == 0

    number.class.should == RubyLint::Token::AssignmentToken
    number.name.should  == 'number'
    number.type.should  == :local_variable
    number.expand.should == false

    number.value.class.should == RubyLint::Token::Token
    number.value.type.should  == :integer
    number.value.value.should == '10'

    numberx.class.should  == RubyLint::Token::AssignmentToken
    numberx.name.should   == 'numberx'
    numberx.type.should   == :local_variable
    numberx.expand.should == false

    numberx.value.nil?.should == true
  end

  it 'Parse the assignment of 2 values to 2 variables using an expander' do
    tokens = RubyLint::Parser.new('*numbers, number = 10, 20').parse[0]

    tokens.class.should  == Array
    tokens.length.should == 2

    numbers = tokens[0]
    number  = tokens[1]

    numbers.class.should == RubyLint::Token::AssignmentToken
    numbers.name.should  == 'numbers'
    numbers.type.should  == :local_variable

    numbers.value.class.should == RubyLint::Token::Token
    numbers.value.type.should  == :array

    numbers.value.value.class.should  == Array
    numbers.value.value.length.should == 1

    numbers_val = numbers.value.value[0]

    numbers_val.class.should == RubyLint::Token::Token
    numbers_val.type.should  == :integer
    numbers_val.value.should == '10'

    number.class.should == RubyLint::Token::AssignmentToken
    number.name.should  == 'number'
    number.type.should  == :local_variable

    number.value.class.should == RubyLint::Token::Token
    number.value.type.should  == :integer
    number.value.value.should == '20'
  end

  it 'Parse the assignment of 2 values to 3 variables using an expander' do
    tokens = RubyLint::Parser.new('*numbers, number, numberx = 10, 20') \
      .parse[0]

    tokens.class.should  == Array
    tokens.length.should == 3

    numbers = tokens[0]
    number  = tokens[1]
    numberx = tokens[2]

    numbers.class.should == RubyLint::Token::AssignmentToken
    numbers.name.should  == 'numbers'
    numbers.type.should  == :local_variable

    numbers.value.class.should == RubyLint::Token::Token
    numbers.value.type.should  == :array

    numbers.value.value.class.should  == Array
    numbers.value.value.length.should == 0

    number.class.should == RubyLint::Token::AssignmentToken
    number.name.should  == 'number'
    number.type.should  == :local_variable

    number.value.class.should == RubyLint::Token::Token
    number.value.type.should  == :integer
    number.value.value.should == '10'

    numberx.class.should == RubyLint::Token::AssignmentToken
    numberx.name.should  == 'numberx'
    numberx.type.should  == :local_variable

    numberx.value.class.should == RubyLint::Token::Token
    numberx.value.type.should  == :integer
    numberx.value.value.should == '20'
  end
end
