require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'File' do
    before :all do
      @file = load_definitions('File').lookup(:const, 'File')
    end

    example 'automatically load IO when needed' do
      @file.has_definition?(:method, 'read').should == true
    end
  end
end
