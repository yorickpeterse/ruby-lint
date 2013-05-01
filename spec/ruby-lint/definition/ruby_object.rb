require File.expand_path('../../../helper', __FILE__)

describe ruby_object do
  before do
    value = ruby_object.new(
      :type  => :int,
      :value => '10'
    )

    @object = ruby_object.new(
      :type   => :lvar,
      :name   => 'hello',
      :value  => value
    )
  end

  should 'return the name of the object' do
    @object.name.should == 'hello'
  end

  should 'return the object type' do
    @object.type.should == :lvar
  end

  should 'return the value of the node' do
    @object.value.value.should == '10'
  end

  should 'only store RubyObject objects' do
    obj = ruby_object.new(
      :type => :lvar,
      :name => 'foo'
    )

    should.raise?(TypeError) do
      @object.add(:lvar, 'foo', 10)
    end

    should.not.raise?(TypeError) do
      @object.add(:lvar, 'foo', obj)
    end
  end

  should 'store a variable' do
    var = ruby_object.new(
      :type => :lvar,
      :name => 'number'
    )

    @object.add(:lvar, var.name, var)

    found = @object.lookup(:lvar, var.name)

    found.is_a?(ruby_object).should == true

    found.name.should == 'number'
    found.type.should == :lvar
  end

  should 'clear all the definitions' do
    var = ruby_object.new(
      :type => :lvar,
      :name => 'number'
    )

    @object.add(:lvar, var.name, var)

    @object.lookup(:lvar, var.name).nil?.should == false

    @object.clear!

    @object.lookup(:lvar, var.name).nil?.should == true
  end

  should 'set the parent definitions' do
    var1 = ruby_object.new(
      :type  => :lvar,
      :name  => 'numberx',
      :value => '10'
    )

    var2 = ruby_object.new(
      :type    => :lvar,
      :name    => 'number',
      :value   => '10',
      :parents => [var1]
    )

    var2.parents.length.should == 1
  end

  should 'retrieve parent definitions' do
    method = ruby_object.new(
      :type => :lvar,
      :name => 'example'
    )

    @object.add(:method, 'example', method)

    child = ruby_object.new(
      :type    => :class,
      :name    => 'Example',
      :parents => [@object]
    )

    found = child.lookup(:method, 'example')

    found.is_a?(ruby_object).should == true

    found.name.should == 'example'
  end

  describe 'creating definitions from AST nodes' do
    should 'create a definition for a string' do
      object = ruby_object.new_from_node(
        s(:str, 'hello')
      )

      object.type.should  == :str
      object.value.should == 'hello'
    end

    should 'create a definition for a variable with a value' do
      object = ruby_object.new_from_node(
        s(:lvar, 'number'),
        :value => s(:int, '10')
      )

      object.type.should == :lvar
      object.name.should == 'number'

      object.value.type.should  == :int
      object.value.value.should == '10'
    end
  end

  should 'return multiple values for a collection' do
    variable = s(:lvar, 'numbers')
    numbers  = s(:array, s(:int, '10'), s(:int, '20'))
    object   = ruby_object.new_from_node(
      variable,
      :value => numbers
    )

    object.value.type.should == :array

    object.value.value.is_a?(Array).should == true
    object.value.value.length.should       == 2

    values = object.value.value

    values[0].is_a?(ruby_object).should == true
    values[1].is_a?(ruby_object).should == true

    values[0].value.should == '10'
    values[1].value.should == '20'
  end

  should 'create a RubyObject that represents an instance' do
    object = ruby_object.new(:type => :const, :name => 'String')

    object.instance_type.should == :class

    instance = object.instance

    instance.type.should          == object.type
    instance.name.should          == object.name
    instance.instance_type.should == :instance
  end

  should 'add data to a parent definition' do
    initial = ruby_object.new(
      :type  => :lvar,
      :name  => 'test',
      :value => '10'
    )

    copy = ruby_object.new(
      :type  => :lvar,
      :name  => 'test',
      :value => '20'
    )

    child_only = ruby_object.new(
      :type  => :lvar,
      :name  => 'child_only',
      :value => '30'
    )

    parent = ruby_object.new(:name => 'parent')
    child  = ruby_object.new(
      :name           => 'child',
      :update_parents => [:lvar],
      :parents        => [parent]
    )

    parent.add(initial.type, initial.name, initial)

    child.add(initial.type, initial.name, initial)
    child.add(copy.type, copy.name, copy)
    child.add(child_only.type, child_only.name, child_only)

    child.lookup(initial.type, initial.name).should  == copy
    parent.lookup(initial.type, initial.name).should == copy

    parent.lookup(child_only.type, child_only.name).nil?.should == true
  end
end
