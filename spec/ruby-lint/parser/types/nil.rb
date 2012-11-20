require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing nil values' do
  it 'NilClass' do
    parse('nil').should == s(:keyword, 'nil')
  end
end
