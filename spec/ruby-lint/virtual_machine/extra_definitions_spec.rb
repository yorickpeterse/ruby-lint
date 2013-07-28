require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'extra definitions' do
    example 'inherit extra definitions' do
      extra = ruby_object.new(:type => :const, :name => 'Extra')
      vm    = RubyLint::VirtualMachine.new(:extra_definitions => extra)

      vm.definitions.lookup(:const, 'Extra').should == extra
    end
  end
end
