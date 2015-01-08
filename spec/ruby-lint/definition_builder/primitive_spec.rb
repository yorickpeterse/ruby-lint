require 'spec_helper'

describe RubyLint::DefinitionBuilder::Primitive do
  before :all do
    @vm = RubyLint::VirtualMachine.new
  end

  it 'builds an integer definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @vm)
    built   = builder.build

    built.type.should  == :int
    built.value.should == 10
  end

  it 'builds a float definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:float, 10.0), @vm)
    built   = builder.build

    built.type.should  == :float
    built.value.should == 10.0
  end

  it 'builds a string definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:str, 'a'), @vm)
    built   = builder.build

    built.type.should  == :str
    built.value.should == 'a'
  end

  it 'builds a symbol definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:sym, :a), @vm)
    built   = builder.build

    built.type.should  == :sym
    built.value.should == :a
  end

  it 'builds primitives as instances by default' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @vm)

    builder.build.instance?.should == true
  end

  it 'allows custom options to be defined' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(
      s(:int, 10),
      @vm,
      :instance_type => :class
    )

    builder.build.class?.should == true
  end

  it 'includes the definitions of the corresponding Ruby class' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @vm)
    built   = builder.build

    built.lookup(:instance_method, 'to_s').is_a?(ruby_object).should == true
  end
end
