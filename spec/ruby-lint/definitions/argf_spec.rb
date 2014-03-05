require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'ARGF' do
    before :all do
      root   = load_definitions('ARGF')
      @const = root.lookup(:const, 'ARGF')
    end

    example 'respond to each_line' do
      @const.has_definition?(:instance_method, 'each_line').should == true
    end
  end
end
