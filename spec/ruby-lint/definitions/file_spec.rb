require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'File' do
    before :all do
      @file = load_definitions('File').lookup(:const, 'File')
    end

    it 'has the "read" method' do
      @file.has_definition?(:method, 'read').should == true
    end

    it 'has the "open" method' do
      @file.has_definition?(:method, 'open').should == true
    end
  end
end
