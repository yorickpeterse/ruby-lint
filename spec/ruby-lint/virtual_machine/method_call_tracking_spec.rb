require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'method call tracking' do
    before :all do
      code = <<-CODE
def first_method
end

def second_method
end

def third_method
  first_method
  second_method
  String.new
end
      CODE

      definitions = build_definitions(code)
      @first      = definitions.lookup(:instance_method, 'first_method')
      @second     = definitions.lookup(:instance_method, 'second_method')
      @third      = definitions.lookup(:instance_method, 'third_method')
      @string     = definitions.lookup(:const, 'String')
    end

    it 'tracks the right amount of method calls' do
      @third.calls.length.should == 3
    end

    it 'tracks call location information' do
      @third.calls[0].line.should   == 8
      @third.calls[0].column.should == 3

      @third.calls[1].line.should   == 9
      @third.calls[1].column.should == 3
    end

    it 'tracks the call definitions' do
      @third.calls[0].definition.should == @first
      @third.calls[1].definition.should == @second
    end

    it 'tracks call location information in inverse direction' do
      @first.callers[0].line.should   == 8
      @first.callers[0].column.should == 3

      @second.callers[0].line.should   == 9
      @second.callers[0].column.should == 3
    end

    it 'tracks method calls in inverse direction' do
      @first.callers[0].definition.should  == @third
      @second.callers[0].definition.should == @third
    end
  end
end
