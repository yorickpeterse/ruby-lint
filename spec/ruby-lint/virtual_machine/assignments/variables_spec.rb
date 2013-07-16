require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'variable assignments' do
    example 'assign different types of variables' do
      types = {
        'number'   => :lvar,
        '@number'  => :ivar,
        '@@number' => :cvar,
        '$number'  => :gvar,
        'NUMBER'   => :const
      }

      types.each do |name, type|
        number = build_definitions("#{name} = 10").lookup(type, name)

        number.name.should        == name
        number.value.value.should == 10
      end
    end

    example 'assign multiple values to multiple variables' do
      defs    = build_definitions('number, numberx = 10, 20')
      number  = defs.lookup(:lvar, 'number')
      numberx = defs.lookup(:lvar, 'numberx')

      number.is_a?(ruby_object).should == true

      number.name.should        == 'number'
      number.value.value.should == 10

      numberx.is_a?(ruby_object).should == true

      numberx.name.should        == 'numberx'
      numberx.value.value.should == 20
    end

    example 'assign a value to a constant path' do
      defs = build_definitions('Kernel::FOO = 10')
      foo  = defs.lookup(:const, 'Kernel').lookup(:const, 'FOO')

      foo.is_a?(ruby_object).should == true

      foo.name.should        == 'FOO'
      foo.value.value.should == 10
    end

    example 'assign a single value to multiple variables' do
      code = 'first = second = third = 10'
      defs = build_definitions(code)

      %w{first second third}.each do |name|
        variable = defs.lookup(:lvar, name)

        variable.is_a?(ruby_object).should == true

        variable.value.type.should  == :int
        variable.value.value.should == 10
      end
    end

    example 'resolve variables in assignments' do
      code = <<-CODE
a = 1
b = a

foo = 100 # to ensure this code doesn't use the last assigned values.

c = b
d = c
      CODE

      defs = build_definitions(code)

      %w{a b c d}.each do |name|
        var = defs.lookup(:lvar, name)

        var.value.type.should  == :int
        var.value.value.should == 1
      end

      defs.lookup(:lvar, 'foo').value.value.should == 100
    end
  end
end