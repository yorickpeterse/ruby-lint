require 'spec_helper'

describe RubyLint::ConstantLoader do
  before do
    @definitions = ruby_object.new
    @loader      = RubyLint::ConstantLoader.new(:definitions => @definitions)
  end

  context 'bootstrapping definitions' do
    before do
      @loader.bootstrap
    end

    example 'bootstrap Module' do
      @definitions.has_definition?(:const, 'Module').should == true
    end

    example 'bootstrap Fixnum' do
      @definitions.has_definition?(:const, 'Fixnum').should == true
    end

    example 'bootstrap global variables' do
      @definitions.has_definition?(:gvar, '$LOAD_PATH').should == true
    end
  end

  context 'loading constants' do
    before do
      @loader.load_constant('PP')
    end

    example 'mark bootstrapped constants as loaded' do
      @loader.bootstrap
      @loader.loaded?('Module').should == true
    end

    example 'load a constant' do
      @loader.loaded?('PP').should == true
    end

    example 'apply a constant to a definition' do
      @definitions.has_definition?(:const, 'PP').should == true
    end

    example 'update the registry' do
      @loader.registry.include?('PP').should == true
    end
  end

  context 'iterating over an AST' do
    before do
      @ast = s(:root, s(:const, nil, 'PP'))
    end

    example 'load a constant' do
      @loader.run([@ast])
      @loader.loaded?('PP').should == true
    end

    example 'call the correct callbacks' do
      @loader.should_receive(:on_const)
        .with(an_instance_of(RubyLint::AST::Node))

      @loader.run([@ast])
    end
  end
end
