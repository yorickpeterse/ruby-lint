require File.expand_path('../../../../helper', __FILE__)

describe 'Complex code analysis' do
  it 'Analyze fixtures/stdlib/un.rb' do
    code     = File.read(File.join(RubyLint::FIXTURES, 'stdlib/un.rb'))
    tokens   = RubyLint::Parser.new(code).parse
    iterator = RubyLint::Iterator.new

    iterator.bind(RubyLint::Analyze::Definitions)
    iterator.bind(RubyLint::Analyze::CodingStyle)
    iterator.bind(RubyLint::Analyze::MethodValidation)
    iterator.bind(RubyLint::Analyze::ShadowingVariables)
    iterator.bind(RubyLint::Analyze::UndefinedVariables)
    iterator.bind(RubyLint::Analyze::UnusedVariables)
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
