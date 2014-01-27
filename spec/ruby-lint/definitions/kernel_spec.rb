require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Kernel' do
    before :all do
      @root   = load_definitions('Kernel')
      @kernel = @root.lookup(:const, 'Kernel')
    end

    example 'The method is_a?() should be a class method' do
      @kernel.defines?(:method, 'is_a?').should == true
    end

    example 'The method is_a?() should be an instance method' do
      @kernel.defines?(:instance_method, 'is_a?').should == true
    end
  end
end
