require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing booleans' do
  it 'TrueClass' do
    parse('true').should == s(:keyword, 'true')
  end

  it 'Falseclass' do
    parse('false').should == s(:keyword, 'false')
  end
end
