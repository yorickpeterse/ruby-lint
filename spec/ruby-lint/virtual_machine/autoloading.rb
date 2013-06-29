require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  after do
    RubyLint.global_scope.definitions[:const].delete('ERB')
  end

  should 'automatically load constants' do
    definitions = build_definitions('ERB')

    definitions.lookup(:const, 'ERB').is_a?(ruby_object).should == true

    RubyLint.global_scope.lookup(:const, 'ERB') \
      .is_a?(ruby_object) \
      .should == true
  end

  should 'automatically load constant paths' do
    definitions = build_definitions('Enumerable::Enumerator')

    definitions.lookup(:const, 'Enumerable') \
      .lookup(:const, 'Enumerator') \
      .is_a?(ruby_object) \
      .should == true

    RubyLint.global_scope.lookup(:const, 'Enumerable') \
      .lookup(:const, 'Enumerator') \
      .is_a?(ruby_object) \
      .should == true
  end
end
