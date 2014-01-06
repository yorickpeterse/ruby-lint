require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Fixnum' do
    before :all do
      root    = load_definitions('Fixnum', 'Integer', 'Numeric')
      @fixnum = root.lookup(:const, 'Fixnum')
    end

    example 'inherit from Integer' do
      @fixnum.parents.map(&:name).include?('Integer').should == true
    end

    example 'respond to methods from Numeric' do
      @fixnum.has_definition?(:instance_method, '%').should == true
    end
  end
end
