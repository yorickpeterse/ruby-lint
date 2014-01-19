require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'define_method' do
    example 'change the instance type of the block to `:instance`' do
      code = <<-CODE
class A
  define_method(:example) do
  end
end
      CODE

      assoc = build_associations(code).to_a[-2].last

      assoc.type.should          == :block
      assoc.instance_type.should == :instance
    end

    example 'should not mess up nested blocks' do
      code = <<-CODE
class A
  something.each do
    define_method(:example) do
    end
  end
end
      CODE

      assoc = build_associations(code).to_a

      something = assoc[2].last
      define    = assoc[4].last

      something.type.should          == :block
      something.instance_type.should == :class

      define.type.should          == :block
      define.instance_type.should == :instance
    end
  end
end
