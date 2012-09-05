require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse the use of various operators' do
    ['*', '-', '+', '/', '%', '^'].each do |operator|
      token = Rlint::Parser.new("10 #{operator} 2").parse[0]

      token.class.should  == Rlint::Token::Token
      token.type.should   == :binary

      token.value.class.should  == Array
      token.value.length.should == 3

      left, op, right = token.value

      left.class.should == Rlint::Token::Token
      left.type.should  == :integer
      left.value.should == '10'

      op.should == operator.to_sym

      right.class.should == Rlint::Token::Token
      right.type.should  == :integer
      right.value.should == '2'
    end
  end

  it 'Parse the use of multiple operators' do
    token = Rlint::Parser.new('10 and 20 and 30').parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :binary

    token.value.class.should  == Array
    token.value.length.should == 3

    first = token.value[0]
    last  = token.value[2]

    first.class.should        == Rlint::Token::Token
    first.type.should         == :binary
    first.value.length.should == 3

    first.value[0].class.should == Rlint::Token::Token
    first.value[0].type.should  == :integer
    first.value[0].value.should == '10'

    first.value[1].should == :and

    first.value[2].class.should == Rlint::Token::Token
    first.value[2].type.should  == :integer
    first.value[2].value.should == '20'

    token.value[1].should == :and

    last.class.should == Rlint::Token::Token
    last.type.should  == :integer
    last.value.should == '30'
  end
end
