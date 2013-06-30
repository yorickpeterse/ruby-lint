require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'string interpolation' do
    should 'process an assignment in a string' do
      code = '"hello #{number = 10}"'
      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').value.value.should == 10
    end
  end
end
