require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'constants and local variables' do
    # https://github.com/YorickPeterse/ruby-lint/issues/60
    it 'accesses a constant path using a local variable' do
      code = <<-CODE
module Example
  NUMBER = 10
end

const  = Example
string = const::NUMBER
      CODE

      defs  = build_definitions(code)
      value = defs.lookup(:lvar, 'string').value

      value.type.should  == :int
      value.value.should == 10
    end
  end
end
