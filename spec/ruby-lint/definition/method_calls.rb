require File.expand_path('../../../helper', __FILE__)

describe 'Evaluating method calls on RubyObject instances' do
  before do
    @object = RubyLint::Definition::RubyObject.new(
      :name          => 'String',
      :type          => :constant,
      :instance_type => :instance
    )

    @method = RubyLint::Definition::RubyMethod.new(
      :name         => 'gsub',
      :type         => :instance_method,
      :return_value => proc { |object| object.instance }
    )

    @object.add(@method.type, @method.name, @method)
  end

  should 'return a instance when evaluating a method call' do
    value = @object.call(@method.name)

    value.name.should == @object.name
    value.type.should == @object.type
  end
end
