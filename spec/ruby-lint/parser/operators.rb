require File.expand_path('../../../helper', __FILE__)

describe 'Parsing operators' do
  it 'should parse various basic operators' do
    [:*, :-, :+, :/, :%, :^, :and, :'&&', :or, :'||'].each do |op|
      parse("10 #{op} 2").should == s(
        :binary,
        s(:integer, '10'),
        op,
        s(:integer, '2')
      )
    end
  end

  should 'parse the use of multiple operators at once' do
    parse('10 and 20 and 30').should == s(
      :binary,
      s(:binary, s(:integer, '10'), :and, s(:integer, '20')),
      :and,
      s(:integer, '30')
    )
  end

  should 'parse a unary operator' do
    parse('!foobar').should == s(
      :unary,
      :!,
      s(:method, 'foobar', s(:arguments), nil, nil)
    )
  end

  should 'parse a ternary operator' do
    parse('statement ? true : false').should == s(
      :ternary,
      s(:method, 'statement', s(:arguments), nil, nil),
      s(:keyword, 'true'),
      s(:keyword, 'false')
    )
  end
end
