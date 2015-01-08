require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'IO' do
    before :all do
      @root = load_definitions('STDERR', 'STDOUT', 'STDIN')
    end

    it 'treats STDERR/STDOUT/STDIN as instances' do
      %w{STDERR STDOUT STDIN}.each do |name|
        @root.lookup(:const, name).instance?.should == true
      end
    end
  end
end
