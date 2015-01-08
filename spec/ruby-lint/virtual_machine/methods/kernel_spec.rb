require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'updating the Kernel module' do
    before :all do
      code = <<-CODE
module Kernel
  def foobar
  end
end
      CODE

      @definitions = build_definitions(code)
      @kernel      = @definitions.lookup(:const, 'Kernel')
    end

    it 'adds the method to the Kernel module' do
      @kernel.has_definition?(:instance_method, 'foobar').should == true
    end

    it 'adds the method to the global scope' do
      @definitions.has_definition?(:instance_method, 'foobar').should == true
    end
  end
end
