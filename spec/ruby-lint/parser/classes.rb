require File.expand_path('../../../helper', __FILE__)

describe 'Parsing class definitions' do
  should 'parse an empty class' do
    parse('class Example; end').should == s(
      :class,
      s(:constant, 'Example'),
      nil,
      s(:body, [])
    )
  end

  should 'parse a class with a parent class' do
    parse('class Example < Foo; end').should == s(
      :class,
      s(:constant, 'Example'),
      s(:constant, 'Foo'),
      s(:body, [])
    )
  end

  should 'parse a class with a method' do
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
        [
          s(
            :method_definition,
            'example_method',
            [nil, nil, nil, nil, nil],
            nil,
            s(:body, [])
          )
        ]
      )
    )
  end

  should 'parse a class nested in another class' do
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

  should 'parse a class with the name as a constant path' do
    parse('class A::B < D::E; end').should == s(
      :class,
      s(:constant_path, s(:constant, 'A'), s(:constant, 'B')),
      s(:constant_path, s(:constant, 'D'), s(:constant, 'E')),
      s(:body, [])
    )
  end

  should 'parse a class with a top level name' do
    parse('class ::A; end').should == s(
      :class,
      s(:constant, 'A'),
      nil,
      s(:body, [])
    )
  end

  should 'parse `class << self` blocks' do
    code = <<-CODE
class A
  class << self
    puts
  end
end
    CODE

    parse(code).should == s(
      :class,
      s(:constant, 'A'),
      nil,
      s(
        :body,
        [
          s(
            :sclass,
            s(:keyword, 'self'),
            s(:body, [s(:method, 'puts', [], nil, nil)])
          )
        ]
      )
    )
  end
end
