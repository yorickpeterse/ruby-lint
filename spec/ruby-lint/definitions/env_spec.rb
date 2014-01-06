require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'ENV' do
    before :all do
      @const = load_definitions('ENV').lookup(:const, 'ENV')
    end

    example 'treat ENV as an instance' do
      @const.instance?.should == true
    end
  end
end
