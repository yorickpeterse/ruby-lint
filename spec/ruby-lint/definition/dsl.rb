require File.expand_path('../../../helper', __FILE__)

describe RubyLint::Definition::RubyObject do
  before do
    @first = ruby_object.new(:name => 'First', :type => :const)
  end

  describe 'definining constants using a DSL' do
    should 'define a constant' do
      @first.define_constant('B')

      @first.lookup(:const, 'B').is_a?(ruby_object).should == true
    end

    should 'define a constant using a block' do
      @first.define_constant('B') do |b|
        b.define_constant('C')
      end

      @first.lookup(:const, 'B') \
        .lookup(:const, 'C') \
        .is_a?(ruby_object) \
        .should == true
    end

    should 'inherit from another object' do
      @first.define_constant('B') do |b|
        b.define_constant('C')
      end

      @first.define_constant('D') do |d|
        d.inherits(@first.lookup(:const, 'B'))
      end

      @first.lookup(:const, 'D') \
        .lookup(:const, 'C') \
        .is_a?(ruby_object) \
        .should == true
    end

    should 'define a constant using a constant path' do
      @first.define_constant('A')
      @first.define_constant('A::B')

      @first.lookup(:const, 'A') \
        .lookup(:const, 'B') \
        .is_a?(ruby_object) \
        .should == true
    end
  end

  describe 'defining methods using a DSL' do
    should 'define a method' do
      @first.define_method('example')

      @first.lookup(:method, 'example').is_a?(ruby_method).should == true
    end

    should 'define an instance method' do
      @first.define_instance_method('example')

      @first.lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    should 'define a method\'s return value' do
      string = ruby_object.new(:type => :str, :value => 'hello')

      @first.define_method('example') do |example|
        example.returns(string)
      end

      @first.lookup(:method, 'example') \
        .return_value \
        .is_a?(ruby_object) \
        .should == true
    end

    should 'add a required argument' do
      arg = method_with_argument(@first, :argument).arguments.first

      arg.is_a?(ruby_object).should == true
      arg.name.should                == 'number'
    end

    should 'add a optional argument' do
      arg = method_with_argument(@first, :optional_argument) \
        .optional_arguments \
        .first

      arg.is_a?(ruby_object).should == true
      arg.name.should                == 'number'
    end

    should 'add a rest argument' do
      arg = method_with_argument(@first, :rest_argument).rest_argument

      arg.is_a?(ruby_object).should == true
      arg.name.should                == 'number'
    end

    should 'add a block argument' do
      arg = method_with_argument(@first, :block_argument).block_argument

      arg.is_a?(ruby_object).should == true
      arg.name.should                == 'number'
    end

    should 'easily define constructor methods' do
      @first.define_constructors do |method|
        method.define_argument('name')
      end

      @first.lookup(:method, 'new').arguments[0].name.should == 'name'

      @first.lookup(:instance_method, 'initialize') \
        .arguments[0] \
        .name \
        .should == 'name'
    end
  end

  describe 'defining global variables using a DSL' do
    should 'define a global variable' do
      @first.define_global_variable('$number', '10')

      found = @first.lookup(:gvar, '$number')

      found.is_a?(ruby_object).should == true
      found.type.should               == :gvar
      found.name.should               == '$number'
    end
  end
end
