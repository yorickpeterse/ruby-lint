require 'spec_helper'

describe RubyLint::VirtualMachine do
  it 'automatically loads constants' do
    definitions = build_definitions('ERB')

    definitions.lookup(:const, 'ERB').is_a?(ruby_object).should == true
  end

  it 'automatically loads constant paths' do
    definitions = build_definitions('Encoding::BINARY')

    definitions.lookup(:const, 'Encoding') \
      .lookup(:const, 'BINARY') \
      .is_a?(ruby_object) \
      .should == true
  end
end
