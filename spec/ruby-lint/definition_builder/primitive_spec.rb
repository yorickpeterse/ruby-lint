require 'spec_helper'

describe RubyLint::DefinitionBuilder::Primitive do
  before do
    @root = ruby_object.new(:name => 'root')
  end

  example 'build an integer definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @root)
    built   = builder.build

    built.type.should  == :int
    built.value.should == 10
  end

  example 'build a float definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:float, 10.0), @root)
    built   = builder.build

    built.type.should  == :float
    built.value.should == 10.0
  end

  example 'build a string definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:str, 'a'), @root)
    built   = builder.build

    built.type.should  == :str
    built.value.should == 'a'
  end

  example 'build a symbol definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:sym, :a), @root)
    built   = builder.build

    built.type.should  == :sym
    built.value.should == :a
  end

  example 'build primitives as instances by default' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @root)

    builder.build.instance?.should == true
  end

  example 'allow custom options to be defined' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(
      s(:int, 10),
      @root,
      :instance_type => :class
    )

    builder.build.class?.should == true
  end

  example 'include the definitions of the corresponding Ruby class' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @root)
    built   = builder.build

    built.lookup(:instance_method, 'to_s').is_a?(ruby_object).should == true
  end
end