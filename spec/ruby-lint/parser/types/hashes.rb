require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Hashes' do
  it 'Hash with the keys as Strings' do
    parse('{"name" => "Ruby", "foo" => "Bar"}').should == s(
      :hash,
      s(:key_value, s(:string, 'name'), s(:string, 'Ruby')),
      s(:key_value, s(:string, 'foo'), s(:string, 'Bar'))
    )
  end

  it 'Hash with the keys as Symbols' do
    parse('{:name => "Ruby", :foo => "Bar"}').should == s(
      :hash,
      s(:key_value, s(:symbol, 'name'), s(:string, 'Ruby')),
      s(:key_value, s(:symbol, 'foo'), s(:string, 'Bar'))
    )
  end

  it 'Hash with the keys as Symbols using the 1.9 syntax' do
    parse('{name: "Ruby", foo: "Bar"}').should == s(
      :hash,
      s(:key_value, s(:symbol, 'name:'), s(:string, 'Ruby')),
      s(:key_value, s(:symbol, 'foo:'), s(:string, 'Bar'))
    )
  end

  it 'Reference a key in a Hash using a String' do
    parse('{"name" => "Ruby"}["name"]').should == s(
      :aref,
      s(:hash, s(:key_value, s(:string, 'name'), s(:string, 'Ruby'))),
      [s(:string, 'name')]
    )
  end

  it 'Reference a key in a Hash using a Symbol' do
    parse('{"name" => "Ruby"}[:name]').should == s(
      :aref,
      s(:hash, s(:key_value, s(:string, 'name'), s(:string, 'Ruby'))),
      [s(:symbol, 'name')]
    )
  end
end
