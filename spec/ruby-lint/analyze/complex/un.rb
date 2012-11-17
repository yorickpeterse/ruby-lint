require File.expand_path('../../../../helper', __FILE__)

describe 'Analyze a list of global methods defined in un.rb' do
  extend RubyLint::Spec::Helper

  it 'All the methods should be defined as instance methods' do
    tokens   = parse_file(File.join(RubyLint::FIXTURES, 'stdlib/un.rb'))
    iterator = create_iterator

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
