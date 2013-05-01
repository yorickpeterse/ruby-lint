require File.expand_path('../../../helper', __FILE__)

describe RubyLint::DefinitionBuilder::RubyModule do
  describe 'building a simple module' do
    before do
      node     = s(:module, s(:const, nil, :A), s(:nil))
      @root    = ruby_object.new(:name => 'root')
      @builder = RubyLint::DefinitionBuilder::RubyModule.new(node, @root)
    end

    should 'return the name of the module' do
      @builder.build.name.should == 'A'
    end

    should 'return the parent definitions' do
      @builder.build.parents.should == [@root]
    end

    should 'return the reference amount' do
      @builder.build.reference_amount.should == 1
    end

    should 'return the scope to define the module in' do
      @builder.scope.should == @root
    end
  end

  describe 'using constant paths' do
    before do
      node  = s(:module, s(:const, s(:const, nil, :A), :B), s(:nil))
      @root = ruby_object.new(:name => 'root')

      @root.define_constant('A')

      @builder = RubyLint::DefinitionBuilder::RubyModule.new(node, @root)
    end

    should 'return the name of the module' do
      @builder.build.name.should == 'B'
    end

    should 'return the parent definitions' do
      @builder.build.parents.should == [@root]
    end

    should 'return the scope to define the module in' do
      @builder.scope.should == @root.lookup(:const, 'A')
    end
  end
end
