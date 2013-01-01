require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing unless statements' do
  should 'parse a multi line statement' do
    code = <<-CODE
unless bar
  foo
end
    CODE

    parse(code).should == s(
      :unless,
      s(:method, 'bar', [], nil, nil),
      [s(:method, 'foo', [], nil, nil)]
    )
  end

  should 'parse a multi line statement with an else statement' do
    code = <<-CODE
unless bar
  foo
else
  baz
end
    CODE

    parse(code).should == s(
      :unless,
      s(:method, 'bar', [], nil, nil),
      [s(:method, 'foo', [], nil, nil)],
      s(:else, s(:method, 'baz', [], nil, nil))
    )
  end

  should 'parse a single line statement' do
    parse('foo unless bar').should == s(
      :unless,
      s(:method, 'bar', [], nil, nil),
      [s(:method, 'foo', [], nil, nil)]
    )
  end
end
