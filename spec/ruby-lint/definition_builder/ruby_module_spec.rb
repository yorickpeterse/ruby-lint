require 'spec_helper'

describe RubyLint::DefinitionBuilder::RubyModule do
  describe 'building a simple module' do
    before :all do
      node     = s(:module, s(:const, nil, :A), s(:nil))
      @vm      = RubyLint::VirtualMachine.new
      @builder = RubyLint::DefinitionBuilder::RubyModule.new(node, @vm)
      @module  = @vm.definitions.lookup(:const, 'Module')
    end

    it 'returns the name of the module' do
      @builder.build.name.should == 'A'
    end

    it 'returns the parent definitions' do
      @builder.build.parents.should == [@module, @vm.current_scope]
    end

    it 'returns the reference amount' do
      @builder.build.reference_amount.should == 1
    end

    it 'returns the scope to define the module in' do
      @builder.scope.should == @vm.current_scope
    end
  end

  describe 'using constant paths' do
    before :all do
      node = s(:module, s(:const, s(:const, nil, :A), :B), s(:nil))
      @vm  = RubyLint::VirtualMachine.new

      @vm.definitions.define_constant('A')

      @builder = RubyLint::DefinitionBuilder::RubyModule.new(node, @vm)
      @module  = @vm.definitions.lookup(:const, 'Module')
    end

    it 'returns the name of the module' do
      @builder.build.name.should == 'B'
    end

    it 'returns the parent definitions' do
      @builder.build.parents.should == [@module, @vm.current_scope]
    end

    it 'returns the scope to define the module in' do
      @builder.scope.should == @vm.definitions.lookup(:const, 'A')
    end
  end
end
