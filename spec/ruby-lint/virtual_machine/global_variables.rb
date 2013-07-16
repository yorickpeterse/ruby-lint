require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'global variables' do
    should 'provide a list of default global variables' do
      scope = RubyLint::VirtualMachine.global_scope

      scope.lookup(:gvar, '$LOAD_PATH').is_a?(ruby_object).should == true
      scope.lookup(:gvar, '$9').is_a?(ruby_object).should         == true
    end
  end
end
