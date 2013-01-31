require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing until statements' do
  should 'parse a multi line statement' do
    code = <<-CODE
until foo
  bar
end
    CODE

    parse(code).should == s(
      :until,
      s(:method, 'foo', s(:arguments), nil, nil),
      [s(:method, 'bar', s(:arguments), nil, nil)]
    )
  end

  should 'parse a single line statement' do
    parse('bar until foo').should == s(
      :until,
      s(:method, 'foo', s(:arguments), nil, nil),
      [s(:method, 'bar', s(:arguments), nil, nil)]
    )
  end
end
