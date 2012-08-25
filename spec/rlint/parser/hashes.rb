require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a Hash' do
    token = Rlint::Parser.new('{"name" => "Ruby", "Foo" => "Bar"}').parse[0]

    token.class.should  == Rlint::Token::Token
    token.line.should   == 1
    token.column.should == 2

    token.value.class.should  == Array
    token.value.length.should == 2

    first = token.value[0]
    last  = token.value[1]

    first.class.should == Rlint::Token::Token
    first.name.should  == 'name'
    first.type.should  == :string

    first.value.class.should == Rlint::Token::Token
    first.value.type.should  == :string
    first.value.value.should == 'Ruby'

    last.class.should == Rlint::Token::Token
    last.name.should  == 'Foo'
    last.type.should  == :string

    last.value.class.should == Rlint::Token::Token
    last.value.type.should  == :string
    last.value.value.should == 'Bar'
  end

  it 'Parse a Hash using symbols' do
    token = Rlint::Parser.new('{:name => "Ruby", :Foo => "Bar"}').parse[0]

    token.class.should  == Rlint::Token::Token
    token.line.should   == 1
    token.column.should == 2

    token.value.class.should  == Array
    token.value.length.should == 2

    first = token.value[0]
    last  = token.value[1]

    first.class.should == Rlint::Token::Token
    first.name.should  == 'name'
    first.type.should  == :symbol

    first.value.class.should == Rlint::Token::Token
    first.value.type.should  == :string
    first.value.value.should == 'Ruby'

    last.class.should == Rlint::Token::Token
    last.name.should  == 'Foo'
    last.type.should  == :symbol

    last.value.class.should == Rlint::Token::Token
    last.value.type.should  == :string
    last.value.value.should == 'Bar'
  end

  it 'Parse a Hash using symbols and the JSON syntax' do
    token = Rlint::Parser.new('{name: "Ruby"}').parse[0]

    token.class.should  == Rlint::Token::Token
    token.line.should   == 1
    token.column.should == 1

    token.value.class.should  == Array
    token.value.length.should == 1

    pair = token.value[0]

    pair.name.should == 'name:'
    pair.type.should == :symbol

    pair.value.class.should == Rlint::Token::Token
    pair.value.type.should  == :string
    pair.value.value.should == 'Ruby'
  end

  it 'Parse a Hash key reference' do
    token = Rlint::Parser.new('{:name => "Ruby"}[:name]').parse[0]

    token.class.should  == Rlint::Token::Token
    token.type.should   == :hash
    token.line.should   == 1
    token.column.should == 2

    token.key.class.should  == Array
    token.key.length.should == 1

    token.key[0].class.should == Rlint::Token::Token
    token.key[0].type.should  == :symbol
    token.key[0].value.should == 'name'

    token.value.class.should  == Array
    token.value.length.should == 1

    pair = token.value[0]

    pair.class.should == Rlint::Token::Token
    pair.type.should  == :symbol
    pair.name.should  == 'name'

    pair.value.class.should == Rlint::Token::Token
    pair.value.value.should == 'Ruby'
    pair.value.type.should  == :string
  end

  it 'Parse a Hash key reference using a variable' do
    token = Rlint::Parser.new("hash = {:name => 'Ruby'}\nhash[:name]").parse[1]

    token.class.should  == Rlint::Token::VariableToken
    token.action.should == :reference

    token.key.class.should  == Array
    token.key.length.should == 1

    token.key[0].class.should == Rlint::Token::Token
    token.key[0].value.should == 'name'
    token.key[0].type.should  == :symbol
  end
end
