require File.expand_path('../../../helper', __FILE__)

describe 'Parsing module definitions' do
  should 'parse an empty module' do
    parse('module Example; end').should == s(
      :module,
      s(:constant, 'Example'),
      s(:body, [])
    )
  end

  should 'parse a module with a method' do
    code = <<-CODE
module Example
  def example_method

  end
end
    CODE

    parse(code).should == s(
      :module,
      s(:constant, 'Example'),
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

  should 'parse a nested module' do
    code = <<-CODE
module A
  module B

  end
end
    CODE

    parse(code).should == s(
      :module,
      s(:constant, 'A'),
      s(:body, [s(:module, s(:constant, 'B'), s(:body, []))])
    )
  end

  should 'parse a module with a constant path as the name' do
    parse('module Foo::Bar; end').should == s(
      :module,
      s(:constant_path, s(:constant, 'Foo'), s(:constant, 'Bar')),
      s(:body, [])
    )
  end

  should 'parse a module with a top level name' do
    parse('module ::Foo; end').should == s(
      :module,
      s(:constant, 'Foo'),
      s(:body, [])
    )
  end
end
