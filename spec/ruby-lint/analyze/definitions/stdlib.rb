require File.expand_path('../../../../helper', __FILE__)

describe 'RubyLint::Analyze::Definitions: stdlib' do
  it 'Build a list of definitions for un.rb' do
    code     = File.read(File.join(RubyLint::FIXTURES, 'stdlib/un.rb'))
    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.run(tokens)

    scope   = iterator.storage[:scope]
    methods = %w{setup cp ln mv rm mkdir rmdir install chmod
      touch wait_writable mkmf httpd help}

    scope.class.should == RubyLint::Definition

    scope.lookup(:constant, 'FileUtils').class.should == RubyLint::Definition

    methods.each do |method|
      scope.lookup(:instance_method, method).class.should == RubyLint::Definition
    end
  end
end
