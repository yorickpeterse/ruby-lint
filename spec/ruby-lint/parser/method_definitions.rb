require File.expand_path('../../../helper', __FILE__)

describe 'Parsing method definitions' do
  should 'parse a method without parameters' do
    parse('def example_method; 10; end').should == s(
      :method_definition,
      'example_method',
      s(:arguments),
      nil,
      s(:body, [s(:integer, '10')])
    )
  end

  should 'parse a method with one required parameter' do
    parse('def example_method(name); name; end').should == s(
      :method_definition,
      'example_method',
      s(:arguments, s(:required_arguments, s(:local_variable, 'name'))),
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  should 'parse a method with one required and optional parameter' do
    parse('def example_method(name, number = 10); name; end').should == s(
      :method_definition,
      'example_method',
      s(
        :arguments,
        s(:required_arguments, s(:local_variable, 'name')),
        s(
          :optional_arguments,
          s(:local_variable, 'number', s(:integer, '10'))
        )
      ),
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  should 'parse a method with one required and a rest parameter' do
    code = <<-CODE
def example_method(name, *rest)
  name
end
    CODE

    parse(code).should == s(
      :method_definition,
      'example_method',
      s(
        :arguments,
        s(:required_arguments, s(:local_variable, 'name')),
        s(:rest_argument, s(:local_variable, 'rest'))
      ),
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  should 'parse a method with one required, optional and rest parameter' do
    code = <<-CODE
def example_method(name, number = 10, *rest)
  name
end
    CODE

    parse(code).should == s(
      :method_definition,
      'example_method',
      s(
        :arguments,
        s(:required_arguments, s(:local_variable, 'name')),
        s(:optional_arguments, s(:local_variable, 'number', s(:integer, '10'))),
        s(:rest_argument, s(:local_variable, 'rest'))
      ),
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  should 'parse a method with all parameter types' do
    code = <<-CODE
def example_method(name, number = 10, *rest, more, &block)
  name
end
    CODE

    parse(code).should == s(
      :method_definition,
      'example_method',
      s(
        :arguments,
        s(:required_arguments, s(:local_variable, 'name')),
        s(:optional_arguments, s(:local_variable, 'number', s(:integer, '10'))),
        s(:rest_argument, s(:local_variable, 'rest')),
        s(:more_arguments, s(:local_variable, 'more')),
        s(:block_argument, s(:local_variable, 'block'))
      ),
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  should 'parse defining a class method on a receiver' do
    parse('def String.example_method; end').should == s(
      :method_definition,
      'example_method',
      s(:arguments),
      s(:constant, 'String'),
      s(:body, [])
    )
  end
end
