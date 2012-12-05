require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing unless statements' do
  it 'Parse a multi line unless statement' do
    code = <<-CODE
unless bar
  foo
end
    CODE

    parse(code).should == s(
      :unless,
      s(:method, 'bar'),
      [s(:method, 'foo')]
    )
  end

  it 'Parse a multi line unless statement with an else statement' do
    code = <<-CODE
unless bar
  foo
else
  baz
end
    CODE

    parse(code).should == s(
      :unless,
      s(:method, 'bar'),
      [s(:method, 'foo')],
      s(:else, s(:method, 'baz'))
    )
  end

  it 'Parse a single line unless statement' do
    parse('foo unless bar').should == s(
      :unless,
      s(:method, 'bar'),
      [s(:method, 'foo')]
    )
  end
end
