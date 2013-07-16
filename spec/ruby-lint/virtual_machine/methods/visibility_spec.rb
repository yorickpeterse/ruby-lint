require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'method visibility' do
    example 'define a method as public' do
      code = <<-CODE
def example
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example').visibility.should == :public
    end

    example 'define a method as private' do
      code = <<-CODE
private

def example
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example').visibility.should == :private
    end

    example 'define a method as protected' do
      code = <<-CODE
protected

def example
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example').visibility.should == :protected
    end

    example 'define a method as private and then reset it' do
      code = <<-CODE
private

def example
end

public

def example_public
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example').visibility.should == :private

      defs.lookup(:instance_method, 'example_public') \
        .visibility \
        .should == :public
    end
  end
end