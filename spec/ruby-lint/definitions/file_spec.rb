require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'File' do
    before :all do
      @file = load_definitions('File').lookup(:const, 'File')
    end

    example 'File.read should be defined' do
      @file.has_definition?(:method, 'read').should == true
    end

    example 'File.open should be defined' do
      @file.has_definition?(:method, 'open').should == true
    end
  end
end
