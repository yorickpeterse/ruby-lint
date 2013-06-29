require File.expand_path('../../helper', __FILE__)

describe RubyLint::NestedStack do
  before do
    @stack = RubyLint::NestedStack.new
  end

  should 'add a new stack' do
    @stack.empty?.should == true

    @stack.add_stack

    @stack.empty?.should == false
  end

  should 'push and pop values from the stack' do
    @stack.add_stack
    @stack.push(10)

    @stack.pop.should    == [10]
    @stack.empty?.should == true
  end
end
