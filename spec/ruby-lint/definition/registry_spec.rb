require 'spec_helper'

describe RubyLint::Definition::Registry do
  before do
    @registry = RubyLint::Definition::Registry.new
  end

  context 'registering definitions' do
    example 'no definitions should be registered by default' do
      @registry.registered.empty?.should == true
    end

    example 'register a definition' do
      @registry.register('String') { }

      @registry.registered.key?('String').should == true
    end
  end

  context 'checking if definitions exist' do
    example 'check for a non existing definition' do
      @registry.include?('Foo').should == false
    end

    example 'check for an existing definition' do
      @registry.register('Foo') { }

      @registry.include?('Foo').should == true
    end
  end

  context 'retrieving definitions' do
    example 'raise when the constant does not exist' do
      lambda { @registry.get('Foo') }.should raise_error(ArgumentError)
    end

    example 'return the definition when it exists' do
      @registry.register('Foo') { }

      @registry.get('Foo').is_a?(Proc).should == true
    end
  end

  context 'applying definitions' do
    before do
      @root = ruby_object.new

      @registry.register('Foo') do |defs|
        defs.define_constant('Foo') do |foo|
          foo.define_method('bar')
        end
      end

      @registry.apply('Foo', @root)
    end

    example 'define the constant' do
      @root.has_definition?(:const, 'Foo').should == true
    end

    example 'define sub definitions correctly' do
      @root.lookup(:const, 'Foo').has_definition?(:method, 'bar').should == true
    end
  end
end
