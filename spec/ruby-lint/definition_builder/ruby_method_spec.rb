require 'spec_helper'

describe RubyLint::DefinitionBuilder::RubyMethod do
  describe 'defining a method without a receiver' do
    before :all do
      node     = s(:def, :example, s(:args), s(:nil))
      @vm      = RubyLint::VirtualMachine.new
      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(node, @vm)
    end

    example 'return the name of the method' do
      @builder.build.name.should == 'example'
    end

    example 'return the type of the method' do
      @builder.build.type.should == :instance_method
    end

    example 'return the parent definitions' do
      @builder.build.parents.should == [@vm.current_scope]
    end

    example 'return the scope to define the method in' do
      @builder.scope.should == @vm.current_scope
    end
  end

  describe 'defining a method with a constant as a receiver' do
    before :all do
      node    = s(:defs, s(:const, nil, :A), :example, s(:args), s(:nil))
      @vm     = RubyLint::VirtualMachine.new
      a_const = @vm.definitions.define_constant('A')

      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(
        node,
        @vm,
        :receiver => a_const
      )
    end

    example 'return the name of the method' do
      @builder.build.name.should == 'example'
    end

    example 'return the parent definitions' do
      @builder.build.parents.should == [@vm.definitions.lookup(:const, 'A')]
    end

    example 'return the scope to define the method in' do
      @builder.scope.should == @vm.definitions.lookup(:const, 'A')
    end
  end
end
