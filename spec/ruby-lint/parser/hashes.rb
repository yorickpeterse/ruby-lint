require File.expand_path('../../../helper', __FILE__)

describe 'Parsing Hashes' do
  it 'Hash with the keys as Strings' do
    node = RubyLint::Parser.new('{"name" => "Ruby", "foo" => "Bar"}') \
      .parse.children[0]

    node.type.should            == :hash
    node.children.class.should  == Array
    node.children.length.should == 2

    name, foo = node.children

    name.class.should           == RubyLint::Node
    name.type.should            == :key_value
    name.children.class.should  == Array
    name.children.length.should == 2

    key, value = name.children

    key.class.should    == RubyLint::Node
    key.type.should     == :string
    key.children.should == ['name']

    value.class.should    == RubyLint::Node
    value.type.should     == :string
    value.children.should == ['Ruby']

    foo.class.should           == RubyLint::Node
    foo.type.should            == :key_value
    foo.children.class.should  == Array
    foo.children.length.should == 2

    key, value = foo.children

    key.class.should    == RubyLint::Node
    key.type.should     == :string
    key.children.should == ['foo']

    value.class.should    == RubyLint::Node
    value.type.should     == :string
    value.children.should == ['Bar']
  end

  it 'Hash with the keys as Symbols' do
    node = RubyLint::Parser.new('{:name => "Ruby", :foo => "Bar"}') \
      .parse.children[0]

    node.type.should            == :hash
    node.children.class.should  == Array
    node.children.length.should == 2

    name, foo = node.children

    name.class.should           == RubyLint::Node
    name.type.should            == :key_value
    name.children.class.should  == Array
    name.children.length.should == 2

    key, value = name.children

    key.class.should    == RubyLint::Node
    key.type.should     == :symbol
    key.children.should == ['name']

    value.class.should    == RubyLint::Node
    value.type.should     == :string
    value.children.should == ['Ruby']

    foo.class.should           == RubyLint::Node
    foo.type.should            == :key_value
    foo.children.class.should  == Array
    foo.children.length.should == 2

    key, value = foo.children

    key.class.should    == RubyLint::Node
    key.type.should     == :symbol
    key.children.should == ['foo']

    value.class.should    == RubyLint::Node
    value.type.should     == :string
    value.children.should == ['Bar']
  end

  it 'Hash with the keys as Symbols using the 1.9 syntax' do
    node = RubyLint::Parser.new('{name: "Ruby", foo: "Bar"}') \
      .parse.children[0]

    node.type.should            == :hash
    node.children.class.should  == Array
    node.children.length.should == 2

    name, foo = node.children

    name.class.should           == RubyLint::Node
    name.type.should            == :key_value
    name.children.class.should  == Array
    name.children.length.should == 2

    key, value = name.children

    key.class.should    == RubyLint::Node
    key.type.should     == :symbol
    key.children.should == ['name:']

    value.class.should    == RubyLint::Node
    value.type.should     == :string
    value.children.should == ['Ruby']

    foo.class.should           == RubyLint::Node
    foo.type.should            == :key_value
    foo.children.class.should  == Array
    foo.children.length.should == 2

    key, value = foo.children

    key.class.should    == RubyLint::Node
    key.type.should     == :symbol
    key.children.should == ['foo:']

    value.class.should    == RubyLint::Node
    value.type.should     == :string
    value.children.should == ['Bar']
  end

  it 'Reference a key in a Hash using a String' do
    node = RubyLint::Parser.new('{"name" => "Ruby"}["name"]') \
      .parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :aref

    node.children.class.should  == Array
    node.children.length.should == 2

    hash, key = node.children
    key       = key[0]

    hash.class.should == RubyLint::Node
    hash.type.should  == :hash

    key.class.should    == RubyLint::Node
    key.type.should     == :string
    key.children.should == ['name']
  end

  it 'Reference a key in a Hash using a Symbol' do
    node = RubyLint::Parser.new('{"name" => "Ruby"}[:name]') \
      .parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :aref

    node.children.class.should  == Array
    node.children.length.should == 2

    hash, key = node.children
    key       = key[0]

    hash.class.should == RubyLint::Node
    hash.type.should  == :hash

    key.class.should    == RubyLint::Node
    key.type.should     == :symbol
    key.children.should == ['name']
  end
end
