require File.expand_path('../../../helper', __FILE__)

describe RubyLint::DefinitionBuilder::Primitive do
  before do
    @root = ruby_object.new(:name => 'root')
  end

  should 'build an integer definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @root)
    built   = builder.build

    built.type.should  == :int
    built.value.should == 10
  end

  should 'build a float definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:float, 10.0), @root)
    built   = builder.build

    built.type.should  == :float
    built.value.should == 10.0
  end

  should 'build a string definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:str, 'a'), @root)
    built   = builder.build

    built.type.should  == :str
    built.value.should == 'a'
  end

  should 'build a symbol definition' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:sym, :a), @root)
    built   = builder.build

    built.type.should  == :sym
    built.value.should == :a
  end

  should 'build primitives as instances by default' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(s(:int, 10), @root)

    builder.build.instance?.should == true
  end

  should 'allow custom options to be defined' do
    builder = RubyLint::DefinitionBuilder::Primitive.new(
      s(:int, 10),
      @root,
      :instance_type => :class
    )

    builder.build.class?.should == true
  end
end
