require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  describe 'array index assignments' do
    should 'process single index assignments' do
      code = <<-CODE
  numbers    = []
  numbers[0] = 10
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.is_a?(RubyLint::Definition::RubyObject).should == true

      numbers.value.is_a?(RubyLint::Definition::RubyObject).should == true
      numbers.value.type.should == :array

      first = numbers.lookup(:member, 0)

      first.is_a?(RubyLint::Definition::RubyObject).should == true
      first.type.should  == :integer

      first.value.is_a?(RubyLint::Definition::RubyObject).should == true
      first.value.type.should  == :integer
      first.value.value.should == '10'
    end

    should 'process multiple index assignments' do
      code = <<-CODE
numbers        = []
numbers[0,1]   = 10
numbers[2,3]   = 20, 30
numbers[4,5,6] = 40, 50
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.lookup(:member, '0').value.value.should == '10'
      numbers.lookup(:member, '1').value.should       == nil
      numbers.lookup(:member, '2').value.value.should == '20'
      numbers.lookup(:member, '3').value.value.should == '30'
      numbers.lookup(:member, '4').value.value.should == '40'
      numbers.lookup(:member, '5').value.value.should == '50'
      numbers.lookup(:member, '6').value.should       == nil
    end

    should 'process index assignments using variables' do
      code = <<-CODE
index          = 1
numbers        = [10]
numbers[index] = 20
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.lookup(:member, '0').value.value.should == '10'
      numbers.lookup(:member, '1').value.value.should == '20'
    end
  end
end
