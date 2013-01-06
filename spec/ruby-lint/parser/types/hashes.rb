require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Hashes' do
  should 'parse a hash with the keys as strings' do
    parse('{"name" => "Ruby", "foo" => "Bar"}').should == s(
      :hash,
      s(:key_value, s(:string, 'name'), s(:string, 'Ruby')),
      s(:key_value, s(:string, 'foo'), s(:string, 'Bar'))
    )
  end

  should 'parse a hash with the keys as symbols' do
    parse('{:name => "Ruby", :foo => "Bar"}').should == s(
      :hash,
      s(:key_value, s(:symbol, 'name'), s(:string, 'Ruby')),
      s(:key_value, s(:symbol, 'foo'), s(:string, 'Bar'))
    )
  end

  should 'parse Ruby 1.9 key syntax' do
    parse('{name: "Ruby", foo: "Bar"}').should == s(
      :hash,
      s(:key_value, s(:symbol, 'name:'), s(:string, 'Ruby')),
      s(:key_value, s(:symbol, 'foo:'), s(:string, 'Bar'))
    )
  end

  should 'parse a hash key reference using a string' do
    parse('{"name" => "Ruby"}["name"]').should == s(
      :aref,
      s(:hash, s(:key_value, s(:string, 'name'), s(:string, 'Ruby'))),
      [s(:string, 'name')]
    )
  end

  should 'parse a hash key reference using a symbol' do
    parse('{"name" => "Ruby"}[:name]').should == s(
      :aref,
      s(:hash, s(:key_value, s(:string, 'name'), s(:string, 'Ruby'))),
      [s(:symbol, 'name')]
    )
  end

  should 'parse the assignment to multiple hash keys' do
    parse('{}[:name] = "Ruby"').should == s(
      :assign,
      s(:aref, s(:hash), [s(:symbol, 'name')]),
      [s(:string, 'Ruby')]
    )
  end
end
