require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing if statements' do
  should 'parse a multi line statement' do
    code = <<-CODE
if foo
  bar
elsif first
  first
elsif second
  second
else
  baz
end
    CODE

    parse(code).should == s(
      :if,
      s(:method, 'foo', [], nil, nil),
      [s(:method, 'bar', [], nil, nil)],
      [
        s(
          :elsif,
          s(:method, 'first', [], nil, nil),
          [s(:method, 'first', [], nil, nil)]
        ),
        s(
          :elsif,
          s(:method, 'second', [], nil, nil),
          [s(:method, 'second', [], nil, nil)]
        ),
      ],
      s(:else, s(:method, 'baz', [], nil, nil))
    )
  end

  should 'parse a single line statement' do
    parse('bar if foo').should == s(
      :if,
      s(:method, 'foo', [], nil, nil),
      [s(:method, 'bar', [], nil, nil)],
      [],
      nil
    )
  end
end
