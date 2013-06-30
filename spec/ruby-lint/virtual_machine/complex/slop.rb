require File.expand_path('../../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'slop' do
    should 'process the Slop gem' do
      code  = fixture('complex/slop.rb')
      defs  = build_definitions(code)
      const = defs.lookup(:const, 'Slop')

      const.lookup(:const, 'VERSION').value.value.should == '3.4.5'

      const.has_definition?(:method, 'parse').should  == true
      const.has_definition?(:method, 'parse!').should == true
    end
  end
end
