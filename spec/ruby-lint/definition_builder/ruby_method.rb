require File.expand_path('../../../helper', __FILE__)

describe RubyLint::DefinitionBuilder::RubyMethod do
  describe 'defining a method without a receiver' do
    before do
      node     = s(:def, :example, s(:args), s(:nil))
      @root    = ruby_object.new(:name => 'root')
      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(node, @root)
    end

    should 'return the name of the method' do
      @builder.build.name.should == 'example'
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
      node  = s(:defs, s(:const, nil, :A), :example, s(:args), s(:nil))
      @root = ruby_object.new(:name => 'root')

      @root.define_constant('A')

      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(node, @root)
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

  describe 'defining a method with a constant path as a receiver' do
    before do
      node  = s(
        :defs,
        s(:const, s(:const, nil, :A), :B),
        :example,
        s(:args),
        s(:nil)
      )

      @root = ruby_object.new(:name => 'root')

      @root.define_constant('A').define_constant('B')

      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(node, @root)
      @parent  = @root.lookup(:const, 'A').lookup(:const, 'B')
    end

    should 'return the name of the method' do
      @builder.build.name.should == 'example'
    end

    should 'return the parent definitions' do
      @builder.build.parents.should == [@parent]
    end

    should 'return the scope to define the method in' do
      @builder.scope.should == @parent
    end
  end

  describe 'defining a method with a variable as a receiver' do
    before do
      node  = s(:defs, s(:lvar, :number), :example, s(:args), s(:nil))
      @root = ruby_object.new(:name => 'root')
      @val  = ruby_object.new(:type => :int, :value => '10')
      @lvar = ruby_object.new(:name => 'number', :type => :lvar, :value => @val)

      @root.add(:lvar, 'number', @lvar)

      @builder = RubyLint::DefinitionBuilder::RubyMethod.new(node, @root)
    end

    should 'return the parent definitions' do
      @builder.build.parents.should == [@val]
    end

    should 'return the scope to define the method in' do
      @builder.scope.should == @val
    end
  end
end
