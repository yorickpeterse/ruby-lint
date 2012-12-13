require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Arrays' do
  should 'parse an array with integers' do
    parse('[10, 20]').should == s(:array, s(:integer, '10'), s(:integer, '20'))
  end

  should 'parse an array with strings using %w{}' do
    parse('%w{10 20}').should == s(:array, s(:string, '10'), s(:string, '20'))
  end

  should 'parse an array with strings using %W{}' do
    parse('%W{10 20}').should == s(:array, s(:string, '10'), s(:string, '20'))
  end

  should 'parse referencing an index of an array directly' do
    parse('[10][0]').should == s(
      :aref,
      s(:array, s(:integer, '10')),
      [s(:integer, '0')]
    )
  end

  should 'parse referencing multiple indexes of an array directly' do
    parse('[10][0,1]').should == s(
      :aref,
      s(:array, s(:integer, '10')),
      [s(:integer, '0'), s(:integer, '1')]
    )
  end

  should 'parse assigning a value to an array index' do
    parse('[][0] = 10').should == s(
      :assign,
      s(:aref, s(:array), [s(:integer, '0')]),
      s(:integer, '10')
    )
  end
end
