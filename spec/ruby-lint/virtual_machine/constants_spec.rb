require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'generic constants' do
    # These tests are put in place to ensure that a class/module can refer to
    # itself without having to look anything up in parent scopes. An example:
    #
    #     class Foo
    #       Foo # => points to the class
    #     end
    #
    example 'add the constant to itself' do
      code = <<-CODE
  module A
  end

  class B
  end
      CODE

      defs  = build_definitions(code)
      mod   = defs.lookup(:const, 'A')
      klass = defs.lookup(:const, 'B')

      # `lookup_parent` is set to false to ensure that the code doesn't use
      # parent scopes to find the constant.
      mod.lookup(:const, 'A', false).should   == mod
      klass.lookup(:const, 'B', false).should == klass
    end
  end
end
