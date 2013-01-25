require File.expand_path('../../../../helper', __FILE__)

describe 'Marking variables as used/unused' do
  should 'mark variables as unused by default' do
    defs = build_definitions('number = 10')

    defs.lookup(:local_variable, 'number').used?.should == false
  end

  should 'mark variables as used' do
    defs = build_definitions('number = 10; number')

    defs.lookup(:local_variable, 'number').used?.should == true
  end
end
