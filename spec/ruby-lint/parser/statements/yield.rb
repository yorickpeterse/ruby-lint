require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing yield statements' do
  should 'parse a statement without parameters' do
    parse('yield').should == s(:yield)
  end

  should 'parse a statement with parameters' do
    parse('yield 10, 20').should == s(
      :yield,
      s(:arguments, s(:required_arguments, s(:integer, '10'), s(:integer, '20')))
    )
  end
end
