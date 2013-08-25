require 'spec_helper'

describe RubyLint::DefinitionBuilder::RubyModule do
  describe 'building a simple module' do
    before do
      node     = s(:module, s(:const, nil, :A), s(:nil))
      @root    = ruby_object.new(:name => 'root')
      @builder = RubyLint::DefinitionBuilder::RubyModule.new(node, @root)
      @module  = RubyLint::GlobalScope.global_constant('Module')
    end

    example 'return the name of the module' do
      @builder.build.name.should == 'A'
    end

    example 'return the parent definitions' do
      @builder.build.parents.should == [@module, @root]
    end

    example 'return the reference amount' do
      @builder.build.reference_amount.should == 1
    end

    example 'return the scope to define the module in' do
      @builder.scope.should == @root
    end
  end

  describe 'using constant paths' do
    before do
      node  = s(:module, s(:const, s(:const, nil, :A), :B), s(:nil))
      @root = ruby_object.new(:name => 'root')

      @root.define_constant('A')

      @builder = RubyLint::DefinitionBuilder::RubyModule.new(node, @root)
      @module  = RubyLint::GlobalScope.global_constant('Module')
    end

    example 'return the name of the module' do
      @builder.build.name.should == 'B'
    end

    example 'return the parent definitions' do
      @builder.build.parents.should == [@module, @root]
    end

    example 'return the scope to define the module in' do
      @builder.scope.should == @root.lookup(:const, 'A')
    end
  end
end
