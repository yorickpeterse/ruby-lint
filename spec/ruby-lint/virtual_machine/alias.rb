require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  describe 'alias' do
    should 'alias methods' do
      code = <<-CODE
def bar
end

alias foo bar
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'bar').is_a?(ruby_method).should == true
      defs.lookup(:instance_method, 'foo').is_a?(ruby_method).should == true
    end

    should 'alias methods using symbols' do
      code = <<-CODE
def bar
end

alias :foo :bar
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'bar').is_a?(ruby_method).should == true
      defs.lookup(:instance_method, 'foo').is_a?(ruby_method).should == true
    end

    should 'alias global variables' do
      code = 'alias $ARGV $*'
      defs = build_definitions(code)

      defs.lookup(:gvar, '$*').is_a?(ruby_object).should    == true
      defs.lookup(:gvar, '$ARGV').is_a?(ruby_object).should == true
    end
  end
end
