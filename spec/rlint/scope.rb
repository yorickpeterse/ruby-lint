require File.expand_path('../../helper', __FILE__)

describe 'Rlint::Scope' do
  it 'Look up a symbol in a scope' do
    scope = Rlint::Scope.new

    scope.lookup(:local, 'number').should == nil

    scope.add(:local, 'number', 10)

    scope.lookup(:local, 'number').should == 10
  end

  it 'Look up a symbol in a parent scope' do
    parent = Rlint::Scope.new
    child  = Rlint::Scope.new(parent)

    parent.add(:local, 'number', 10)
    parent.add(:global, '$number', 20)

    parent.lookup(:local, 'number').should   == 10
    parent.lookup(:global, '$number').should == 20

    child.lookup(:local, 'number').should   == nil
    child.lookup(:global, '$number').should == 20
  end
end
