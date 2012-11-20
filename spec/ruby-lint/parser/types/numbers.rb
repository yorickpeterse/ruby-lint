require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing numbers' do
  it 'Integers' do
    parse('10').should == s(:integer, '10')
  end

  it 'Floats' do
    parse('10.5').should == s(:float, '10.5')
  end
end
