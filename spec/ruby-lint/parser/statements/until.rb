require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing until statements' do
  it 'Parse a multi line until statement' do
    code = <<-CODE
until foo
  bar
end
    CODE

    parse(code).should == s(
      :until,
      s(:method, 'foo'),
      [s(:method, 'bar')]
    )
  end

  it 'Parse a single line until statement' do
    parse('bar until foo').should == s(
      :until,
      s(:method, 'foo'),
      [s(:method, 'bar')]
    )
  end
end
