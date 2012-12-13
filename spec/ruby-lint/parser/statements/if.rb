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
      s(:method, 'foo'),
      [s(:method, 'bar')],
      [
        s(:elsif, s(:method, 'first'), [s(:method, 'first')]),
        s(:elsif, s(:method, 'second'), [s(:method, 'second')]),
      ],
      s(:else, s(:method, 'baz'))
    )
  end

  should 'parse a single line statement' do
    parse('bar if foo').should == s(
      :if,
      s(:method, 'foo'),
      [s(:method, 'bar')],
      [],
      nil
    )
  end
end
