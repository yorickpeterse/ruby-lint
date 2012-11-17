require File.expand_path('../../../../helper', __FILE__)

describe 'Analyze code that defines data in a begin/rescue statement' do
  extend RubyLint::Spec::Helper

  it 'Define two class methods on IO' do
    tokens   = parse_file(File.join(RubyLint::FIXTURES, 'stdlib/size.rb'))
    iterator = create_iterator

    iterator.run(tokens)

    scope = iterator.storage[:scope]
    io    = scope.lookup(:constant, 'IO')

    io.lookup(:method, 'default_console_size') \
      .class \
      .should == RubyLint::Definition

    io.lookup(:method, 'console_size') \
      .class \
      .should == RubyLint::Definition
  end
end
