require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a return statement' do
    token = Rlint::Parser.new('return 10').parse[0]

    token.class.should  == Rlint::Token::StatementToken
    token.name.should   == :return
    token.type.should   == :statement
    token.line.should   == 1
    token.column.should == 0

    token.value.class.should  == Array
    token.value.length.should == 1

    val = token.value[0]

    val.class.should  == Rlint::Token::Token
    val.type.should   == :integer
    val.line.should   == 1
    val.column.should == 7
    val.value.should  == '10'
  end

  it 'Parse a return statement with multiple return values' do
    token = Rlint::Parser.new('return 10, 20').parse[0]

    token.class.should  == Rlint::Token::StatementToken
    token.name.should   == :return
    token.type.should   == :statement
    token.line.should   == 1
    token.column.should == 0

    token.value.class.should  == Array
    token.value.length.should == 2

    val = token.value[0]

    val.class.should  == Rlint::Token::Token
    val.type.should   == :integer
    val.line.should   == 1
    val.column.should == 7
    val.value.should  == '10'

    val = token.value[1]

    val.class.should  == Rlint::Token::Token
    val.type.should   == :integer
    val.line.should   == 1
    val.column.should == 11
    val.value.should  == '20'
  end

  it 'Parse a while loop' do
    token = Rlint::Parser.new('while true; return 10; end').parse[0]

    token.class.should  == Rlint::Token::StatementToken
    token.name.should   == :while
    token.line.should   == 1
    token.column.should == 0

    token.statement.class.should == Rlint::Token::VariableToken
    token.statement.type.should  == :keyword
    token.statement.name.should  == 'true'

    token.value.class.should  == Array
    token.value.length.should == 1

    val = token.value[0]

    val.class.should == Rlint::Token::StatementToken
    val.name.should  == :return

    val.value.class.should  == Array
    val.value.length.should == 1

    val.value[0].class.should == Rlint::Token::Token
    val.value[0].type.should  == :integer
    val.value[0].value.should == '10'
  end

  it 'Parse a for loop' do
    code = <<-CODE
for key, value in {:name => 'Ruby'}
  return key, value
end
    CODE

    token = Rlint::Parser.new(code).parse[0]

    token.class.should == Rlint::Token::StatementToken
    token.type.should  == :statement
    token.name.should  == :for

    token.statement.class.should  == Array
    token.statement.length.should == 2

    vars = token.statement[0]
    enum = token.statement[1]

    vars.class.should  == Array
    vars.length.should == 2

    vars[0].class.should == Rlint::Token::Token
    vars[0].type.should  == :identifier
    vars[0].value.should == 'key'

    vars[1].class.should == Rlint::Token::Token
    vars[1].type.should  == :identifier
    vars[1].value.should == 'value'

    enum.class.should == Rlint::Token::Token
    enum.type.should  == :hash

    enum.value.class.should  == Array
    enum.value.length.should == 1

    val = enum.value[0]

    val.class.should == Rlint::Token::Token
    val.type.should  == :symbol
    val.name.should  == 'name'

    val.value.class.should == Rlint::Token::Token
    val.value.type.should  == :string
    val.value.value.should == 'Ruby'

    token.value.class.should  == Array
    token.value.length.should == 1
  end

  it 'Parse a begin/rescue statement' do
    code = <<-CODE
begin
  raise 'Foo'
rescue => e
  puts e.message
end
    CODE

    token = Rlint::Parser.new(code).parse[0]

    require 'awesome_print'
    ap token
  end

=begin

  it 'Parse an if statement' do
    code = <<-CODE
if 10 == 20
  return 10
elsif 10 == 15
  return 20
else
  return 30
end
    CODE

    token = Rlint::Parser.new(code).parse[0]

    require 'awesome_print'
    ap token
  end
=end
end
