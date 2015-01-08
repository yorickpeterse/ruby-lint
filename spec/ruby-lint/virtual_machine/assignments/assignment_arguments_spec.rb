require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'variable assignments as method arguments' do
    it 'assigns a local variable in a method argument' do
      code  = 'puts(number = 10)'
      defs  = build_definitions(code)
      value = defs.lookup(:lvar, 'number').value

      value.type.should  == :int
      value.value.should == 10
    end
  end
end
