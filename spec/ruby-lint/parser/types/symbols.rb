require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Symbols' do
  should 'parse a symbol without quotes' do
    parse(':hello').should == s(:symbol, 'hello')
  end

  should 'parse a symbol with quotes' do
    parse(':"hello"').should == s(:symbol, 'hello')
  end

  should 'parse an instance variable as the symbol name' do
    parse(':@name').should == s(:symbol, '@name')
  end
end
