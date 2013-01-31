require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing return statements' do
  should 'parse a statement with two parameters' do
    parse('return 10, 20').should == s(
      :return,
      s(:arguments, s(:required_arguments, s(:integer, '10'), s(:integer, '20')))
    )
  end
end
