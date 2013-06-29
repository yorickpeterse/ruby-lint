require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'marking variables as used/unused' do
    should 'mark variables as unused by default' do
      defs = build_definitions('number = 10')

      defs.lookup(:lvar, 'number').used?.should == false
    end

    should 'mark variables as used' do
      defs = build_definitions('number = 10; number')

      defs.lookup(:lvar, 'number').used?.should == true
    end
  end
end
