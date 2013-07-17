require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'creating variables for method parameters' do
    example 'create local variables' do
      code = <<-CODE
def example(number)
  return number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example') \
        .lookup(:lvar, 'number') \
        .is_a?(ruby_object) \
        .should == true
    end

    example 'allow the assignment using parameters' do
      code = <<-CODE
def example(number)
  other_number = number
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:instance_method, 'example') \
        .lookup(:lvar, 'other_number') \
        .is_a?(ruby_object) \
        .should == true
    end

    example 'take all argument types into account' do
      code = <<-CODE
def example(required, optional = 10, *splat, more, &block)
  _required = required
  _optional = optional
  _splat    = splat
  _more     = more
  _block    = block
end
      CODE

      defs   = build_definitions(code)
      method = defs.lookup(:instance_method, 'example')

      %w{_required _splat _more _block}.each do |name|
        method.lookup(:lvar, name).is_a?(ruby_object).should == true
      end

      method.lookup(:lvar, '_optional').value.value.should == 10
    end

    example 'store arguments under special types' do
      code = <<-CODE
def example(required, optional = 10, *splat, more, &block)
end
      CODE

      defs   = build_definitions(code)
      method = defs.lookup(:instance_method, 'example')
      types  = [
        [:arg, 'required'],
        [:optarg, 'optional'],
        [:restarg, 'splat'],
        [:arg, 'more'],
        [:blockarg, 'block']
      ]

      types.each do |(type, name)|
        method.lookup(type, name).is_a?(ruby_object).should == true
      end
    end

    # Keyword arguments were introduced in Ruby 2.0.
    specific_ruby_version '2.0' do
      example 'support keyword arguments' do
        code   = 'def example(number: 10); end'
        defs   = build_definitions(code)
        method = defs.lookup(:instance_method, 'example')

        method.lookup(:lvar, 'number').value.value.should == 10
      end
    end
  end
end
