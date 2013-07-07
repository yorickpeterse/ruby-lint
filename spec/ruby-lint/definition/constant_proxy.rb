require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::ConstantProxy do
  before do
    @source = ruby_object.new(:name => 'global', :type => :global)
    @proxy  = RubyLint::Definition::ConstantProxy.new(@source, 'Foo')
  end

  should 'create a new constant proxy' do
    @proxy.proxy_source.should == @source
    @proxy.proxy_name.should   == 'Foo'
  end

  should 'act like a RubyObject definition' do
    @proxy.lookup(:const, 'Bar').nil?.should == true
  end

  should 'cache the definition when it exists' do
    @proxy.name.nil?.should == true
    @proxy.type.nil?.should == true

    @proxy.lookup(:const, 'VERSION').nil?.should == true

    @source.define_constant('Foo').define_constant('VERSION')

    @proxy.name.should == 'Foo'
    @proxy.type.should == :const

    @proxy.lookup(:const, 'VERSION').is_a?(ruby_object).should == true
  end
end
