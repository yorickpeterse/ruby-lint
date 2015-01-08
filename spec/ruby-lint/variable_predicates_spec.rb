require 'spec_helper'

describe RubyLint::VariablePredicates do
  before :all do
    @array = s(:array)
    @hash  = s(:hash)
    @const = s(:const, nil, :A)
    @path  = s(:const, s(:const, nil, :A), :B)
  end

  it 'checks if an object is an array' do
    @array.array?.should == true
  end

  it 'checks if an object is a hash' do
    @hash.hash?.should == true
  end

  it 'checks if an object is a constant' do
    @const.constant?.should == true
  end

  it 'checks if an object is a constant path' do
    @path.constant_path?.should == true
  end

  it 'returns the Ruby class of an object' do
    @array.ruby_class.should == 'Array'
  end
end
