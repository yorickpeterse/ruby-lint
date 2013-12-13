require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'reference counting' do
    example 'count the amount of references for a variable' do
      code = <<-CODE
  number = 10
  number
  number
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').reference_amount.should == 2
    end

    example 'count the amount of references for a constant path' do
      code = <<-CODE
  module A; end
  A::B = 10
  A::B
  A::B
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'A') \
        .lookup(:const, 'B') \
        .reference_amount \
        .should == 2
    end

    example 'mark variables created using OR/AND assignments as used' do
      code = <<-CODE
number1 = 5

number  ||= 10
number1 &&= 10
      CODE

      defs = build_definitions(code)

      number  = defs.lookup(:lvar, 'number')
      number1 = defs.lookup(:lvar, 'number1')

      number.used?.should  == true
      number1.used?.should == true
    end

    example 'overwriting a variable should increase the reference amount' do
      code = <<-CODE
number = 10
number = 20
      CODE

      defs = build_definitions(code)

      defs.lookup(:lvar, 'number').reference_amount.should == 1
    end

    example 'track ivar references in parent scopes' do
      code = <<-CODE
def first
  @number = 10
end

def second
  @number = 20
  @number
end
      CODE

      defs   = build_definitions(code)
      first  = defs.lookup(:instance_method, 'first').lookup(:ivar, '@number')
      second = defs.lookup(:instance_method, 'second').lookup(:ivar, '@number')

      first.reference_amount.should  == 2
      second.reference_amount.should == 2
    end
  end
end
