require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'global variables' do
    example 'provide a list of default global variables' do
      scope = RubyLint::VirtualMachine.global_scope

      scope.lookup(:gvar, '$LOAD_PATH').is_a?(ruby_object).should == true
      scope.lookup(:gvar, '$9').is_a?(ruby_object).should         == true
    end
  end
end