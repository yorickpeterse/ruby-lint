require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'redefining classes' do
    it 'updates a class when it is redefined' do
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

    context 'updating built-in definitions' do
      before :all do
        code = <<-CODE
class Integer < Numeric
  def foobar
  end
end
        CODE

        defs     = build_definitions(code)
        @integer = defs.lookup(:const, 'Integer')
        @fixnum  = defs.lookup(:const, 'Fixnum')
      end

      it 'includes newly defined methods' do
        @integer.has_definition?(:instance_method, 'foobar').should == true
      end

      it 'includes existing methods' do
        @integer.has_definition?(:instance_method, '%').should == true
      end

      it 'updates definitions that point to the redefined definition' do
        @fixnum.has_definition?(:instance_method, 'foobar').should == true
      end
    end
  end
end
