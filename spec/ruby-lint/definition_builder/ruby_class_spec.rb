require 'spec_helper'

describe RubyLint::DefinitionBuilder::RubyClass do
  describe 'using an implicit parent class' do
    before do
      node     = s(:class, s(:const, nil, :A), nil, s(:nil))
      @root    = ruby_object.new(:name => 'root')
      @builder = RubyLint::DefinitionBuilder::RubyClass.new(node, @root)
    end

    example 'return the name of the class' do
      @builder.build.name.should == 'A'
    end

    example 'return the type of the class' do
      @builder.build.type.should == :const
    end

    example 'return the parent definitions' do
      built = @builder.build

      built.parents.length.should == 2

      built.parents[0].name.should == 'Object'
      built.parents[1].name.should == 'root'
    end

    example 'return the reference amount' do
      @builder.build.reference_amount.should == 1
    end

    example 'return the scope to define the class in' do
      @builder.scope.should == @root
    end
  end

  describe 'using an explicit parent class' do
    before do
      node  = s(:class, s(:const, nil, :A), s(:const, nil, :B), s(:nil))
      @root = ruby_object.new(:name => 'root')

      @root.define_constant('B')

      @builder = RubyLint::DefinitionBuilder::RubyClass.new(
        node,
        @root,
        :parent => @root.lookup(:const, 'B')
      )
    end

    example 'return the name of the class' do
      @builder.build.name.should == 'A'
    end

    example 'return the parent definitions' do
      built = @builder.build

      built.parents.length.should == 2

      built.parents[0].name.should == 'B'
      built.parents[1].name.should == 'root'
    end

    example 'return the scope to define the class in' do
      @builder.scope.should == @root
    end
  end

  describe 'using constant paths' do
    before do
      node = s(
        :class,
        s(:const, s(:const, nil, :A), :B),
        s(:const, s(:const, nil, :C), :D),
        s(:nil)
      )

      @root = ruby_object.new(:name => 'root')

      @root.define_constant('A')

      d_const = @root.define_constant('C').define_constant('D')

      @builder = RubyLint::DefinitionBuilder::RubyClass.new(
        node,
        @root,
        :parent => d_const
      )
    end

    example 'return the name of the class' do
      @builder.build.name.should == 'B'
    end

    example 'return the parent definitions' do
      built = @builder.build

      built.parents.length.should == 2

      built.parents[0].name.should == 'D'
      built.parents[1].name.should == 'root'
    end

    example 'return the scope to define the class in' do
      @builder.scope.should == @root.lookup(:const, 'A')
    end
  end
end