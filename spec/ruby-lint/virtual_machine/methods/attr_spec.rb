require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'attr methods' do
    it 'should define a read-only attribute using #attr' do
      code = <<-CODE
class Example
  attr :number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .has_definition?(:instance_method, 'number')
        .should == true

      defs.lookup(:const, 'Example')
        .has_definition?(:ivar, '@number')
        .should == true

      defs.lookup(:const, 'Example')
        .lookup(:ivar, '@number')
        .used?
        .should == true
    end

    it 'should define an accessor attribute using #attr' do
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

      defs.lookup(:const, 'Example')
        .has_definition?(:ivar, '@number')
        .should == true
    end

    it 'should define a read-only attribute using #attr_reader' do
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

      defs.lookup(:const, 'Example')
        .has_definition?(:ivar, '@number')
        .should == true
    end

    it 'should define a write-only attribute using #attr_writer' do
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

      defs.lookup(:const, 'Example')
        .has_definition?(:ivar, '@number')
        .should == true
    end

    it 'should define an accessor attribute using #attr_accessor' do
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

      defs.lookup(:const, 'Example')
        .has_definition?(:ivar, '@number')
        .should == true
    end
  end

  context 'attr methods and argument amounts' do
    it 'sets the arguments for attr' do
      code = <<-CODE
class Example
  attr :foo
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .lookup(:instance_method, 'foo')
        .arguments
        .empty?
        .should == true
    end

    it 'sets the arguments for attr_reader' do
      code = <<-CODE
class Example
  attr_reader :foo
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .lookup(:instance_method, 'foo')
        .arguments
        .empty?
        .should == true
    end

    it 'sets the arguments for attr_writer' do
      code = <<-CODE
class Example
  attr_writer :foo
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .lookup(:instance_method, 'foo=')
        .arguments
        .length
        .should == 1
    end

    it 'sets the arguments for attr_accessor' do
      code = <<-CODE
class Example
  attr_accessor :foo
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'Example')
        .lookup(:instance_method, 'foo=')
        .arguments
        .length
        .should == 1
    end
  end
end
