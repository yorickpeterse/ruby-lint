require 'spec_helper'

describe RubyLint::VirtualMachine do
  context 'inheriting definitions using modules' do
    example 'modules should inherit from Kernel' do
      code = 'module Foo; end'
      defs = build_definitions(code)

      defs.lookup(:const, 'Foo')
        .lookup(:method, 'alias_method')
        .is_a?(ruby_method)
        .should == true
    end
  end
end
