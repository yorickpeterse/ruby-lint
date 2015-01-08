require 'spec_helper'

describe RubyLint::DefinitionBuilder::RubyClass do
  describe 'using an implicit parent class' do
    before :all do
      node     = s(:class, s(:const, nil, :A), nil, s(:nil))
      @vm      = RubyLint::VirtualMachine.new
      @builder = RubyLint::DefinitionBuilder::RubyClass.new(node, @vm)
    end

    it 'returns the name of the class' do
      @builder.build.name.should == 'A'
    end

    it 'returns the type of the class' do
      @builder.build.type.should == :const
    end

    it 'returns the parent definitions' do
      built = @builder.build

      built.parents.length.should == 2

      built.parents[0].name.should == 'Object'
      built.parents[1].name.should == 'root'
    end

    it 'returns the reference amount' do
      @builder.build.reference_amount.should == 1
    end

    it 'returns the scope to define the class in' do
      @builder.scope.should == @vm.current_scope
    end
  end

  describe 'using an explicit parent class' do
    before :all do
      node   = s(:class, s(:const, nil, :A), s(:const, nil, :B), s(:nil))
      @vm    = RubyLint::VirtualMachine.new
      parent = @vm.definitions.define_constant('B')

      @builder = RubyLint::DefinitionBuilder::RubyClass.new(
        node,
        @vm,
        :parent => parent
      )
    end

    it 'returns the name of the class' do
      @builder.build.name.should == 'A'
    end

    it 'returns the parent definitions' do
      built = @builder.build

      built.parents.length.should == 2

      built.parents[0].name.should == 'B'
      built.parents[1].name.should == 'root'
    end

    it 'returns the scope to define the class in' do
      @builder.scope.should == @vm.current_scope
    end
  end

  describe 'using constant paths' do
    before :all do
      node = s(
        :class,
        s(:const, s(:const, nil, :A), :B),
        s(:const, s(:const, nil, :C), :D),
        s(:nil)
      )

      @vm = RubyLint::VirtualMachine.new

      @vm.definitions.define_constant('A')

      d_const = @vm.definitions.define_constant('C').define_constant('D')

      @builder = RubyLint::DefinitionBuilder::RubyClass.new(
        node,
        @vm,
        :parent => d_const
      )
    end

    it 'returns the name of the class' do
      @builder.build.name.should == 'B'
    end

    it 'returns the parent definitions' do
      built = @builder.build

      built.parents.length.should == 2

      built.parents[0].name.should == 'D'
      built.parents[1].name.should == 'root'
    end

    it 'returns the scope to define the class in' do
      @builder.scope.should == @vm.definitions.lookup(:const, 'A')
    end
  end
end
