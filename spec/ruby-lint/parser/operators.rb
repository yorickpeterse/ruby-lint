require File.expand_path('../../../helper', __FILE__)

describe 'Parsing operators' do
  it 'Use various basic operators' do
    [:*, :-, :+, :/, :%, :^, :and, :'&&', :or, :'||'].each do |op|
      parse("10 #{op} 2").should == s(
        :binary,
        s(:integer, '10'),
        op,
        s(:integer, '2')
      )
    end
  end

  it 'Use multiple operators' do
    parse('10 and 20 and 30').should == s(
      :binary,
      s(:binary, s(:integer, '10'), :and, s(:integer, '20')),
      :and,
      s(:integer, '30')
    )
  end

  it 'Use a unary operator' do
    parse('!foobar').should == s(
      :unary,
      :!,
      s(:method, 'foobar')
    )
  end
end
