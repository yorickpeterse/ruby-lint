require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Range' do
    before :all do
      @range = load_definitions('Range', 'Enumerable').lookup(:const, 'Range')
    end

    it 'has Enumerable as a parent' do
      @range.parents.map(&:name).include?('Enumerable').should == true
    end

    it 'inherits methods from Enumrable' do
      @range.has_definition?(:instance_method, 'map').should == true
    end

    it 'does not define Enumerable methods directly' do
      @range.defines?(:instance_method, 'map').should == false
    end
  end
end
