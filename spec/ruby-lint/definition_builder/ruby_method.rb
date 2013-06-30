require File.expand_path('../../../helper', __FILE__)

describe RubyLint::DefinitionBuilder::RubyMethod do
  describe 'defining a method without a receiver' do
    before do
      node     = s(:def, :example, s(:args), s(:nil))
      @root    = ruby_object.new(:name => 'root', :instance_type => :instance)
      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(node, @root)
    end

    should 'return the name of the method' do
      @builder.build.name.should == 'example'
    end

    should 'return the type of the method' do
      @builder.build.type.should == :instance_method
    end

    should 'return the parent definitions' do
      @builder.build.parents.should == [@root]
    end

    should 'return the scope to define the method in' do
      @builder.scope.should == @root
    end
  end

  describe 'defining a method with a constant as a receiver' do
    before do
      node    = s(:defs, s(:const, nil, :A), :example, s(:args), s(:nil))
      @root   = ruby_object.new(:name => 'root', :instance_type => :instance)
      a_const = @root.define_constant('A')

      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(
        node,
        @root,
        :receiver => a_const
      )
    end

    should 'return the name of the method' do
      @builder.build.name.should == 'example'
    end

    should 'return the parent definitions' do
      @builder.build.parents.should == [@root.lookup(:const, 'A')]
    end

    should 'return the scope to define the method in' do
      @builder.scope.should == @root.lookup(:const, 'A')
    end
  end
end
