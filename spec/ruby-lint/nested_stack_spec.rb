require 'spec_helper'

describe RubyLint::NestedStack do
  before do
    @stack = RubyLint::NestedStack.new
  end

  it 'adds a new stack' do
    @stack.empty?.should == true

    @stack.add_stack

    @stack.empty?.should == false
  end

  it 'pushes and pop values from the stack' do
    @stack.add_stack
    @stack.push(10)

    @stack.pop.should    == [10]
    @stack.empty?.should == true
  end
end