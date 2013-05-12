require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::DefinitionBuilder::Assignment do
  describe 'one to one assignments' do
    describe 'local variables' do
      before do
        node     = s(:lvasgn, :number, s(:int, 10))
        @root    = ruby_object.new(:name => 'root')
        @builder = RubyLint::DefinitionBuilder::Assignment.new(node, @root)
      end

      should 'return the name of the variable' do
        @builder.build.name.should == 'number'
      end

      should 'return the type of the variable' do
        @builder.build.type.should == :lvar
      end

      should 'return the value of the variable' do
        value = @builder.build.value

        value.type.should  == :int
        value.value.should == 10
      end

      should 'return the scope to define the variable in' do
        @builder.scope.should == @root
      end
    end

    describe 'instance variables' do
      before do
        node     = s(:ivasgn, :@number, s(:int, 10))
        @root    = ruby_object.new(:name => 'root')
        @builder = RubyLint::DefinitionBuilder::Assignment.new(node, @root)
      end

      should 'return the name of the variable' do
        @builder.build.name.should == '@number'
      end

      should 'return the type of the variable' do
        @builder.build.type.should == :ivar
      end
    end

    describe 'class variables' do
      before do
        node     = s(:cvdecl, :@@number, s(:int, 10))
        @root    = ruby_object.new(:name => 'root')
        @builder = RubyLint::DefinitionBuilder::Assignment.new(node, @root)
      end

      should 'return the name of the variable' do
        @builder.build.name.should == '@@number'
      end

      should 'return the type of the variable' do
        @builder.build.type.should == :cvar
      end
    end

    describe 'global variables' do
      before do
        node     = s(:gvasgn, :$number, s(:int, 10))
        @root    = ruby_object.new(:name => 'root')
        @builder = RubyLint::DefinitionBuilder::Assignment.new(node, @root)
      end

      should 'return the name of the variable' do
        @builder.build.name.should == '$number'
      end

      should 'return the type of the variable' do
        @builder.build.type.should == :gvar
      end
    end

    describe 'constants' do
      before do
        node     = s(:cdecl, :NUMBER, s(:int, 10))
        @root    = ruby_object.new(:name => 'root')
        @builder = RubyLint::DefinitionBuilder::Assignment.new(node, @root)
      end

      should 'return the name of the variable' do
        @builder.build.name.should == 'NUMBER'
      end

      should 'return the type of the variable' do
        @builder.build.type.should == :const
      end
    end
  end
end
