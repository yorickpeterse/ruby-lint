require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyObject do
  describe 'lazy loading constants' do
    should 'lazy load the Kernel constant by default' do
      RubyLint::Definition::RubyObject \
        .new(:type => :method_definition, :name => 'example') \
        .lookup(:constant, 'Kernel') \
        .nil? \
        .should == true

      definition = RubyLint::Definition::RubyObject.new(
        :type              => :method_definition,
        :name              => 'example',
        :lazy              => true,
        :default_constants => ['Kernel']
      )

      definition.definitions[:constant].key?('Kernel').should == true

      definition.lookup(:constant, 'Kernel') \
        .lookup(:method, 'puts') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end

    should 'lazy load the Time constant' do
      defs = RubyLint::Definition::RubyObject.new(
        :type => :method_definition,
        :name => 'example',
        :lazy => true
      )

      defs.definitions[:constant].key?('Time').should == false

      defs.lookup(:constant, 'Time') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true

      defs.definitions[:constant].key?('Time').should == true
    end

    should 'lazy load a sub constant' do
      defs = RubyLint::Definition::RubyObject.new(
        :type => :method_definition,
        :name => 'example',
        :lazy => true
      )

      defs.lookup(:constant, 'Encoding').lookup(:constant, 'BINARY')

      source = defs.definitions[:constant]

      source.key?('Encoding').should                                  == true
      source['Encoding'].definitions[:constant].key?('BINARY').should == true
    end
  end

  describe 'importing global variables' do
    should 'import the global variables of Kernel' do
      definition = RubyLint::Definition::RubyObject.new(
        :type              => :root,
        :lazy              => true,
        :default_constants => ['Kernel']
      )

      definition.lookup(:constant, 'Kernel') \
        .lookup(:global_variable, '$:') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end
end
