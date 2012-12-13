require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing booleans' do
  should 'parse a TrueClass' do
    parse('true').should == s(:keyword, 'true')
  end

  should 'parse a Falseclass' do
    parse('false').should == s(:keyword, 'false')
  end
end
