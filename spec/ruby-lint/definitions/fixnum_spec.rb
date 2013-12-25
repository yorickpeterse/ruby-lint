require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Fixnum' do
    before do
      @fixnum = RubyLint::GlobalScope.global_constant('Fixnum')
    end

    example 'inherit from Integer' do
      @fixnum.parents.map(&:name).include?('Integer').should == true
    end

    example 'respond to methods from Numeric' do
      @fixnum.has_definition?(:instance_method, '%').should == true
    end
  end
end
