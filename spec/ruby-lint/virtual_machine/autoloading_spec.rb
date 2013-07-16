require 'spec_helper'

describe RubyLint::VirtualMachine do
  after do
    RubyLint::VirtualMachine.global_scope.definitions[:const].delete('ERB')
  end

  example 'automatically load constants' do
    definitions = build_definitions('ERB')

    definitions.lookup(:const, 'ERB').is_a?(ruby_object).should == true

    RubyLint::VirtualMachine.global_scope.lookup(:const, 'ERB') \
      .is_a?(ruby_object) \
      .should == true
  end

  example 'automatically load constant paths' do
    definitions = build_definitions('Enumerable::Enumerator')

    definitions.lookup(:const, 'Enumerable') \
      .lookup(:const, 'Enumerator') \
      .is_a?(ruby_object) \
      .should == true

    RubyLint::VirtualMachine.global_scope.lookup(:const, 'Enumerable') \
      .lookup(:const, 'Enumerator') \
      .is_a?(ruby_object) \
      .should == true
  end
end