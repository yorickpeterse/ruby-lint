require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing super statements' do
  should 'parse a statement without parameters' do
    parse('super').should == s(:super, nil)
  end

  should 'parse a statement with parameters' do
    parse('super 10, 20').should == s(
      :super,
      [
        s(:integer, '10'),
        s(:integer, '20')
      ]
    )
  end

  should 'parse a statement with parenthesis' do
    parse('super()').should == s(:super, nil)
  end

  should 'parse a statement with parenthesis and parameters' do
    parse('super(10, 20)').should == s(
      :super,
      [
        s(:integer, '10'),
        s(:integer, '20')
      ]
    )
  end

  should 'parse a statement with a block' do
    parse('super do; end').should == s(:super, nil, s(:block, nil, []))
  end

  should 'parse a statement with a block and parameters' do
    parse('super 10 do; end').should == s(
      :super,
      [s(:integer, '10')],
      s(:block, nil, [])
    )
  end
end
