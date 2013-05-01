require File.expand_path('../../../helper', __FILE__)

describe RubyLint::AST::Node do
  should 'return the value for a scalar' do
    s(:str, 'hello').value.should == 'hello'
  end

  should 'return the value for an Array' do
    numbers = s(:array, s(:int, '10'), s(:int, '20')).value

    numbers.is_a?(Array).should == true
    numbers.length.should       == 2

    numbers[0].value.should == '10'
    numbers[1].value.should == '20'
  end

  should 'return the value for a Hash' do
    pairs = s(:hash, s(:pair, s(:str, 'number'), s(:int, '10'))).value

    pairs.is_a?(Array).should == true

    pairs[0].children[1].value.should == '10'
  end

  should 'should try to guess the Ruby class of a node' do
    s(:str, 'foo').ruby_class.should == 'String'
  end

  should 'check if a node is a constant path' do
    s(:const, s(:const, nil, :A), :B).constant_path?.should == true
  end
end
