require File.expand_path('../../../helper', __FILE__)

describe 'Parsing method calls' do
  it 'Call a method without parameters' do
    parse('example').should == s(:method, 'example')
  end

  it 'Call a method with two parameters' do
    parse('example "foo", 10').should == s(
      :method,
      'example',
      [s(:string, 'foo'), s(:integer, '10')]
    )
  end

  it 'Call a method with parenthesis and two parameters' do
    parse('example("foo", 10)').should == s(
      :method,
      'example',
      [s(:string, 'foo'), s(:integer, '10')]
    )
  end

  it 'Call proc with a block using curly braces' do
    parse('proc { |example| example }').should == s(
      :method,
      'proc',
      [],
      s(
        :block,
        [s(:local_variable, 'example')],
        [s(:local_variable, 'example')]
      )
    )
  end

  it 'Call proc with a block using do/end' do
    parse('proc do |example|; example; end').should == s(
      :method,
      'proc',
      [],
      s(
        :block,
        [s(:local_variable, 'example')],
        [s(:local_variable, 'example')]
      )
    )
  end

  it 'Call lambda with a block using curly braces' do
    parse('lambda { |example| example }').should == s(
      :method,
      'lambda',
      [],
      s(
        :block,
        [s(:local_variable, 'example')],
        [s(:local_variable, 'example')]
      )
    )
  end

  it 'Call a method with a parameter and a block' do
    parse('foo(10) { |name| name }').should == s(
      :method,
      'foo',
      [s(:integer, '10')],
      s(
        :block,
        [s(:local_variable, 'name')],
        [s(:local_variable, 'name')]
      )
    )
  end

  it 'Call a bang! method' do
    parse('foo!').should == s(:method, 'foo!', [])
  end

  it 'Call a predicate method' do
    parse('foo?').should == s(:method, 'foo?', [])
  end

  it 'Call a method on an object' do
    parse('String.new').should == s(
      :method,
      'new',
      [],
      nil,
      s(:constant, 'String')
    )
  end

  it 'Call a method on an object with a parameter' do
    parse('String.new(10)').should == s(
      :method,
      'new',
      [s(:integer, '10')],
      nil,
      s(:constant, 'String')
    )
  end

  it 'Call a method on an object with a parameter and without parenthesis' do
    parse('String.new 10').should == s(
      :method,
      'new',
      [s(:integer, '10')],
      nil,
      s(:constant, 'String')
    )
  end

  it 'Call a method on an object with a parameter and a block' do
    parse('String.new(10) { |name| name }').should == s(
      :method,
      'new',
      [s(:integer, '10')],
      s(:block, [s(:local_variable, 'name')], [s(:local_variable, 'name')]),
      s(:constant, 'String')
    )
  end

  it 'Call a method with a Hash as the parameter' do
    parse('foo(:name => "Ruby")').should == s(
      :method,
      'foo',
      [s(:hash, s(:key_value, s(:symbol, 'name'), s(:string, 'Ruby')))]
    )
  end
end
