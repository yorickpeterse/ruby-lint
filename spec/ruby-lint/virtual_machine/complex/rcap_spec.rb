require 'spec_helper'

describe RubyLint::VirtualMachine do
  # https://github.com/farrel/RCAP/blob/master/lib/rcap/cap_1_2/alert.rb
  describe 'rcap' do
    it 'processes the Alert class' do
      code  = fixture('complex/rcap.rb')
      defs  = build_definitions(code)
      const = defs.lookup_constant_path('RCAP::CAP_1_2::Alert')

      const.lookup(:const, 'CAP_VERSION').value.value.should  == '1.2'
      const.has_definition?(:instance_method, 'xmlns').should == true
    end
  end
end