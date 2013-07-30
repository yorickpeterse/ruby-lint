require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'attr methods' do
    example 'should define a read-only attribute using #attr' do
      code = <<-CODE
class Example
  attr :number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number')
        .should == true
    end

    example 'should define an accessor attribute using #attr' do
      code = <<-CODE
class Example
  attr :number, true
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number')
        .should == true

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number=')
        .should == true
    end

    example 'should define a read-only attribute using #attr_reader' do
      code = <<-CODE
class Example
  attr_reader :number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number')
        .should == true

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number=')
        .should == false
    end

    example 'should define a write-only attribute using #attr_writer' do
      code = <<-CODE
class Example
  attr_writer :number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number')
        .should == false

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number=')
        .should == true
    end

    example 'should define an accessor attribute using #attr_accessor' do
      code = <<-CODE
class Example
  attr_accessor :number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number')
        .should == true

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number=')
        .should == true
    end
  end
end
