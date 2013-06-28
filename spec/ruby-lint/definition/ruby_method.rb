require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyObject do
  describe 'method definition DSL' do
    before do
      @method = ruby_method.new(:name => 'example', :type => :instance_method)
    end

    describe 'return values' do
      should 'return a static value' do
        @method.returns(10)

        @method.return_value.should == 10
      end

      should 'return a value using a block' do
        @method.returns do
          20
        end

        @method.return_value.is_a?(Proc).should == true
        @method.return_value.call.should        == 20
      end
    end

    describe 'calling methods' do
      before do
        @method.returns(10)
      end

      should 'call the method directly' do
        @method.call.should == 10
      end

      should 'call the method by name' do
        container = ruby_object.new(
          :name          => 'String',
          :type          => :const,
          :instance_type => :instance
        )

        container.add_definition(@method)

        container.call_method('example').should == 10
      end
    end

    describe 'defining arguments' do
      should 'define an argument' do
        @method.define_argument('number')

        @method.lookup(:arg, 'number').is_a?(ruby_object).should  == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should == true
      end

      should 'define an optional argument' do
        @method.define_optional_argument('number')

        @method.lookup(:optarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should   == true
      end

      should 'define a rest argument' do
        @method.define_rest_argument('number')

        @method.lookup(:restarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should   == true
      end

      should 'define a block argument' do
        @method.define_block_argument('number')

        @method.lookup(:blockarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should   == true
      end
    end
  end
end
