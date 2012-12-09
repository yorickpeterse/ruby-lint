require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing while statements' do
  it 'Parse a multi line while statement' do
    code = <<-CODE
while foo
  bar
end
    CODE

    parse(code).should == s(
      :while,
      s(:method, 'foo'),
      [s(:method, 'bar')]
    )
  end

  it 'Parse a single line while statement' do
    parse('bar while foo').should == s(
      :while,
      s(:method, 'foo'),
      [s(:method, 'bar')]
    )
  end
end