require 'spec_helper'

describe RubyLint::Definition::RubyObject do
  context 'method definition DSL' do
    before do
      @method = ruby_method.new(:name => 'example', :type => :instance_method)
    end

    context 'return values' do
      example 'return a static value' do
        @method.returns(10)

        @method.return_value.should == 10
      end

      example 'return a value using a block' do
        @method.returns do
          20
        end

        @method.return_value.is_a?(Proc).should == true
        @method.return_value.call.should        == 20
      end
    end

    context 'calling methods' do
      before do
        @method.returns(10)
      end

      example 'call the method directly' do
        @method.call.should == 10
      end

      example 'call the method by name' do
        container = ruby_object.new(
          :name          => 'String',
          :type          => :const,
          :instance_type => :instance
        )

        container.add_definition(@method)

        container.call_method('example').should == 10
      end

      example 'raise for calling an undefined method' do
        container = ruby_object.new(
          :name          => 'String',
          :type          => :const,
          :instance_type => :instance
        )

        lambda { container.call_method('derp') }
          .should raise_error(NoMethodError, /undefined method derp for/i)
      end
    end

    context 'defining arguments' do
      example 'define an argument' do
        @method.define_argument('number')

        @method.lookup(:arg, 'number').is_a?(ruby_object).should  == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should == true

        @method.arguments[0].is_a?(ruby_object).should == true
      end

      example 'define an optional argument' do
        @method.define_optional_argument('number')

        @method.lookup(:optarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should   == true

        @method.optional_arguments[0].is_a?(ruby_object).should == true
      end

      example 'define a rest argument' do
        @method.define_rest_argument('number')

        @method.lookup(:restarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should    == true

        @method.rest_argument.is_a?(ruby_object).should == true
      end

      example 'define a block argument' do
        @method.define_block_argument('number')

        @method.lookup(:blockarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should     == true

        @method.block_argument.is_a?(ruby_object).should == true
      end

      example 'define a keyword argument' do
        @method.define_keyword_argument('number')

        @method.lookup(:kwoptarg, 'number').is_a?(ruby_object).should == true
        @method.lookup(:lvar, 'number').is_a?(ruby_object).should     == true

        @method.keyword_arguments[0].is_a?(ruby_object).should == true
      end
    end
  end
end
