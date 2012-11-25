require File.expand_path('../../../helper', __FILE__)

describe 'Parsing method definitions' do
  it 'Define a method without parameters' do
    parse('def example_method; 10; end').should == s(
      :method_definition,
      'example_method',
      [],
      nil,
      s(:body, [s(:integer, '10')])
    )
  end

  it 'Define a method with one required parameter' do
    parse('def example_method(name); name; end').should == s(
      :method_definition,
      'example_method',
      [[s(:local_variable, 'name')]],
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  it 'Define a method with one required and optional parameter' do
    parse('def example_method(name, number = 10); name; end').should == s(
      :method_definition,
      'example_method',
      [
        [s(:local_variable, 'name')],
        [s(:local_variable, 'number', s(:integer, '10'))]
      ],
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  it 'Define a method with one required, optional and rest parameter' do
    code = <<-CODE
def example_method(name, number = 10, *rest)
  name
end
    CODE

    parse(code).should == s(
      :method_definition,
      'example_method',
      [
        [s(:local_variable, 'name')],
        [s(:local_variable, 'number', s(:integer, '10'))],
        s(:local_variable, 'rest')
      ],
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  it 'Define a method with all parameter types' do
    code = <<-CODE
def example_method(name, number = 10, *rest, more, &block)
  name
end
    CODE

    parse(code).should == s(
      :method_definition,
      'example_method',
      [
        [s(:local_variable, 'name')],
        [s(:local_variable, 'number', s(:integer, '10'))],
        s(:local_variable, 'rest'),
        [s(:local_variable, 'more')],
        s(:local_variable, 'block')
      ],
      nil,
      s(:body, [s(:local_variable, 'name')])
    )
  end

  it 'Define a class method on a receiver' do
    parse('def String.example_method; end').should == s(
      :method_definition,
      'example_method',
      [],
      s(:constant, 'String'),
      s(:body, [])
    )
  end
end
