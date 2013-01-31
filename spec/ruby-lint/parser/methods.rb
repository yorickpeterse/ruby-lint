require File.expand_path('../../../helper', __FILE__)

describe 'Parsing method calls' do
  should 'parse a method without parameters' do
    parse('example').should == s(
      :method,
      'example',
      s(:arguments),
      nil,
      nil
    )
  end

  should 'parse a method with two parameters' do
    parse('example "foo", 10').should == s(
      :method,
      'example',
      s(
        :arguments,
        s(:argument, s(:string, 'foo')),
        s(:argument, s(:integer, '10'))
      ),
      nil,
      nil
    )
  end

  should 'parse a method with parenthesis and two parameters' do
    parse('example("foo", 10)').should == s(
      :method,
      'example',
      s(
        :arguments,
        s(:argument, s(:string, 'foo')),
        s(:argument, s(:integer, '10'))
      ),
      nil,
      nil
    )
  end

  should 'parse a proc with a block without parameters' do
    parse('proc { }').should == s(
      :method,
      'proc',
      s(:arguments),
      s(:block, s(:arguments), s(:body, [])),
      nil
    )
  end

  should 'parse a proc with a block using curly braces' do
    parse('proc { |example| example }').should == s(
      :method,
      'proc',
      s(:arguments),
      s(
        :block,
        s(:arguments, s(:argument, s(:local_variable, 'example'))),
        s(:body, [s(:local_variable, 'example')])
      ),
      nil
    )
  end

  should 'parse a proc with a block using do/end' do
    parse('proc do |example|; example; end').should == s(
      :method,
      'proc',
      s(:arguments),
      s(
        :block,
        s(:arguments, s(:argument, s(:local_variable, 'example'))),
        s(:body, [s(:local_variable, 'example')])
      ),
      nil
    )
  end

  should 'parse a lambda with a block using curly braces' do
    parse('lambda { |example| example }').should == s(
      :method,
      'lambda',
      s(:arguments),
      s(
        :block,
        s(:arguments, s(:argument, s(:local_variable, 'example'))),
        s(:body, [s(:local_variable, 'example')])
      ),
      nil
    )
  end

  should 'parse a method with a parameter and a block' do
    parse('foo(10) { |name| name }').should == s(
      :method,
      'foo',
      s(:arguments, s(:argument,  s(:integer, '10'))),
      s(
        :block,
        s(:arguments, s(:argument, s(:local_variable, 'name'))),
        s(:body, [s(:local_variable, 'name')])
      ),
      nil
    )
  end

  should 'parse a bang! method' do
    parse('foo!').should == s(:method, 'foo!', s(:arguments), nil, nil)
  end

  should 'parse a predicate method' do
    parse('foo?').should == s(:method, 'foo?', s(:arguments), nil, nil)
  end

  should 'parse a method call on an object' do
    parse('String.new').should == s(
      :method,
      'new',
      s(:arguments),
      nil,
      s(:constant, 'String')
    )
  end

  should 'parse a method call on an object with a parameter' do
    parse('String.new(10)').should == s(
      :method,
      'new',
      s(:arguments, s(:argument,  s(:integer, '10'))),
      nil,
      s(:constant, 'String')
    )
  end

  should 'parse a method call on an object without parenthesis' do
    parse('String.new 10').should == s(
      :method,
      'new',
      s(:arguments, s(:argument,  s(:integer, '10'))),
      nil,
      s(:constant, 'String')
    )
  end

  should 'parse a method call on an object with a parameter and a block' do
    parse('String.new(10) { |name| name }').should == s(
      :method,
      'new',
      s(:arguments, s(:argument,  s(:integer, '10'))),
      s(
        :block,
        s(:arguments, s(:argument, s(:local_variable, 'name'))),
        s(:body, [s(:local_variable, 'name')])
      ),
      s(:constant, 'String')
    )
  end

  should 'parse a method call with a Hash as the parameter' do
    parse('foo(:name => "Ruby")').should == s(
      :method,
      'foo',
      s(
        :arguments,
        s(
          :argument,
          s(:hash, s(:key_value, s(:symbol, 'name'), s(:string, 'Ruby')))
        )
      ),
      nil,
      nil
    )
  end

  should 'parse a method call with a block parameter' do
    parse('foo(&bar)').should == s(
      :method,
      'foo',
      s(:arguments, s(:block_argument, s(:method, 'bar', s(:arguments), nil, nil))),
      nil,
      nil
    )
  end
end
