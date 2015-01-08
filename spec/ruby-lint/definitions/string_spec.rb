require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'String' do
    before :all do
      @string = load_definitions('String').lookup(:const, 'String')
    end

    it 'defines self as a class method' do
      @string.lookup(:method, 'self').return_value.class?.should == true
    end

    it 'defines self as an instance method' do
      @string.lookup(:instance_method, 'self')
        .return_value
        .instance?
        .should == true
    end
  end
end
