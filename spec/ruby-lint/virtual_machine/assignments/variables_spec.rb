require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'variable assignments' do
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
      defs = build_definitions('module Foo; end; Foo::FOO = 10')
      foo  = defs.lookup(:const, 'Foo').lookup(:const, 'FOO')

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

    example 'assign nil to a value' do
      defs  = build_definitions('variable = nil')
      value = defs.lookup(:lvar, 'variable').value

      value.type.should            == :nil
      value.parents[0].name.should == 'NilClass'
    end

    example 'assign true to a value' do
      defs  = build_definitions('variable = true')
      value = defs.lookup(:lvar, 'variable').value

      value.type.should            == :true
      value.parents[0].name.should == 'TrueClass'
    end

    example 'assign false to a value' do
      defs  = build_definitions('variable = false')
      value = defs.lookup(:lvar, 'variable').value

      value.type.should            == :false
      value.parents[0].name.should == 'FalseClass'
    end

    example 'assigning a magic global variable to a variable' do
      defs  = build_definitions('variable = $1')
      value = defs.lookup(:lvar, 'variable').value

      value.type.should == :unknown
    end

    example 'global variables should be assigned in the global scope' do
      code = <<-CODE
class Foo
  def foo
    $bar = 10
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:gvar, '$bar').value.value.should == 10
    end
  end
end
