require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'hash assignments' do
    example 'assign an empty hash' do
      defs  = build_definitions('numbers = {}')
      value = defs.lookup(:lvar, 'numbers').value

      value.type.should      == :hash
      value.instance?.should == true

      value.has_definition?(:instance_method, 'each').should == true
    end

    example 'assign a hash with values' do
      defs    = build_definitions('numbers = {:one => 1, :two => 2}')
      hash    = defs.lookup(:lvar, 'numbers').value
      members = {'one' => 1, 'two' => 2}

      members.each do |name, value|
        member = hash.lookup(:member, name)

        member.name.should        == name
        member.value.type.should  == :int
        member.value.value.should == value
      end
    end

    example 'process single key assignments' do
      defs   = build_definitions('numbers = {}; numbers[:one] = 1')
      hash   = defs.lookup(:lvar, 'numbers').value
      member = hash.lookup(:member, 'one')

      member.value.type.should  == :int
      member.value.value.should == 1
    end

    example 'process key assignments using variables' do
      code = <<-CODE
key          = :two
numbers      = {:one => 1}
numbers[key] = 2
      CODE

      defs = build_definitions(code)
      hash = defs.lookup(:lvar, 'numbers').value

      hash.lookup(:member, 'one').value.value.should == 1
      hash.lookup(:member, 'two').value.value.should == 2
    end
  end
end