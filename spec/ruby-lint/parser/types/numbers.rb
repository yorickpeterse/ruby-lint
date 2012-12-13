require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing numbers' do
  should 'parse a integer' do
    parse('10').should == s(:integer, '10')
  end

  should 'parse a float' do
    parse('10.5').should == s(:float, '10.5')
  end
end
