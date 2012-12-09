require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing of begin and rescue statements' do
  it 'Parse a multi line begin/rescue statement' do
    code = <<-CODE
begin
  rescue_body
rescue Foo
  foo_body
rescue Bar, Baz => e
  bar_baz_body
else
  else_body
ensure
  ensure_body
end
    CODE

    parse(code).should == s(
      :begin,
      s(
        :body,
        [s(:method, 'rescue_body')],
        [
          s(:rescue, nil, [s(:constant, 'Foo')], nil, [s(:method, 'foo_body')]),
          s(
            :rescue,
            nil,
            [s(:constant, 'Bar'), s(:constant, 'Baz')],
            s(:local_variable, 'e'),
            [s(:method, 'bar_baz_body')]
          )
        ],
        s(:else, s(:method, 'else_body')),
        s(:ensure, s(:method, 'ensure_body'))
      )
    )
  end

  it 'Parse a single line rescue statement' do
    parse('foo rescue bar').should == s(
      :rescue,
      s(:method, 'foo'),
      nil,
      nil,
      s(:method, 'bar')
    )
  end
end
