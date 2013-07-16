require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'marking variables as used/unused' do
    example 'mark variables as unused by default' do
      defs = build_definitions('number = 10')

      defs.lookup(:lvar, 'number').used?.should == false
    end

    example 'mark variables as used' do
      defs = build_definitions('number = 10; number')

      defs.lookup(:lvar, 'number').used?.should == true
    end
  end
end