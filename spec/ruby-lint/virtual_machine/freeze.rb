require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  should 'freeze the VM and all instance variables' do
    vm = RubyLint::VirtualMachine.new

    vm.freeze

    vm.frozen?.should              == true
    vm.definitions.frozen?.should  == true
    vm.associations.frozen?.should == true
  end
end
