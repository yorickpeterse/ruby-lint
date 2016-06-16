require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'global variables' do
    before :all do
      @vm   = RubyLint::VirtualMachine.new
      @defs = @vm.definitions
    end

    it 'provides a list of default global variables' do
      @defs.lookup(:gvar, '$LOAD_PATH').is_a?(ruby_object).should == true
      @defs.lookup(:gvar, '$,').is_a?(ruby_object).should         == true
    end
  end
end
