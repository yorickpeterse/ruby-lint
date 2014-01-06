require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'ARGV' do
    before :all do
      root   = load_definitions('ARGV', 'Array')
      @const = root.lookup(:const, 'ARGV')
    end

    example 'treat ARGV as an instance' do
      @const.instance?.should == true
    end

    example 'ARGV should be an Array' do
      @const.has_definition?(:instance_method, 'each').should == true
    end
  end
end
