require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Kernel' do
    before :all do
      @root   = load_definitions('Kernel')
      @kernel = @root.lookup(:const, 'Kernel')
    end

    it 'defines the "is_a?" method' do
      @kernel.defines?(:method, 'is_a?').should == true
    end

    it 'defines the "is_a?" instance method' do
      @kernel.defines?(:instance_method, 'is_a?').should == true
    end
  end
end
