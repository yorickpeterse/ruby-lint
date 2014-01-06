require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Range' do
    before :all do
      @range = load_definitions('Range', 'Enumerable').lookup(:const, 'Range')
    end

    example 'Enumerable should be a parent' do
      @range.parents.map(&:name).include?('Enumerable').should == true
    end

    example 'inherit methods from Enumrable' do
      @range.has_definition?(:instance_method, 'map').should == true
    end
  end
end
