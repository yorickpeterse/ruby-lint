require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'alias' do
    example 'alias methods' do
      code = <<-CODE
def bar
end

alias foo bar
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'bar').is_a?(ruby_method).should == true
      defs.lookup(:instance_method, 'foo').is_a?(ruby_method).should == true
    end

    example 'alias methods using symbols' do
      code = <<-CODE
def bar
end

alias :foo :bar
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'bar').is_a?(ruby_method).should == true
      defs.lookup(:instance_method, 'foo').is_a?(ruby_method).should == true
    end

    example 'alias methods using alias_method' do
      code = <<-CODE
def bar
end

alias_method :foo, :bar
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'bar').is_a?(ruby_method).should == true
      defs.lookup(:instance_method, 'foo').is_a?(ruby_method).should == true
    end

    example 'alias global variables' do
      code = 'alias $ARGV $*'
      defs = build_definitions(code)

      defs.lookup(:gvar, '$*').is_a?(ruby_object).should    == true
      defs.lookup(:gvar, '$ARGV').is_a?(ruby_object).should == true
    end
  end
end
