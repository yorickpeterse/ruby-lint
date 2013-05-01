require File.expand_path('../../../helper', __FILE__)

describe ruby_method do
  before do
    @method_def = ruby_method.new_from_node(
      s(
        :defs,
        s(:const, nil, :String),
        :example,
        s(
          :args,
          s(:arg, :required),
          s(:optarg, :number, s(:int, 10)),
          s(:restarg, :rest),
          s(:arg, :more),
          s(:blockarg, :block)
        ),
        s(:begin, s(:return, s(:lvar, :block)))
      )
    )

    @method_call = ruby_method.new_from_node(
      s(:send, s(:const, nil, :String), :example, s(:int, 10))
    )
  end

  should 'return the correct method names' do
    @method_def.name.should  == 'example'
    @method_call.name.should == 'example'
  end

  should 'return the correct object types' do
    @method_def.type.should  == :method_definition
    @method_call.type.should == :method

    @method_def.method?.should  == false
    @method_call.method?.should == true
  end

  should 'return the method definition receiver' do
    @method_def.receiver.is_a?(ruby_object).should == true
    @method_def.receiver.name.should               == 'String'
  end

  should 'return the method call receiver' do
    @method_call.receiver.is_a?(ruby_object).should == true
    @method_call.receiver.name.should               == 'String'
  end

  should 'set the correct method definition type' do
    @method_def.method_type.should == :method
  end

  describe 'method definition arguments' do
    should 'return the required arguments' do
      @method_def.arguments.length.should == 2

      required = @method_def.arguments[0]

      required.is_a?(ruby_object).should == true

      required.name.should == 'required'
    end

    should 'return the optional arguments' do
      @method_def.optional_arguments.length.should == 1

      number = @method_def.optional_arguments[0]

      number.is_a?(ruby_object).should == true

      number.name.should == 'number'

      number.value.is_a?(ruby_object).should == true

      number.value.value.should == 10
    end

    should 'return the rest argument' do
      @method_def.rest_argument.nil?.should == false
      @method_def.rest_argument.name.should == 'rest'
    end

    should 'return the block argument' do
      @method_def.block_argument.nil?.should == false
      @method_def.block_argument.name.should == 'block'
    end

    should 'add method arguments to the definitions list' do
      @method_def.lookup(:lvar, 'required').is_a?(ruby_object).should == true
      @method_def.lookup(:lvar, 'block').is_a?(ruby_object).should    == true
    end
  end

  should 'return the specified arguments of a method call' do
    @method_call.arguments.length.should == 1

    param = @method_call.arguments[0]

    param.is_a?(ruby_object).should == true
    param.type.should               == :int
    param.value.should              == 10
  end

  should 'list all the methods of a class' do
    klass = ruby_object.new(:type => :class, :name => 'Example')

    method = ruby_method.new(
      :name     => 'class_method',
      :receiver => klass.lookup(:keyword, 'self')
    )

    klass.add(:method, method.name, method)

    methods = klass.list(:method)

    methods.length.should  == 1
    methods[0].name.should == 'class_method'
  end
end
