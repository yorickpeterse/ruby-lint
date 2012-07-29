require File.expand_path('../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse the assignment of a variable' do
    parser = Rlint::Parser.new('number = 10')
    tokens = parser.parse

    var = tokens[0]

    # Check the variable itself.
    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == 'number'
    var.line.should   == 1
    var.column.should == 0
    var.type.should   == :local_variable
    var.code.should   == 'number = 10'

    # Check the value
    var.value.is_a?(Rlint::Token::ValueToken).should == true

    var.value.line.should   == 1
    var.value.column.should == 9
    var.value.type.should   == :integer
    var.value.code.should   == 'number = 10'
  end

  it 'Parse the assignment and reference of a variable' do
    parser = Rlint::Parser.new("number = 10\nnumber")
    tokens = parser.parse

    tokens.length.should == 2

    ref = tokens[1]

    ref.is_a?(Rlint::Token::VariableToken).should == true

    ref.name.should   == 'number'
    ref.line.should   == 2
    ref.column.should == 0
    ref.code.should   == 'number'
  end

  it 'Parse basic operator usage' do
    # Parse the * operator.
    parser = Rlint::Parser.new('10 * 2')
    tokens = parser.parse

    tokens[0].name.should == :*

    tokens[0].left.is_a?(Rlint::Token::ValueToken).should  == true
    tokens[0].right.is_a?(Rlint::Token::ValueToken).should == true

    tokens[0].left.value.should  == '10'
    tokens[0].right.value.should == '2'

    # Parse the << operator.
    parser = Rlint::Parser.new('[] << 10')
    tokens = parser.parse

    tokens[0].name.should == :<<

    tokens[0].left.is_a?(Rlint::Token::ValueToken).should  == true
    tokens[0].right.is_a?(Rlint::Token::ValueToken).should == true
  end

  it 'Parse a method call without parenthesis' do
    parser = Rlint::Parser.new('puts 10, 15')
    tokens = parser.parse

    tokens.length.should == 1

    method = tokens[0]

    method.name.should   == 'puts'
    method.line.should   == 1
    method.column.should == 0

    method.parameters.length.should == 2

    param1 = method.parameters[0]
    param2 = method.parameters[1]

    param1.is_a?(Rlint::Token::ValueToken).should == true
    param2.is_a?(Rlint::Token::ValueToken).should == true

    param1.type.should == :integer
    param2.type.should == :integer

    param1.line.should == 1
    param2.line.should == 1

    param1.column.should == 5
    param2.column.should == 9
  end

  it 'Parse a method call with parenthesis' do
    parser = Rlint::Parser.new('puts(10, 15)')
    tokens = parser.parse

    tokens.length.should == 1

    method = tokens[0]

    method.name.should   == 'puts'
    method.line.should   == 1
    method.column.should == 0

    method.parameters.length.should == 2

    param1 = method.parameters[0]
    param2 = method.parameters[1]

    param1.is_a?(Rlint::Token::ValueToken).should == true
    param2.is_a?(Rlint::Token::ValueToken).should == true

    param1.type.should == :integer
    param2.type.should == :integer

    param1.line.should == 1
    param2.line.should == 1

    param1.column.should == 5
    param2.column.should == 9
  end
end
