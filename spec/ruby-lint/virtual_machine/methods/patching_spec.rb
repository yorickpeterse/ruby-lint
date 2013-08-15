require 'spec_helper'

describe RubyLint::VirtualMachine do
  describe 'patching methods' do
    after do
      RubyLint::GlobalScope.definitions.lookup(:const, 'String') \
        .definitions[:method] \
        .delete('foobar')
    end

    example 'add a class method to the String class' do
      code = <<-CODE
class String
  def self.foobar
  end
end
      CODE

      defs = build_definitions(code)

      defs.lookup(:const, 'String') \
        .has_definition?(:method, 'foobar') \
        .should == true
    end
  end
end
