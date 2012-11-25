require File.expand_path('../../../helper', __FILE__)

describe 'Parsing module definitions' do
  it 'Empty module' do
    parse('module Example; end').should == s(
      :module,
      s(:constant, 'Example'),
      s(:body, [])
    )
  end

  it 'Module with a single, public method' do
    code = <<-CODE
module Example
  def example_method

  end
end
    CODE

    parse(code).should == s(
      :module,
      s(:constant, 'Example'),
      s(:body, [s(:method_definition, 'example_method', [], nil, s(:body, []))])
    )
  end

  it 'Module inside a module' do
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

  it 'Module with a constant path as the name' do
    parse('module Foo::Bar; end').should == s(
      :module,
      s(:constant_path, s(:constant, 'Foo'), s(:constant, 'Bar')),
      s(:body, [])
    )
  end

  it 'Module with the name as a top level constant' do
    parse('module ::Foo; end').should == s(
      :module,
      s(:constant, 'Foo'),
      s(:body, [])
    )
  end
end
