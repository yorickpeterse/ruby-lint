require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse the use of various operators' do
    ['*', '-', '+', '/', '%', '^'].each do |operator|
      token = Rlint::Parser.new("10 #{operator} 2").parse[0]

      token.class.should  == Rlint::Token::Token
      token.type.should   == :binary
      token.line.should   == 1
      token.column.should == 0

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
end
