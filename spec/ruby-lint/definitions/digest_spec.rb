require 'spec_helper'

describe 'ruby-lint definitions' do
  context 'Digest::SHA1' do
    before :all do
      root   = load_definitions('Digest')
      @const = root.lookup(:const, 'Digest').lookup(:const, 'SHA1')
    end

    it 'defines the "hexdigest" method with 1 required argument' do
      @const.lookup(:method, 'hexdigest').arguments.length.should == 1
    end

    it 'defines the "hexdigest" instance method with 1 required argument' do
      @const.lookup(:instance_method, 'hexdigest').arguments.length.should == 1
    end
  end
end
