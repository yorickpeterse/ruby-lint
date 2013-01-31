require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing for loops' do
  should 'parse a loop with a single variable' do
    code = <<-CODE
for foo in bar
  foo
end
    CODE

    parse(code).should == s(
      :for,
      [s(:local_variable, 'foo')],
      s(:method, 'bar', s(:arguments), nil, nil),
      [s(:local_variable, 'foo')]
    )
  end

  should 'parse a loop with two variables' do
    code = <<-CODE
for key, value in bar
  key
  value
end
    CODE

    parse(code).should == s(
      :for,
      [s(:local_variable, 'key'), s(:local_variable, 'value')],
      s(:method, 'bar', s(:arguments), nil, nil),
      [s(:local_variable, 'key'), s(:local_variable, 'value')]
    )
  end
end
