require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a String' do
    ['"hello"', "'hello'"].each do |string|
      token = Rlint::Parser.new(string).parse[0]

      token.class.should  == Rlint::Token::Token
      token.type.should   == :string
      token.value.should  == 'hello'
      token.line.should   == 1
      token.column.should == 1
    end
  end

  it 'Parse a Symbol' do
    token = Rlint::Parser.new(':hello').parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :symbol
    token.value.should  == 'hello'
    token.line.should   == 1
    token.column.should == 1

    token = Rlint::Parser.new(':"hello"').parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :symbol
    token.value.should  == 'hello'
    token.line.should   == 1
    token.column.should == 2
  end

  it 'Parse a string using %q{} and %Q{}' do
    ['%q{hello}', '%Q{hello}'].each do |string|
      token = Rlint::Parser.new(string).parse[0]

      token.class.should  == Rlint::Token::Token
      token.type.should   == :string
      token.value.should  == 'hello'
      token.line.should   == 1
      token.column.should == 3
    end
  end

  it 'Parse a Fixnum' do
    token = Rlint::Parser.new('10').parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :integer
    token.value.should  == '10'
    token.line.should   == 1
    token.column.should == 0
  end

  it 'Parse a Float' do
    token = Rlint::Parser.new('10.2').parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :float
    token.value.should  == '10.2'
    token.line.should   == 1
    token.column.should == 0
  end
end
