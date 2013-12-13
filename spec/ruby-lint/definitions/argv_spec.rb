require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'ARGV' do
    before do
      @const = RubyLint::GlobalScope.global_constant('ARGV')
    end

    example 'treat ARGV as an instance' do
      @const.instance?.should == true
    end

    example 'ARGV should be an Array' do
      @const.has_definition?(:instance_method, 'each').should == true
    end
  end
end
