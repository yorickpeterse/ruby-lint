require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'scoping method definitions' do
    it 'processes a global method' do
      defs    = build_definitions('def example; end')
      example = defs.lookup(:instance_method, 'example')

      example.is_a?(ruby_method).should == true

      example.type.should == :instance_method
      example.name.should == 'example'
    end

    it 'processes a nested method' do
      code = <<-CODE
def first
  def second
  end
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:instance_method, 'first')

      first.is_a?(ruby_method).should == true

      first.lookup(:instance_method, 'second') \
        .is_a?(ruby_method) \
        .should == true

      defs.lookup(:instance_method, 'second').nil?.should == true
    end

    it 'processes a global and nested method' do
      code = <<-CODE
def first
  def second
  end
end

def third
end
      CODE

      defs  = build_definitions(code)
      first = defs.lookup(:instance_method, 'first')

      first.lookup(:instance_method, 'second') \
        .is_a?(ruby_method) \
        .should == true

      first.lookup(:instance_method, 'second') \
        .lookup(:instance_method, 'third') \
        .is_a?(ruby_method) \
        .should == true

      defs.lookup(:instance_method, 'third') \
        .is_a?(ruby_method) \
        .should == true
    end
  end
end