require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Range' do
    before :all do
      @range = RubyLint::GlobalScope.global_constant('Range')
    end

    example 'inherit from Enumrable' do
      @range.has_definition?(:instance_method, 'map').should == true
    end
  end
end
