require File.expand_path('../../../../helper', __FILE__)

describe 'Rlint::Analyze::Definitions: stdlib' do
  it 'Build a list of definitions for un.rb' do
    code     = File.read(File.join(Rlint::FIXTURES, 'stdlib/un.rb'))
    tokens   = Rlint::Parser.new(code).parse
    iterator = Rlint::Iterator.new

    iterator.bind(Rlint::Analyze::Definitions)
    iterator.run(tokens)

    scope   = iterator.storage[:scope]
    methods = %w{setup cp ln mv rm mkdir rmdir install chmod
      touch wait_writable mkmf httpd help}

    scope.class.should == Rlint::Definition

    scope.lookup(:constant, 'FileUtils').class.should == Rlint::Definition

    methods.each do |method|
      scope.lookup(:instance_method, method).class.should == Rlint::Definition
    end
  end
end
