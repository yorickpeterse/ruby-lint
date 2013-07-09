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

  should 'only add valid collection types' do
    obj = ruby_object.new(:name => 'Foo', :type => :test)

    should.raise?(ArgumentError) do
      @object.add_definition(obj)
    end
  end

  should 'look up a constant path' do
    first  = ruby_object.new(:name => 'A', :type => :const)
    second = ruby_object.new(:name => 'B', :type => :const)
    third  = ruby_object.new(:name => 'C', :type => :const)

    second.add_definition(third)
    first.add_definition(second)

    first.lookup_constant_path('B::C').should == third
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

  should 'return the members as the definition value' do
    array  = ruby_object.new(:type => :array, :members_as_value => true)
    values = [10, 20]

    values.each_with_index do |value, index|
      value  = ruby_object.new(:type => :int, :value => value)
      member = ruby_object.new(
        :type  => :member,
        :name  => index.to_s,
        :value => value
      )

      array.add(member.type, member.name, member)
    end

    array.value.is_a?(Array).should == true
    array.value.length.should       == 2

    values.each_with_index do |value, index|
      array.value[index].name.should == index.to_s

      array.value[index].value.type.should  == :int
      array.value[index].value.value.should == value
    end
  end
end
