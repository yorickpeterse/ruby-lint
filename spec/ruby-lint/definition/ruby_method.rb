require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyMethod do
  before do
    @method_def = RubyLint::Definition::RubyMethod.new_from_node(
      s(
        :method_definition,
        'example',
        s(
          :arguments,
          s(:argument, s(:local_variable, 'required')),
          s(
            :optional_argument,
            s(:local_variable, 'number', s(:integer, '10'))
          ),
          s(:rest_argument, s(:local_variable, 'rest')),
          s(:more_argument, s(:local_variable, 'more')),
          s(:block_argument, s(:local_variable, 'block'))
        ),
        s(:constant, 'String'),
        s(:body, [s(:return, s(:local_variable, 'required'))])
      )
    )

    @method_call = RubyLint::Definition::RubyMethod.new_from_node(
      s(
        :method,
        'example',
        s(:arguments, s(:argument, s(:integer, '10'))),
        s(:constant, 'String')
      )
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
    @method_def.receiver \
      .is_a?(RubyLint::Definition::RubyObject) \
      .should == true

    @method_def.receiver.name.should == 'String'
  end

  should 'return the method call receiver' do
    @method_call.receiver \
      .is_a?(RubyLint::Definition::RubyObject) \
      .should == true

    @method_call.receiver.name.should == 'String'
  end

  should 'set the correct method definition type' do
    @method_def.method_type.should == :method
  end

  describe 'method definition arguments' do
    should 'return the required arguments' do
      @method_def.arguments.length.should == 1

      required = @method_def.arguments[0]

      required.is_a?(RubyLint::Definition::RubyObject).should == true

      required.name.should == 'required'
    end

    should 'return the optional arguments' do
      @method_def.optional_arguments.length.should == 1

      number = @method_def.optional_arguments[0]

      number.is_a?(RubyLint::Definition::RubyObject).should == true

      number.name.should == 'number'

      number.value.is_a?(RubyLint::Definition::RubyObject).should == true

      number.value.value.should == '10'
    end

    should 'return the rest argument' do
      @method_def.rest_argument.nil?.should == false
      @method_def.rest_argument.name.should == 'rest'
    end

    should 'return the more arguments' do
      @method_def.more_arguments.length.should == 1

      param = @method_def.more_arguments[0]

      param.name.should       == 'more'
      param.value.nil?.should == true
    end

    should 'return the block argument' do
      @method_def.block_argument.nil?.should == false
      @method_def.block_argument.name.should == 'block'
    end

    should 'add method arguments to the definitions list' do
      @method_def.lookup(:local_variable, 'required') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true

      @method_def.lookup(:local_variable, 'block') \
        .is_a?(RubyLint::Definition::RubyObject) \
        .should == true
    end
  end

  describe 'method call arguments' do
    should 'return the specified arguments' do
      @method_call.arguments.length.should == 1

      param = @method_call.arguments[0]

      param.is_a?(RubyLint::Definition::RubyObject).should == true
      param.type.should                                    == :integer
      param.value.should                                   == '10'
    end

    should 'process a constant path' do
      method = RubyLint::Definition::RubyMethod.new_from_node(
        s(
          :method,
          'example',
          s(
            :arguments,
            s(
              :argument,
              s(:constant_path, s(:constant, 'First'), s(:constant, 'Second'))
            )
          ),
          nil,
          nil
        )
      )

      param = method.arguments[0]

      param.is_a?(RubyLint::Definition::RubyObject).should == true
      param.type.should == :constant
      param.name.should == 'Second'

      param.receiver.is_a?(RubyLint::Definition::RubyObject).should == true
      param.receiver.type.should == :constant
      param.receiver.name.should == 'First'
    end
  end

  should 'list all the methods of a class' do
    klass = RubyLint::Definition::RubyObject.new(
      :type => :class,
      :name => 'Example'
    )

    method = RubyLint::Definition::RubyMethod.new(
      :name     => 'class_method',
      :receiver => klass.lookup(:keyword, 'self')
    )

    klass.add(:method, method.name, method)

    methods = klass.list(:method)

    methods.length.should  == 1
    methods[0].name.should == 'class_method'
  end
end
