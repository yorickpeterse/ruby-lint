require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Parser' do
  it 'Parse a Range' do
    token = RubyLint::Parser.new('0..10').parse[0]

    token.class.should  == RubyLint::Token::Token
    token.type.should   == :range
    token.line.should   == 1
    token.column.should == 1

    token.value.class.should  == Array
    token.value.length.should == 2

    start = token.value[0]
    stop  = token.value[1]

    start.class.should == RubyLint::Token::Token
    start.type.should  == :integer
    start.value.should == '0'

    stop.class.should == RubyLint::Token::Token
    stop.type.should  == :integer
    stop.value.should == '10'
  end

  it 'Parse a Range of Strings' do
    token = RubyLint::Parser.new('"a".."z"').parse[0]

    token.class.should  == RubyLint::Token::Token
    token.type.should   == :range
    token.line.should   == 1
    token.column.should == 1

    token.value.class.should  == Array
    token.value.length.should == 2

    start = token.value[0]
    stop  = token.value[1]

    start.class.should == RubyLint::Token::Token
    start.type.should  == :string
    start.value.should == 'a'

    stop.class.should == RubyLint::Token::Token
    stop.type.should  == :string
    stop.value.should == 'z'
  end
end
