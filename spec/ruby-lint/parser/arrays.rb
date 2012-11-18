require File.expand_path('../../../helper', __FILE__)

describe 'Parsing Arrays' do
  it 'Array with integers' do
    node = RubyLint::Parser.new('[10, 20]').parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :array

    node.children.class.should  == Array
    node.children.length.should == 2

    first, second = node.children

    first.class.should    == RubyLint::Node
    first.type.should     == :integer
    first.children.should == ['10']

    second.class.should    == RubyLint::Node
    second.type.should     == :integer
    second.children.should == ['20']
  end

  it 'Array with strings using %w{}' do
    node = RubyLint::Parser.new('%w{10 20}').parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :array

    node.children.class.should  == Array
    node.children.length.should == 2

    first, second = node.children

    first.class.should    == RubyLint::Node
    first.type.should     == :string
    first.children.should == ['10']

    second.class.should    == RubyLint::Node
    second.type.should     == :string
    second.children.should == ['20']
  end

  it 'Array with strings using %W{}' do
    node = RubyLint::Parser.new('%W{10 20}').parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :array

    node.children.class.should  == Array
    node.children.length.should == 2

    first, second = node.children

    first.class.should    == RubyLint::Node
    first.type.should     == :string
    first.children.should == ['10']

    second.class.should    == RubyLint::Node
    second.type.should     == :string
    second.children.should == ['20']
  end

  it 'referencing an index of an array directly' do
    node = RubyLint::Parser.new("[10][0]").parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :aref

    array, indexes = node.children

    array.class.should == RubyLint::Node
    array.type.should  == :array

    array.children.class.should  == Array
    array.children.length.should == 1

    value = array.children[0]

    value.class.should    == RubyLint::Node
    value.type.should     == :integer
    value.children.should == ['10']

    indexes.class.should  == Array
    indexes.length.should == 1

    indexes[0].class.should    == RubyLint::Node
    indexes[0].type.should     == :integer
    indexes[0].children.should == ['0']
  end

  it 'Referencing multiple indexes of an array directly' do
    node = RubyLint::Parser.new("[10][0,1]").parse.children[0]

    node.class.should == RubyLint::Node
    node.type.should  == :aref

    array, indexes = node.children

    array.class.should == RubyLint::Node
    array.type.should  == :array

    array.children.class.should  == Array
    array.children.length.should == 1

    value = array.children[0]

    value.class.should    == RubyLint::Node
    value.type.should     == :integer
    value.children.should == ['10']

    indexes.class.should  == Array
    indexes.length.should == 2

    indexes[0].class.should    == RubyLint::Node
    indexes[0].type.should     == :integer
    indexes[0].children.should == ['0']

    indexes[1].class.should    == RubyLint::Node
    indexes[1].type.should     == :integer
    indexes[1].children.should == ['1']
  end

  it 'Assigning a value to an array index' do
    node = RubyLint::Parser.new('[][0] = 10').parse.children[0]

    node.class.should           == RubyLint::Node
    node.type.should            == :assign
    node.children.class.should  == Array
    node.children.length.should == 2

    assigned, value = node.children

    assigned.class.should           == RubyLint::Node
    assigned.type.should            == :aref
    assigned.children.class.should  == Array
    assigned.children.length.should == 2

    array, index = assigned.children

    array.class.should           == RubyLint::Node
    array.type.should            == :array
    array.children.class.should  == Array
    array.children.length.should == 0

    index[0].class.should    == RubyLint::Node
    index[0].type.should     == :integer
    index[0].children.should == ['0']

    value.class.should    == RubyLint::Node
    value.type.should     == :integer
    value.children.should == ['10']
  end
end
