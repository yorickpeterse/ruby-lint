require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Symbols' do
  it 'Symbol without quotes' do
    parse(':hello').should == s(:symbol, 'hello')
  end

  it 'Symbol with quotes' do
    parse(':"hello"').should == s(:symbol, 'hello')
  end

  it 'Symbol with the name in the format of an instance variable' do
    parse(':@name').should == s(:symbol, '@name')
  end
end
