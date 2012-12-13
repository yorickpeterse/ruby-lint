require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Ranges' do
  should 'parse a range created using two dots' do
    parse('0..1').should == s(:dot2, s(:integer, '0'), s(:integer, '1'))
  end

  should 'parse a range created using three dots' do
    parse('0...1').should == s(:dot3, s(:integer, '0'), s(:integer, '1'))
  end
end
