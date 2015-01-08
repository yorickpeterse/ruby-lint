require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'ARGV' do
    before :all do
      root   = load_definitions('ARGV', 'Array')
      @const = root.lookup(:const, 'ARGV')
    end

    it 'is an instance' do
      @const.instance?.should == true
    end

    it 'has the instance method "each"' do
      @const.has_definition?(:instance_method, 'each').should == true
    end
  end
end
