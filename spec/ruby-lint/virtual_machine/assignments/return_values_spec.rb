require 'spec_helper'

describe 'Using return values in assignments' do
  example 'assign a return value' do
    code  = 'word = String.new'
    defs  = build_definitions(code)
    value = defs.lookup(:lvar, 'word').value

    value.is_a?(ruby_object).should == true

    value.type.should      == :const
    value.name.should      == 'String'
    value.instance?.should == true
  end

  example 'assign a nil value for a missing return value' do
    code = <<-CODE
def example
end

number = example
    CODE

    defs = build_definitions(code)

    defs.lookup(:lvar, 'number').value.type.should == :unknown
  end

  example 'assign return values when chaining method calls' do
    code  = 'word = String.new.initialize.initialize'
    defs  = build_definitions(code)
    value = defs.lookup(:lvar, 'word').value

    value.is_a?(ruby_object).should == true

    value.type.should      == :const
    value.name.should      == 'String'
    value.instance?.should == true
  end

  describe 'setting instance types for core Ruby types' do
    example 'create a new String instance' do
      defs = build_definitions('number = "10"')

      defs.lookup(:lvar, 'number').value.instance?.should == true
    end

    example 'create a new Symbol instance' do
      defs = build_definitions('number = :"10"')

      defs.lookup(:lvar, 'number').value.instance?.should == true
    end

    example 'create a new Fixnum instance' do
      defs = build_definitions('number = 10')

      defs.lookup(:lvar, 'number').value.instance?.should == true
    end

    example 'create a new Float instance' do
      defs = build_definitions('number = 10.0')

      defs.lookup(:lvar, 'number').value.instance?.should == true
    end

    example 'create a new Array instance' do
      defs = build_definitions('number = [10]')

      defs.lookup(:lvar, 'number').value.instance?.should == true
    end

    example 'create a new Hash instance' do
      defs = build_definitions('number = {:a => 10}')

      defs.lookup(:lvar, 'number').value.instance?.should == true
    end
  end
end
