require File.expand_path('../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse an integer' do
    int = Rlint::Parser.new('10').parse[0]

    int.is_a?(Rlint::Token::ValueToken).should == true

    int.line.should   == 1
    int.column.should == 0
    int.type.should   == :integer
    int.value.should  == '10'
  end

  it 'Parse a float' do
    float = Rlint::Parser.new('10.2').parse[0]

    float.is_a?(Rlint::Token::ValueToken).should == true

    float.line.should   == 1
    float.column.should == 0
    float.type.should   == :float
    float.value.should  == '10.2'
  end

  it 'Parse an array' do
    array = Rlint::Parser.new('[10]').parse[0]

    array.is_a?(Rlint::Token::ValueToken).should == true

    array.line.should   == 1
    array.type.should   == :array

    array.value.is_a?(Array).should == true

    array.value[0].is_a?(Rlint::Token::ValueToken).should == true

    array.value[0].type.should  == :integer
    array.value[0].value.should == '10'
  end

  it 'Parse a Hash' do
    hash = Rlint::Parser.new('{"key" => "value"}').parse[0]

    hash.is_a?(Rlint::Token::ValueToken).should == true

    hash.line.should               == 1
    hash.value.is_a?(Array).should == true
    hash.value.length.should       == 1

    pair = hash.value[0]

    pair.is_a?(Rlint::Token::KeyValueToken).should    == true
    pair.key.is_a?(Rlint::Token::ValueToken).should   == true
    pair.value.is_a?(Rlint::Token::ValueToken).should == true

    pair.key.value.should   == 'key'
    pair.value.value.should == 'value'

    pair.key.type.should   == :string
    pair.value.type.should == :string
  end

  it 'Parse a Hash using symbols for the keys' do
    hash = Rlint::Parser.new('{:key => "value"}').parse[0]

    hash.line.should               == 1
    hash.value.is_a?(Array).should == true
    hash.value.length.should       == 1

    pair = hash.value[0]

    pair.is_a?(Rlint::Token::KeyValueToken).should    == true
    pair.key.is_a?(Rlint::Token::ValueToken).should   == true
    pair.value.is_a?(Rlint::Token::ValueToken).should == true

    pair.key.value.should   == 'key'
    pair.value.value.should == 'value'

    pair.key.type.should   == :symbol
    pair.value.type.should == :string
  end

  it 'Parse a string using single quotes' do
    string = Rlint::Parser.new("'hello'").parse[0]

    string.line.should   == 1
    string.column.should == 1
    string.value.should  == 'hello'
    string.type.should   == :string
  end

  it 'Parse a string using double quotes' do
    string = Rlint::Parser.new('"hello"').parse[0]

    string.line.should   == 1
    string.column.should == 1
    string.value.should  == 'hello'
    string.type.should   == :string
  end

  it 'Parse a regular expression' do
    regex = Rlint::Parser.new('/foo/i').parse[0]

    regex.is_a?(Rlint::Token::RegexpToken).should == true

    regex.line.should   == 1
    regex.column.should == 1
    regex.value.should  == 'foo'
    regex.modes.should  == ['i']
  end

  it 'Parse a range' do
    range = Rlint::Parser.new('1..10').parse[0]

    range.is_a?(Rlint::Token::RangeToken).should             == true
    range.start_value.is_a?(Rlint::Token::ValueToken).should == true
    range.end_value.is_a?(Rlint::Token::ValueToken).should   == true

    range.line.should   == 1
    range.column.should == 0

    range.start_value.value.should == '1'
    range.end_value.value.should   == '10'
  end

  it 'Parse an array using %w[]' do
    array = Rlint::Parser.new('%w[10 20]').parse[0]

    array.is_a?(Rlint::Token::ValueToken).should == true

    array.value.length.should == 2
    array.line.should         == 1

    array.value[0].is_a?(Rlint::Token::ValueToken).should == true

    array.value[0].type.should  == :string
    array.value[0].value.should == '10'

    array.value[1].is_a?(Rlint::Token::ValueToken).should == true

    array.value[1].type.should  == :string
    array.value[1].value.should == '20'
  end

  it 'Parse an array using %W[]' do
    array = Rlint::Parser.new('%W[10 20]').parse[0]

    array.is_a?(Rlint::Token::ValueToken).should == true

    array.value.length.should == 2
    array.line.should         == 1

    array.value[0].is_a?(Rlint::Token::ValueToken).should == true

    array.value[0].type.should  == :string
    array.value[0].value.should == '10'

    array.value[1].is_a?(Rlint::Token::ValueToken).should == true

    array.value[1].type.should  == :string
    array.value[1].value.should == '20'
  end

  it 'Parse a string using %q{}' do
    string = Rlint::Parser.new('%q{hello}').parse[0]

    string.line.should   == 1
    string.column.should == 3
    string.value.should  == 'hello'
    string.type.should   == :string
  end

  it 'Parse a string using %Q{}' do
    string = Rlint::Parser.new('%Q{hello}').parse[0]

    string.line.should   == 1
    string.column.should == 3
    string.value.should  == 'hello'
    string.type.should   == :string
  end

  it 'Parse a regular expression using %r{}' do
    regex = Rlint::Parser.new('%r{foo}i').parse[0]

    regex.is_a?(Rlint::Token::RegexpToken).should == true

    regex.line.should   == 1
    regex.column.should == 3
    regex.value.should  == 'foo'
    regex.modes.should  == ['i']
  end

  it 'Parse a method' do
    m = Rlint::Parser.new('def example; return 10; end').parse[0]

    m.is_a?(Rlint::Token::MethodDefinitionToken).should == true

    m.line.should   == 1
    m.column.should == 4

    m.value.is_a?(Array).should                  == true
    m.value[0].is_a?(Rlint::Token::Token).should == true
    m.value[0].name.should                       == 'return'

    m.value[0].parameters.is_a?(Array).should                       == true
    m.value[0].parameters[0].is_a?(Rlint::Token::ValueToken).should == true
    m.value[0].parameters[0].value.should                           == '10'
  end

  it 'Parse a method with parameters' do
    m = Rlint::Parser.new('def example(n = 10); return n; end').parse[0]

    m.is_a?(Rlint::Token::MethodDefinitionToken).should == true

    m.parameters.is_a?(Array).should == true
    m.parameters.length.should       == 1

    param = m.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should    == true
    param.value.is_a?(Rlint::Token::ValueToken).should == true

    param.value.type.should  == :integer
    param.value.value.should == '10'
  end

  it 'Parse a method with two parameters' do
    m = Rlint::Parser.new('def example(a = 1, b = "2"); return a; end').parse[0]

    m.is_a?(Rlint::Token::MethodDefinitionToken).should == true

    m.parameters.is_a?(Array).should == true
    m.parameters.length.should       == 2

    m.parameters[0].value.type.should == :integer
    m.parameters[1].value.type.should == :string
  end

  it 'Parse a method with a block parameter' do
    m = Rlint::Parser.new('def example(&block); block.call; end').parse[0]

    m.is_a?(Rlint::Token::MethodDefinitionToken).should == true

    m.parameters.is_a?(Array).should == true
    m.parameters.length.should       == 1

    param = m.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true

    param.name.should           == 'block'
    param.type.should           == :local_variable
    param.block_variable.should == true
  end

  it 'Parse a method with a rest parameter' do
    m = Rlint::Parser.new('def example(*args); args; end').parse[0]

    m.is_a?(Rlint::Token::MethodDefinitionToken).should == true

    m.parameters.is_a?(Array).should == true
    m.parameters.length.should       == 1

    param = m.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true

    param.name.should          == 'args'
    param.type.should          == :local_variable
    param.rest_variable.should == true
  end

  it 'Parse a class' do
    klass = Rlint::Parser.new('class Example; end').parse[0]

    klass.is_a?(Rlint::Token::ClassToken).should == true

    klass.name.should   == 'Example'
    klass.parent.should == nil
  end

  it 'Parse a class with a parent class' do
    klass = Rlint::Parser.new('class Example < Object; end').parse[0]

    klass.is_a?(Rlint::Token::ClassToken).should == true

    klass.name.should   == 'Example'
    klass.parent.should == 'Object'
  end

  it 'Parse a module' do
    mod = Rlint::Parser.new('module Example; end').parse[0]

    mod.is_a?(Rlint::Token::ModuleToken).should == true

    mod.name.should   == 'Example'
    mod.line.should   == 1
    mod.column.should == 7
  end

  it 'Parse a class inside a module' do
    mod = Rlint::Parser.new('module A; class B; end; end').parse[0]

    mod.is_a?(Rlint::Token::ModuleToken).should == true

    mod.name.should               == 'A'
    mod.value.is_a?(Array).should == true
    mod.value.length.should       == 1

    klass = mod.value[0]

    klass.name.should == 'B'
  end

  it 'Parse a class inside a class' do
    klass = Rlint::Parser.new('class A; class B; end; end').parse[0]

    klass.is_a?(Rlint::Token::ClassToken).should == true

    klass.name.should               == 'A'
    klass.value.is_a?(Array).should == true
    klass.value.length.should       == 1

    sub_klass = klass.value[0]

    sub_klass.name.should == 'B'
  end

  it 'Parse a class with multiple name segments' do
    klass = Rlint::Parser.new('class A::B; end').parse[0]

    klass.name.should   == 'A::B'
    klass.line.should   == 1
    klass.column.should == 6
  end

  it 'Parse a module with multiple name segments' do
    mod = Rlint::Parser.new('module A::B; end').parse[0]

    mod.name.should   == 'A::B'
    mod.line.should   == 1
    mod.column.should == 7
  end

  it 'Parse a proc' do
    found = Rlint::Parser.new('proc { |n| n }').parse[0]

    found.is_a?(Rlint::Token::MethodToken).should      == true
    found.block.is_a?(Rlint::Token::BlockToken).should == true

    found.block.parameters.is_a?(Array).should == true
    found.block.parameters.length.should       == 1

    param = found.block.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true
    param.value.nil?.should                         == true

    found.block.value.is_a?(Array).should == true
    found.block.value.length.should       == 1
  end

  it 'Parse a proc using do/end instead of braces' do
    found = Rlint::Parser.new('proc do |n|; n; end').parse[0]

    found.is_a?(Rlint::Token::MethodToken).should == true

    found.block.parameters.is_a?(Array).should == true
    found.block.parameters.length.should       == 1

    param = found.block.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true
    param.value.nil?.should                         == true

    found.block.value.is_a?(Array).should == true
    found.block.value.length.should       == 1
  end

  it 'Parse a lambda using braces' do
    found = Rlint::Parser.new('lambda { |n| n }').parse[0]

    found.is_a?(Rlint::Token::MethodToken).should == true

    found.block.parameters.is_a?(Array).should == true
    found.block.parameters.length.should       == 1

    param = found.block.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true
    param.value.nil?.should                         == true

    found.block.value.is_a?(Array).should == true
    found.block.value.length.should       == 1
  end

  it 'Parse a lambda using do/end' do
    found = Rlint::Parser.new('lambda do |n|; n; end').parse[0]

    found.is_a?(Rlint::Token::MethodToken).should == true

    found.block.parameters.is_a?(Array).should == true
    found.block.parameters.length.should       == 1

    param = found.block.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true
    param.value.nil?.should                         == true

    found.block.value.is_a?(Array).should == true
    found.block.value.length.should       == 1
  end

  # The dash rocket isn't parsed as a method, thus the returned token is a
  # BlockToken and not a MethodToken instance.
  it 'Parse a lambda using the dashrocket syntax' do
    found = Rlint::Parser.new('-> n { n }').parse[0]

    found.is_a?(Rlint::Token::BlockToken).should == true

    found.parameters.is_a?(Array).should == true
    found.parameters.length.should       == 1

    param = found.parameters[0]

    param.is_a?(Rlint::Token::VariableToken).should == true
    param.value.nil?.should                         == true

    found.value.is_a?(Array).should == true
    found.value.length.should       == 1
  end

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

  it 'Parse the assignment of an instance variable' do
    var = Rlint::Parser.new('@number = 10').parse[0]

    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == '@number'
    var.type.should   == :instance_variable
    var.line.should   == 1
    var.column.should == 0

    var.value.is_a?(Rlint::Token::ValueToken).should == true

    var.value.type.should  == :integer
    var.value.value.should == '10'
  end

  it 'Parse the assignment and reference of an instance variable' do
    var = Rlint::Parser.new("@number = 10\n@number").parse[1]

    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == '@number'
    var.type.should   == :instance_variable
    var.line.should   == 2
    var.column.should == 0
  end

  it 'Parse the assignment of a class variable' do
    var = Rlint::Parser.new('@@number = 10').parse[0]

    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == '@@number'
    var.type.should   == :class_variable
    var.line.should   == 1
    var.column.should == 0

    var.value.is_a?(Rlint::Token::ValueToken).should == true

    var.value.type.should  == :integer
    var.value.value.should == '10'
  end

  it 'Parse the assignment and reference of a class variable' do
    var = Rlint::Parser.new("@@number = 10\n@@number").parse[1]

    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == '@@number'
    var.type.should   == :class_variable
    var.line.should   == 2
    var.column.should == 0
  end

  it 'Parse the assignment of a global variable' do
    var = Rlint::Parser.new('$number = 10').parse[0]

    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == '$number'
    var.type.should   == :global_variable
    var.line.should   == 1
    var.column.should == 0

    var.value.is_a?(Rlint::Token::ValueToken).should == true

    var.value.type.should  == :integer
    var.value.value.should == '10'
  end

  it 'Parse the assignment and reference of a global variable' do
    var = Rlint::Parser.new("$number = 10\n$number").parse[1]

    var.is_a?(Rlint::Token::VariableToken).should == true

    var.name.should   == '$number'
    var.type.should   == :global_variable
    var.line.should   == 2
    var.column.should == 0
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

  it 'Call a class method without parenthesis' do
    call = Rlint::Parser.new('Kernel.puts "hello"').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should            == true
    call.receiver.is_a?(Rlint::Token::VariableToken).should == true

    call.receiver.name.should == 'Kernel'
    call.receiver.type.should == :constant

    call.separator.should == :'.'
    call.name.should      == 'puts'

    call.parameters.is_a?(Array).should == true

    param = call.parameters[0]

    param.is_a?(Rlint::Token::ValueToken).should == true

    param.type.should  == :string
    param.value.should == 'hello'
  end

  it 'Call a class method wit parenthesis' do
    call = Rlint::Parser.new('Kernel.puts("hello")').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should            == true
    call.receiver.is_a?(Rlint::Token::VariableToken).should == true

    call.receiver.name.should == 'Kernel'
    call.receiver.type.should == :constant

    call.separator.should == :'.'
    call.name.should      == 'puts'

    call.parameters.is_a?(Array).should == true

    param = call.parameters[0]

    param.is_a?(Rlint::Token::ValueToken).should == true

    param.type.should  == :string
    param.value.should == 'hello'
  end

  it 'Call an instance method without parenthesis' do
    call = Rlint::Parser.new('$stdout.puts "hello"').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should            == true
    call.receiver.is_a?(Rlint::Token::VariableToken).should == true

    call.receiver.name.should == '$stdout'
    call.receiver.type.should == :global_variable

    call.separator.should == :'.'
    call.name.should      == 'puts'

    call.parameters.is_a?(Array).should == true

    param = call.parameters[0]

    param.is_a?(Rlint::Token::ValueToken).should == true

    param.type.should  == :string
    param.value.should == 'hello'
  end

  it 'Chain a set of method calls' do
    call = Rlint::Parser.new('"HELLO".downcase.capitalize').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should == true
    call.name.should                             == 'capitalize'

    call.receiver.is_a?(Rlint::Token::MethodToken).should == true
    call.receiver.name.should                             == 'downcase'

    origin = call.receiver.receiver

    origin.is_a?(Rlint::Token::ValueToken).should == true
    origin.type.should                            == :string
  end

  it 'Call a class method on an object using a block' do
    call = Rlint::Parser.new('Proc.new { |n| n * 2 }').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should            == true
    call.receiver.is_a?(Rlint::Token::VariableToken).should == true
    call.block.is_a?(Rlint::Token::BlockToken).should       == true

    call.name.should      == 'new'
    call.separator.should == :'.'

    call.receiver.name.should == 'Proc'
    call.receiver.type.should == :constant
  end

  it 'Call an instance method on an object using a block' do
    call = Rlint::Parser.new('[10].map { |i| i * 2 }').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should      == true
    call.block.is_a?(Rlint::Token::BlockToken).should == true

    call.block.parameters.is_a?(Array).should == true
    call.block.parameters.length.should       == 1
  end

  it 'Call an instance method on an object using a block using do/end' do
    call = Rlint::Parser.new('[10].map do |i|; i * 2; end').parse[0]

    call.is_a?(Rlint::Token::MethodToken).should      == true
    call.block.is_a?(Rlint::Token::BlockToken).should == true

    call.block.parameters.is_a?(Array).should == true
    call.block.parameters.length.should       == 1
  end

  it 'Parse invalid Ruby code' do
    error = should.raise?(Rlint::ParserError) do
      Rlint::Parser.new('def; end').parse
    end

    error.line.should   == 1
    error.column.should == 4
    error.file.should   == '(rlint)'
  end
end
