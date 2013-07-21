require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'method arguments and docstrings' do
    example 'extract the type of a parameter' do
      code = <<-CODE
# @param [Numeric] number
def example(number)
end
      CODE

      defs = build_definitions(code)

      number  = defs.lookup(:instance_method, 'example').lookup(:lvar, 'number')
      numeric = RubyLint::VirtualMachine.global_constant('Numeric')

      number.is_a?(ruby_object).should        == true
      number.parents.include?(numeric).should == true
    end

    example 'extract the type of a parameter using a method' do
      code = <<-CODE
# @param [#to_s] number
def example(number)
end
      CODE

      defs   = build_definitions(code)
      number = defs.lookup(:instance_method, 'example').lookup(:lvar, 'number')

      number.is_a?(ruby_object).should                                  == true
      number.lookup(:instance_method, 'to_s').is_a?(ruby_method).should == true
    end

    example 'extract multiple types from a parameter' do
      code = <<-CODE
# @param [Float|Fixnum] number
def example(number)
end
      CODE

      float  = RubyLint::VirtualMachine.global_constant('Float')
      fixnum = RubyLint::VirtualMachine.global_constant('Fixnum')

      defs   = build_definitions(code)
      number = defs.lookup(:instance_method, 'example').lookup(:lvar, 'number')

      number.is_a?(ruby_object).should       == true
      number.parents.include?(float).should  == true
      number.parents.include?(fixnum).should == true
    end
  end

  context 'method return values and docstrings' do
    example 'extract the type of a return tag' do
      code = <<-CODE
# @return [Numeric]
def example
end
      CODE

      defs    = build_definitions(code)
      method  = defs.lookup(:instance_method, 'example')
      numeric = RubyLint::VirtualMachine.global_constant('Numeric')

      method.return_value.should == numeric
    end
  end
end
