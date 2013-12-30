require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'redefining classes' do
    example 'update a class when it is redefined' do
      code = <<-CODE
class First
end

class First
  def example
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'First') \
        .lookup(:instance_method, 'example') \
        .is_a?(ruby_method) \
        .should == true
    end

    example 'update a built-in definition' do
      code = <<-CODE
class Integer
  def foobar
  end
end
      CODE

      pending 'This is currently not yet supported'

      defs = build_definitions(code)
      int  = defs.lookup(:const, 'Integer')

      int.has_definition?(:instance_method, 'foobar').should == true
      int.has_definition?(:instance_method, '%').should      == true
    end
  end
end
