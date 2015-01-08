require 'spec_helper'

describe RubyLint::Definition::ConstantProxy do
  context 'without a registry' do
    before do
      @source = ruby_object.new(:name => 'global', :type => :global)
      @proxy  = RubyLint::Definition::ConstantProxy.new(@source, 'Foo')
    end

    it 'creates a new constant proxy' do
      @proxy.proxy_source.should == @source
      @proxy.proxy_name.should   == 'Foo'
    end

    it 'acts like a RubyObject definition' do
      @proxy.lookup(:const, 'Bar').nil?.should == true
    end

    it 'caches the definition when it exists' do
      @proxy.name.nil?.should == true
      @proxy.type.nil?.should == true

      @proxy.lookup(:const, 'VERSION').nil?.should == true

      @source.define_constant('Foo').define_constant('VERSION')

      @proxy.name.should == 'Foo'
      @proxy.type.should == :const

      @proxy.lookup(:const, 'VERSION').is_a?(ruby_object).should == true
    end

    it 'delegates #inspect to the underlying object' do
      foo = @source.define_constant('Foo')

      @proxy.inspect.should == foo.inspect
    end
  end

  context 'with a registry' do
    before do
      @source   = ruby_object.new
      @registry = RubyLint::Definition::Registry.new

      @proxy = RubyLint::Definition::ConstantProxy
        .new(@source, 'Foo', @registry)
    end

    it 'does not load anything when the registry is empty' do
      @proxy.lookup(:const, 'Foo').nil?.should == true
    end

    it 'autoloads a definition when possible' do
      @registry.register('Foo') { |defs| defs.define_constant('Foo') }

      @proxy.lookup(:const, 'Foo').is_a?(ruby_object).should == true
    end
  end

  context 'loading definitions automatically' do
    before do
      @source   = ruby_object.new
      @registry = RubyLint::Definition::Registry.new

      @proxy = RubyLint::Definition::ConstantProxy
        .new(@source, 'ActionController', @registry)
    end

    it 'loads a definition from the filesystem' do
      @registry.should_receive(:load).with('ActionController')

      @proxy.lookup(:const, 'Foo')
    end

    it 'does not load the definition when it is already loaded' do
      @registry.should_not receive(:load)

      @registry.register('ActionController') do |defs|
        defs.define_constant('ActionController')
      end

      @proxy.lookup(:const, 'Foo')
    end
  end
end
