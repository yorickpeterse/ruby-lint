require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'string interpolation' do
    it 'processes an assignment in a string' do
      code = '"hello #{number = 10}"'
      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').value.value.should == 10
    end
  end
end