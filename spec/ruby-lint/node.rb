require File.expand_path('../../helper', __FILE__)

describe RubyLint::Node do
  should 'return the value for a scalar' do
    s(:string, 'hello').value.should == 'hello'
  end

  should 'return the value for an Array' do
    numbers = s(:array, s(:integer, '10'), s(:integer, '20')).value

    numbers.is_a?(Array).should == true
    numbers.length.should       == 2

    numbers[0].value.should == '10'
    numbers[1].value.should == '20'
  end

  should 'return the value for a Hash' do
    pairs = s(:hash, s(:key_value, 'number', s(:integer, '10'))).value

    pairs.is_a?(Array).should == true

    pairs[0].children[1].value.should == '10'
  end
end
