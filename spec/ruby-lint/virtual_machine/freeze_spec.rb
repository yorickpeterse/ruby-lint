require 'spec_helper'

describe RubyLint::VirtualMachine do
  example 'freeze the VM and all instance variables' do
    vm = RubyLint::VirtualMachine.new

    vm.freeze

    vm.frozen?.should              == true
    vm.definitions.frozen?.should  == true
    vm.associations.frozen?.should == true
  end
end