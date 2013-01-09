require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyObject do
  before do
    node = RubyLint::Node.new(
      :string,
      ['Hello'],
      :line   => 5,
      :column => 2,
      :file   => '(test)'
    )

    @object = RubyLint::Definition::RubyObject.new(node)
  end

  should 'return the name of the object' do
    @object.name.should == 'Hello'
  end

  should 'return the file path' do
    @object.file.should == '(test)'
  end

  should 'return the line number' do
    @object.line.should == 5
  end

  should 'return the column number' do
    @object.column.should == 2
  end

  should 'return the object type' do
    @object.type.should == :string
  end

  should 'return the value of the node' do
    @object.value.should == ['Hello']
  end

  should 'only store RubyObject objects' do
    obj = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'foo', '10')
    )

    should.raise?(TypeError) do
      @object.add(:local_variable, 'foo', 10)
    end

    should.not.raise?(TypeError) do
      @object.add(:local_variable, 'foo', obj)
    end
  end

  should 'store a variable' do
    var = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'number', '10')
    )

    @object.add(:local_variable, var.name, var)

    found = @object.lookup(:local_variable, var.name)

    found.is_a?(RubyLint::Definition::RubyObject).should == true

    found.name.should == 'number'
    found.type.should == :local_variable
  end

  should 'clear all the definitions' do
    var = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'number', '10')
    )

    @object.add(:local_variable, var.name, var)

    @object.lookup(:local_variable, var.name).nil?.should == false

    @object.clear!

    @object.lookup(:local_variable, var.name).nil?.should == true
  end

  should 'retrieve parent definitions' do
    method = RubyLint::Definition::RubyObject.new(
      s(:method_definition, 'example')
    )

    @object.add(:method, 'example', method)

    child = RubyLint::Definition::RubyObject.new(
      s(:class, ['Example']),
      :parents => [@object]
    )

    found = child.lookup(:method, 'example')

    found.is_a?(RubyLint::Definition::RubyObject).should == true

    found.name.should == 'example'
  end

  should 'set the parent definitions' do
    variable_node = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'number'),
      :value => s(:integer, '10')
    )

    var = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'number'),
      :value   => s(:integer, '10'),
      :parents => [variable_node]
    )

    var.parents.length.should == 1
  end

  should 'process constant paths' do
    var = RubyLint::Definition::RubyObject.new(
      s(
        :constant_path,
        s(:constant, 'First'),
        s(:constant, 'Second'),
        s(:constant, 'Third')
      )
    )

    var.type.should == :constant
    var.name.should == 'Third'

    var.receiver.name.should == 'Second'
    var.receiver.type.should == :constant

    var.receiver.receiver.name.should == 'First'
    var.receiver.receiver.type.should == :constant
  end

  describe 'lazy loading constants' do
    before do
      @node = s(:method_definition, 'example')
    end

    should 'lazy load the Kernel constant by default' do
      RubyLint::Definition::RubyObject.new(@node) \
        .lookup(:constant, 'Kernel') \
        .nil? \
        .should == true

      definition = RubyLint::Definition::RubyObject.new(
        @node,
        :lazy              => true,
        :default_constants => ['Kernel']
      )

      definition.definitions[:constant].key?('Kernel').should == true

      definition.lookup(:constant, 'Kernel') \
        .lookup(:method, 'puts') \
        .is_a?(RubyLint::Definition::RubyMethod) \
        .should == true
    end

    should 'lazy load the Time constant' do
      defs = RubyLint::Definition::RubyObject.new(@node, :lazy => true)

      defs.lookup(:constant, 'Time') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end

  describe 'importing global variables' do
    should 'import the global variables of Kernel' do
      definition = RubyLint::Definition::RubyObject.new(
        s(:root),
        :lazy              => true,
        :default_constants => ['Kernel']
      )

      definition.lookup(:constant, 'Kernel') \
        .lookup(:global_variable, '$:') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end

  describe 'custom values' do
    before do
      @variable = RubyLint::Definition::RubyObject.new(
        s(:local_variable, 'number'),
        :value => s(:integer, '10')
      )
    end

    should 'return the correct variable name' do
      @variable.name.should == 'number'
    end

    should 'return the variable type' do
      @variable.type.should            == :local_variable
      @variable.local_variable?.should == true
    end

    should 'return the variable value' do
      @variable.value.type.should  == :integer
      @variable.value.value.should == ['10']
    end
  end
end
