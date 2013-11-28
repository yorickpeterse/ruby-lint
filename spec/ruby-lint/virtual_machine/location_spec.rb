require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'definition location information' do
    example 'store location information of a class' do
      code = <<-CODE
# Example class.
class Example
end
      CODE

      defs = build_definitions(code)
      obj  = defs.lookup(:const, 'Example')

      obj.line.should   == 2
      obj.column.should == 1
      obj.file.should   == '(ruby-lint)'
    end

    example 'store location information of a module' do
      code = <<-CODE
# Example module.
module Example
end
      CODE

      defs = build_definitions(code)
      obj  = defs.lookup(:const, 'Example')

      obj.line.should   == 2
      obj.column.should == 1
      obj.file.should   == '(ruby-lint)'
    end

    example 'store location information of a method' do
      code = <<-CODE
# Example module.
def example
end
      CODE

      defs = build_definitions(code)
      obj  = defs.lookup(:instance_method, 'example')

      obj.line.should   == 2
      obj.column.should == 1
      obj.file.should   == '(ruby-lint)'
    end

    example 'store location information of a variable' do
      code = <<-CODE
# Example assignment
number = 10
      CODE

      defs = build_definitions(code)
      obj  = defs.lookup(:lvar, 'number')

      obj.line.should   == 2
      obj.column.should == 1
      obj.file.should   == '(ruby-lint)'
    end
  end
end
