require File.expand_path('../../../helper', __FILE__)

describe 'Parsing method calls' do
  it 'Call a method without parameters' do
    parse('example').should == s(:method, s(:identifier, 'example'))
  end

  it 'Call a method with two parameters' do
    parse('example "foo", 10').should == s(
      :method,
      s(:identifier, 'example'),
      [s(:string, 'foo'), s(:integer, '10')]
    )
  end

  it 'Call a method with parenthesis and two parameters' do
    parse('example("foo", 10)').should == s(
      :method,
      s(:identifier, 'example'),
      [s(:string, 'foo'), s(:integer, '10')]
    )
  end

  it 'Call proc with a block using curly braces' do
    parse('proc { |example| example }').should == s(
      :method,
      s(:identifier, 'proc'),
      [],
      s(:block, [s(:identifier, 'example')], [s(:local_variable, 'example')])
    )
  end

  it 'Call proc with a block using do/end' do
    parse('proc do |example|; example; end').should == s(
      :method,
      s(:identifier, 'proc'),
      [],
      s(:block, [s(:identifier, 'example')], [s(:local_variable, 'example')])
    )
  end

  it 'Call lambda with a block using curly braces' do
    parse('lambda { |example| example }').should == s(
      :method,
      s(:identifier, 'lambda'),
      [],
      s(:block, [s(:identifier, 'example')], [s(:local_variable, 'example')])
    )
  end

  it 'Call a method with a parameter and a block' do
    parse('foo(10) { |name| name }').should == s(
      :method,
      s(:identifier, 'foo'),
      [s(:integer, '10')],
      s(:block, [s(:identifier, 'name')], [s(:local_variable, 'name')])
    )
  end
end
