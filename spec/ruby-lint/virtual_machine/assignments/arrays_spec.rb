require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'array assignments' do
    example 'assign an empty array' do
      defs  = build_definitions('numbers = []')
      value = defs.lookup(:lvar, 'numbers').value

      value.type.should      == :array
      value.instance?.should == true

      value.has_definition?(:instance_method, 'each').should == true
    end

    example 'assign an array with values' do
      defs    = build_definitions('numbers = [10, 20]')
      array   = defs.lookup(:lvar, 'numbers').value
      members = [10, 20]

      members.each_with_index do |value, index|
        index  = index.to_s
        member = array.lookup(:member, index)

        member.name.should        == index
        member.value.type.should  == :int
        member.value.value.should == value
      end
    end

    example 'process single index assignments' do
      code = <<-CODE
  numbers    = []
  numbers[0] = 10
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:lvar, 'numbers')

      numbers.is_a?(ruby_object).should       == true
      numbers.value.is_a?(ruby_object).should == true
      numbers.value.type.should               == :array

      first = numbers.value.lookup(:member, '0')

      first.type.should == :member
      first.name.should == '0'

      first.value.is_a?(ruby_object).should == true
      first.value.type.should               == :int
      first.value.value.should              == 10
    end

    example 'process multiple index assignments' do
      code = <<-CODE
numbers        = []
numbers[0,1]   = 10
numbers[2,3]   = 20, 30
numbers[4,5,6] = 40, 50
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:lvar, 'numbers').value

      numbers.lookup(:member, '0').value.value.should == 10
      numbers.lookup(:member, '1').value.should       == nil
      numbers.lookup(:member, '2').value.value.should == 20
      numbers.lookup(:member, '3').value.value.should == 30
      numbers.lookup(:member, '4').value.value.should == 40
      numbers.lookup(:member, '5').value.value.should == 50
      numbers.lookup(:member, '6').value.should       == nil
    end

    example 'process index assignments using variables' do
      code = <<-CODE
index          = 1
numbers        = [10]
numbers[index] = 20
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:lvar, 'numbers').value

      numbers.lookup(:member, '0').value.value.should == 10
      numbers.lookup(:member, '1').value.value.should == 20
    end
  end
end