require 'spec_helper'

describe RubyLint::VirtualMachine do
  # https://github.com/YorickPeterse/ruby-lint/issues/80
  context 'defining square bracket methods' do
    before do
      code = <<-CODE
class Example
  def [](key)
  end

  def []=(key, value)
  end
end
      CODE

      @definitions = build_definitions(code)
    end

    example 'define the [] method' do
      @definitions.lookup(:const, 'Example')
        .has_definition?(:instance_method, '[]')
        .should == true
    end

    example 'define the []= method' do
      @definitions.lookup(:const, 'Example')
        .has_definition?(:instance_method, '[]=')
        .should == true
    end
  end
end
