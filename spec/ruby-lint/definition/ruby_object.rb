require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyObject do
  before do
    node = RubyLint::Node.new(
      :local_variable,
      ['hello'],
      :line   => 5,
      :column => 2,
      :file   => '(test)'
    )

    value = s(:integer, '10')

    @object = RubyLint::Definition::RubyObject.new(node, :value => value)
  end

  should 'return the name of the object' do
    @object.name.should == 'hello'
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
    @object.type.should == :local_variable
  end

  should 'return the value of the node' do
    @object.value.value.should == ['10']
  end

  should 'only store RubyObject objects' do
    obj = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'foo')
    )

    should.raise?(TypeError) do
      @object.add(:local_variable, 'foo', 10)
    end

    should.not.raise?(TypeError) do
      @object.add(:local_variable, 'foo', obj)
    end
  end

  should 'not return a value for an empty variable' do
    object = RubyLint::Definition::RubyObject.new(s(:local_variable, 'foo'))

    object.name.should       == 'foo'
    object.value.nil?.should == true
  end

  should 'store a variable' do
    var = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'number')
    )

    @object.add(:local_variable, var.name, var)

    found = @object.lookup(:local_variable, var.name)

    found.is_a?(RubyLint::Definition::RubyObject).should == true

    found.name.should == 'number'
    found.type.should == :local_variable
  end

  should 'clear all the definitions' do
    var = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'number')
    )

    @object.add(:local_variable, var.name, var)

    @object.lookup(:local_variable, var.name).nil?.should == false

    @object.clear!

    @object.lookup(:local_variable, var.name).nil?.should == true
  end

  should 'retrieve parent definitions' do
    method = RubyLint::Definition::RubyObject.new(
      s(:local_variable, 'example')
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
end
