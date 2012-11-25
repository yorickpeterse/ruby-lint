require File.expand_path('../../../helper', __FILE__)

describe 'Parsing class definitions' do
  it 'Empty class without an explicitly defined parent class' do
    parse('class Example; end').should == s(
      :class,
      s(:constant, 'Example'),
      nil,
      s(:body, [])
    )
  end

  it 'Empty class with an explicitly defined parent class' do
    parse('class Example < Foo; end').should == s(
      :class,
      s(:constant, 'Example'),
      s(:constant, 'Foo'),
      s(:body, [])
    )
  end

  it 'Class with a single, public method' do
    code = <<-CODE
class Example < Foo
  def example_method

  end
end
    CODE

    parse(code).should == s(
      :class,
      s(:constant, 'Example'),
      s(:constant, 'Foo'),
      s(
        :body,
        [s(:method_definition, 'example_method', [], nil, s(:body, []))]
      )
    )
  end

  it 'Class inside another class' do
    code = <<-CODE
class First
  class Second

  end
end
    CODE

    parse(code).should == s(
      :class,
      s(:constant, 'First'),
      nil,
      s(:body, [s(:class, s(:constant, 'Second'), nil, s(:body, []))])
    )
  end

  it 'Class with a constant path as the name' do
    parse('class A::B < D::E; end').should == s(
      :class,
      s(:constant_path, s(:constant, 'A'), s(:constant, 'B')),
      s(:constant_path, s(:constant, 'D'), s(:constant, 'E')),
      s(:body, [])
    )
  end
end
