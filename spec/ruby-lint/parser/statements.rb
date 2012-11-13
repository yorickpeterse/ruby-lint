require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Parser' do
  it 'Parse a return statement' do
    token = RubyLint::Parser.new('return 10').parse[0]

    token.class.should  == RubyLint::Token::StatementToken
    token.type.should   == :return
    token.line.should   == 1
    token.column.should == 0

    token.value.class.should  == Array
    token.value.length.should == 1

    val = token.value[0]

    val.class.should  == RubyLint::Token::Token
    val.type.should   == :integer
    val.line.should   == 1
    val.column.should == 7
    val.value.should  == '10'
  end

  it 'Parse a return statement with multiple return values' do
    token = RubyLint::Parser.new('return 10, 20').parse[0]

    token.class.should  == RubyLint::Token::StatementToken
    token.type.should   == :return
    token.line.should   == 1
    token.column.should == 0

    token.value.class.should  == Array
    token.value.length.should == 2

    val = token.value[0]

    val.class.should  == RubyLint::Token::Token
    val.type.should   == :integer
    val.line.should   == 1
    val.column.should == 7
    val.value.should  == '10'

    val = token.value[1]

    val.class.should  == RubyLint::Token::Token
    val.type.should   == :integer
    val.line.should   == 1
    val.column.should == 11
    val.value.should  == '20'
  end

  it 'Parse a return statement with parenthesis' do
    token = RubyLint::Parser.new('return ( 10 )').parse[0]

    token.class.should  == RubyLint::Token::StatementToken
    token.type.should   == :return
    token.line.should   == 1
    token.column.should == 0
    token.code.should   == 'return ( 10 )'

    token.value.class.should  == Array
    token.value.length.should == 1
  end

  it 'Parse a while loop' do
    token = RubyLint::Parser.new('while true; return 10; end').parse[0]

    token.class.should  == RubyLint::Token::StatementToken
    token.type.should   == :while
    token.line.should   == 1
    token.column.should == 0

    token.statement.class.should == RubyLint::Token::VariableToken
    token.statement.type.should  == :keyword
    token.statement.name.should  == 'true'

    token.value.class.should  == Array
    token.value.length.should == 1

    val = token.value[0]

    val.class.should == RubyLint::Token::StatementToken
    val.type.should  == :return

    val.value.class.should  == Array
    val.value.length.should == 1

    val.value[0].class.should == RubyLint::Token::Token
    val.value[0].type.should  == :integer
    val.value[0].value.should == '10'
  end

  it 'Parse a single line while loop' do
    token = RubyLint::Parser.new('foo while bar').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :while

    token.statement.class.should == RubyLint::Token::MethodToken
    token.statement.name.should  == 'bar'

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == RubyLint::Token::MethodToken
    token.value[0].name.should  == 'foo'
  end

  it 'Parse a while loop using parenthesis' do
    token = RubyLint::Parser.new('while ( true ); return 10; end').parse[0]

    token.class.should  == RubyLint::Token::StatementToken
    token.type.should   == :while
    token.line.should   == 1
    token.column.should == 0
    token.code.should   == 'while ( true ); return 10; end'

    token.value.class.should  == Array
    token.value.length.should == 1
  end

  it 'Parse a for loop' do
    code = <<-CODE
for key, value in {:name => 'Ruby'}
  return key, value
end
    CODE

    token = RubyLint::Parser.new(code).parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :for

    token.statement.class.should  == Array
    token.statement.length.should == 2

    vars = token.statement[0]
    enum = token.statement[1]

    vars.class.should  == Array
    vars.length.should == 2

    vars[0].class.should == RubyLint::Token::Token
    vars[0].type.should  == :identifier
    vars[0].value.should == 'key'

    vars[1].class.should == RubyLint::Token::Token
    vars[1].type.should  == :identifier
    vars[1].value.should == 'value'

    enum.class.should == RubyLint::Token::Token
    enum.type.should  == :hash

    enum.value.class.should  == Array
    enum.value.length.should == 1

    val = enum.value[0]

    val.class.should == RubyLint::Token::Token
    val.type.should  == :symbol
    val.name.should  == 'name'

    val.value.class.should == RubyLint::Token::Token
    val.value.type.should  == :string
    val.value.value.should == 'Ruby'

    token.value.class.should  == Array
    token.value.length.should == 1
  end

  it 'Parse a for loop with one parameter' do
    code = <<-CODE
for number in [10, 20, 30]
  puts number
end
    CODE

    token = RubyLint::Parser.new(code).parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :for

    token.statement[0].class.should  == Array
    token.statement[0].length.should == 1

    var = token.statement[0][0]

    var.class.should == RubyLint::Token::Token
    var.type.should  == :identifier
    var.name.should  == 'number'
  end

  it 'Parse a simple if statement' do
    token = RubyLint::Parser.new('if 10 == 20; return 10; end').parse[0]

    token.class.should        == RubyLint::Token::StatementToken
    token.else.nil?.should    == true
    token.elsif.class.should  == Array
    token.elsif.length.should == 0

    token.statement.class.should        == RubyLint::Token::Token
    token.statement.value.class.should  == Array
    token.statement.value.length.should == 3

    token.statement.value[0].class.should == RubyLint::Token::Token
    token.statement.value[0].type.should  == :integer
    token.statement.value[0].value.should == '10'

    token.statement.value[1].should == :==

    token.statement.value[2].class.should == RubyLint::Token::Token
    token.statement.value[2].type.should  == :integer
    token.statement.value[2].value.should == '20'
  end

  it 'Parse an if, elsif and else statement' do
    code = <<-CODE
if 10 == 20
  return 10
elsif 10 == 15
  return 20
elsif 10 == 10
  return 30
else
  return 40
end
    CODE

    token = RubyLint::Parser.new(code).parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :if

    token.elsif.class.should  == Array
    token.elsif.length.should == 2

    first = token.elsif[0]
    last  = token.elsif[1]

    first.class.should == RubyLint::Token::StatementToken
    first.type.should  == :elsif

    first.statement.class.should        == RubyLint::Token::Token
    first.statement.value.class.should  == Array
    first.statement.value.length.should == 3

    last.class.should == RubyLint::Token::StatementToken
    last.type.should  == :elsif

    last.statement.class.should        == RubyLint::Token::Token
    last.statement.value.class.should  == Array
    last.statement.value.length.should == 3

    token.else.class.should          == RubyLint::Token::StatementToken
    token.else.statement.nil?.should == true

    token.else.value.class.should  == Array
    token.else.value.length.should == 1
  end

  it 'Parse a begin/rescue statement' do
    code = <<-CODE
begin
  return 10
rescue RuntimeError, StandardError => e
  return 20
rescue StandardError => e
  return 30
else
  return 40
ensure
  return 50
end
    CODE

    token = RubyLint::Parser.new(code).parse[0]

    token.class.should == RubyLint::Token::BeginRescueToken

    token.else.class.should        == RubyLint::Token::StatementToken
    token.else.type.should         == :else
    token.else.value.class.should  == Array
    token.else.value.length.should == 1

    token.ensure.class.should        == RubyLint::Token::StatementToken
    token.ensure.type.should         == :ensure
    token.ensure.value.class.should  == Array
    token.ensure.value.length.should == 1

    token.rescue.class.should  == Array
    token.rescue.length.should == 2

    first, second = token.rescue

    first.type.should         == :rescue
    first.value.class.should  == Array
    first.value.length.should == 1

    first.statement.class.should  == Array
    first.statement.length.should == 2

    constants = first.statement[0]
    var       = first.statement[1]

    constants.class.should  == Array
    constants.length.should == 2

    constants[0].class.should == RubyLint::Token::VariableToken
    constants[0].type.should  == :constant
    constants[0].name.should  == 'RuntimeError'
    constants[0].line.should  == 3

    constants[1].class.should == RubyLint::Token::VariableToken
    constants[1].type.should  == :constant
    constants[1].name.should  == 'StandardError'
    constants[1].line.should  == 3

    var.class.should == RubyLint::Token::Token
    var.type.should  == :identifier
    var.value.should == 'e'
    var.line.should  == 3

    second.type.should         == :rescue
    second.value.class.should  == Array
    second.value.length.should == 1

    constants = second.statement[0]
    var       = second.statement[1]

    constants.class.should  == Array
    constants.length.should == 1

    constants[0].class.should == RubyLint::Token::VariableToken
    constants[0].type.should  == :constant
    constants[0].name.should  == 'StandardError'
    constants[0].line.should  == 5

    var.class.should == RubyLint::Token::Token
    var.type.should  == :identifier
    var.value.should == 'e'
    var.line.should  == 5
  end

  it 'Parse a case statement' do
    code = <<-CODE
case number
when 10, 20
  puts '10 or 20'
when 30
  puts '30'
else
  puts 'something else'
end
    CODE

    token = RubyLint::Parser.new(code).parse[0]

    token.class.should == RubyLint::Token::CaseToken
    token.type.should  == :case

    token.statement.class.should == RubyLint::Token::MethodToken
    token.statement.name.should  == 'number'

    token.when.class.should  == Array
    token.when.length.should == 2

    first, second = token.when

    # Check the first when statement.
    first.class.should            == RubyLint::Token::StatementToken
    first.statement.class         == Array
    first.statement.length.should == 2

    first.statement[0].class.should == RubyLint::Token::Token
    first.statement[0].type.should  == :integer
    first.statement[0].value.should == '10'

    first.statement[1].class.should == RubyLint::Token::Token
    first.statement[1].type.should  == :integer
    first.statement[1].value.should == '20'

    first.value.class.should  == Array
    first.value.length.should == 1

    first.value[0].class.should             == RubyLint::Token::MethodToken
    first.value[0].name.should              == 'puts'
    first.value[0].parameters.class.should  == Array
    first.value[0].parameters.length.should == 1

    # Check the second when statement.
    second.class.should            == RubyLint::Token::StatementToken
    second.statement.class.should  == Array
    second.statement.length.should == 1

    second.statement[0].class.should == RubyLint::Token::Token
    second.statement[0].type.should  == :integer
    second.statement[0].value.should == '30'

    second.value.class.should  == Array
    second.value.length.should == 1

    second.value[0].class.should             == RubyLint::Token::MethodToken
    second.value[0].name.should              == 'puts'
    second.value[0].parameters.class.should  == Array
    second.value[0].parameters.length.should == 1

    # Check the else statement.
    token.else.class.should == RubyLint::Token::StatementToken

    token.else.value.class.should  == Array
    token.else.value.length.should == 1

    token.else.value[0].class.should == RubyLint::Token::MethodToken
    token.else.value[0].name.should  == 'puts'

    token.else.value[0].parameters.class.should  == Array
    token.else.value[0].parameters.length.should == 1
  end

  it 'Parse a single line if statement' do
    token = RubyLint::Parser.new('foo if bar').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :if

    token.statement.class.should == RubyLint::Token::MethodToken
    token.statement.name.should  == 'bar'

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == RubyLint::Token::MethodToken
    token.value[0].name.should  == 'foo'
  end

  it 'Parse a single line begin/rescue statement' do
    token = RubyLint::Parser.new('foo rescue bar').parse[0]

    token.class.should == RubyLint::Token::BeginRescueToken
    token.type.should  == :rescue

    token.rescue.class.should  == Array
    token.rescue.length.should == 1

    token.rescue[0].class.should == RubyLint::Token::MethodToken
    token.rescue[0].name.should  == 'bar'

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == RubyLint::Token::MethodToken
    token.value[0].name.should  == 'foo'
  end

  it 'Parse an unless statement' do
    token = RubyLint::Parser.new('unless foo; bar; else; baz; end').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :unless

    token.statement.class.should == RubyLint::Token::MethodToken
    token.statement.name.should  == 'foo'

    token.else.class.should == RubyLint::Token::StatementToken
    token.else.type.should  == :else

    token.else.value.class.should    == Array
    token.else.value[0].class.should == RubyLint::Token::MethodToken
    token.else.value[0].name.should  == 'baz'

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == RubyLint::Token::MethodToken
    token.value[0].name.should  == 'bar'
  end

  it 'Parse a single line unless statement' do
    token = RubyLint::Parser.new('foo unless bar').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :unless

    token.statement.class.should == RubyLint::Token::MethodToken
    token.statement.name.should  == 'bar'

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == RubyLint::Token::MethodToken
    token.value[0].name.should  == 'foo'
  end

  it 'Parse a until statement' do
    code = <<-CODE
until foo == bar
  puts 'foo'
end
    CODE

    token = RubyLint::Parser.new(code).parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :until

    token.statement.class.should == RubyLint::Token::Token
    token.statement.type.should  == :binary

    token.statement.value.class.should  == Array
    token.statement.value.length.should == 3

    left, op, right = token.statement.value

    left.class.should == RubyLint::Token::MethodToken
    left.name.should  == 'foo'

    op.should == :==

    right.class.should == RubyLint::Token::MethodToken
    right.name.should  == 'bar'

    token.value.class.should  == Array
    token.value.length.should == 1
  end

  it 'Parse a single line until statement' do
    token = RubyLint::Parser.new('foo until bar').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :until

    token.statement.class.should == RubyLint::Token::MethodToken
    token.statement.name.should  == 'bar'

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should == RubyLint::Token::MethodToken
    token.value[0].name.should  == 'foo'
  end

  it 'Parse a tenary operator' do
    token = RubyLint::Parser.new('statement ? true : false').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :if

    token.statement.class.should  == RubyLint::Token::MethodToken
    token.statement.name.should   == 'statement'
    token.statement.column.should == 0
    token.statement.line.should   == 1

    token.value.class.should  == Array
    token.value.length.should == 1

    token.value[0].class.should  == RubyLint::Token::VariableToken
    token.value[0].name.should   == 'true'
    token.value[0].line.should   == 1
    token.value[0].column.should == 12

    token.else.class.should          == RubyLint::Token::StatementToken
    token.else.statement.nil?.should == true
    token.else.line.should           == 1
    token.else.column.should         == 19

    token.else.value.class.should  == Array
    token.else.value.length.should == 1

    token.else.value[0].class.should == RubyLint::Token::VariableToken
    token.else.value[0].name.should  == 'false'
  end

  it 'Parse a defined? statement' do
    token = RubyLint::Parser.new('defined?(Foobar)').parse[0]

    token.class.should == RubyLint::Token::StatementToken
    token.type.should  == :defined

    token.statement.class.should == RubyLint::Token::VariableToken
    token.statement.type.should  == :constant
    token.statement.name.should  == 'Foobar'
  end
end
