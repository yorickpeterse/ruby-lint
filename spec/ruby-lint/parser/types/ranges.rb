require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Ranges' do
  it 'Range created using two dots' do
    parse('0..1').should == s(:dot2, s(:integer, '0'), s(:integer, '1'))
  end

  it 'Range created using three dots' do
    parse('0...1').should == s(:dot3, s(:integer, '0'), s(:integer, '1'))
  end
end
