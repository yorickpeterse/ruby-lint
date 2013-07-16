require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'defining methods' do
    example 'process a definition with a variable assignment in the body' do
      code = <<-CODE
  def example
    number = 10
  end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example') \
        .lookup(:lvar, 'number') \
        .is_a?(ruby_object) \
        .should == true

      defs.lookup(:lvar, 'number').nil?.should == true
    end

    example 'process a definition with a receiver' do
      code = <<-CODE
  def String.example
    number = 10
  end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'String') \
        .lookup(:method, 'example') \
        .is_a?(ruby_method) \
        .should == true

      defs.lookup(:method, 'example').nil?.should          == true
      defs.lookup(:instance_method, 'example').nil?.should == true
    end
  end
end