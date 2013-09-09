require 'spec_helper'

describe RubyLint::NodeHash do
  before do
    @node_hash = RubyLint::NodeHash.new
    @node      = s(:integer, 10)
  end

  example 'set and get information associated with a node' do
    @node_hash[@node] = 10

    @node_hash[@node].should == 10
  end

  example 'check if a node has been added' do
    @node_hash.key?(@node).should == false

    @node_hash[@node] = 10

    @node_hash.key?(@node).should == true
  end

  example 'return all keys' do
    @node_hash[@node] = 10

    @node_hash.keys.should == [@node.sha1]
  end

  example 'return all values' do
    @node_hash[@node] = 10

    @node_hash.values.should == [10]
  end

  example 'convert to an Array' do
    @node_hash[@node] = 10

    @node_hash.to_a.should == [[@node.sha1, 10]]
  end

  example 'merge with another node hash' do
    other = RubyLint::NodeHash.new(@node.sha1 => 10)

    @node_hash.merge!(other)

    @node_hash.key?(@node).should == true
  end

  example 'merge with another hash' do
    other = {@node => 10}

    @node_hash.merge_hash!(other)

    @node_hash.key?(@node).should == true
  end
end
