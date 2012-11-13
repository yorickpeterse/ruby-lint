require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Parser' do
  it 'Parse a String' do
    ['"hello"', "'hello'"].each do |string|
      token = RubyLint::Parser.new(string).parse[0]

      token.class.should  == RubyLint::Token::Token
      token.type.should   == :string
      token.value.should  == 'hello'
      token.line.should   == 1
      token.column.should == 1
      token.code.should   == string
    end
  end

  it 'Parse a Symbol' do
    token = RubyLint::Parser.new(':hello').parse[0]

    token.class.should  == RubyLint::Token::Token
    token.type.should   == :symbol
    token.value.should  == 'hello'
    token.line.should   == 1
    token.column.should == 1
    token.code.should   == ':hello'

    token = RubyLint::Parser.new(':"hello"').parse[0]

    token.class.should  == RubyLint::Token::Token
    token.type.should   == :symbol
    token.value.should  == 'hello'
    token.line.should   == 1
    token.column.should == 2
    token.code.should   == ':"hello"'
  end

  it 'Parse a string using %q{} and %Q{}' do
    ['%q{hello}', '%Q{hello}'].each do |string|
      token = RubyLint::Parser.new(string).parse[0]

      token.class.should  == RubyLint::Token::Token
      token.type.should   == :string
      token.value.should  == 'hello'
      token.line.should   == 1
      token.column.should == 3
      token.code.should   == string
    end
  end

  it 'Parse a Fixnum' do
    token = RubyLint::Parser.new('10').parse[0]

    token.class.should  == RubyLint::Token::Token
    token.type.should   == :integer
    token.value.should  == '10'
    token.line.should   == 1
    token.column.should == 0
    token.code.should   == '10'
  end

  it 'Parse a Float' do
    token = RubyLint::Parser.new('10.2').parse[0]

    token.class.should  == RubyLint::Token::Token
    token.type.should   == :float
    token.value.should  == '10.2'
    token.line.should   == 1
    token.column.should == 0
    token.code.should   == '10.2'
  end

  it 'Parse a boolean' do
    token = RubyLint::Parser.new('true').parse[0]

    token.class.should  == RubyLint::Token::VariableToken
    token.type.should   == :keyword
    token.name.should   == 'true'
    token.line.should   == 1
    token.column.should == 0
    token.code.should   == 'true'
  end

  it 'Parse a nil value' do
    token = RubyLint::Parser.new('nil').parse[0]

    token.class.should  == RubyLint::Token::VariableToken
    token.type.should   == :keyword
    token.name.should   == 'nil'
    token.line.should   == 1
    token.column.should == 0
    token.code.should   == 'nil'
  end
end
