require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing nil values' do
  should 'parse NilClass' do
    parse('nil').should == s(:keyword, 'nil')
  end
end
