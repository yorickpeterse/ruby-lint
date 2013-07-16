require 'spec_helper'

describe RubyLint::Parser do
  example 'parse a block of Ruby code' do
    ast = parse('10', false)

    ast.type.should            == :root
    ast.children.length.should == 1
  end

  example 'use a custom node class' do
    parse('10').class.should == RubyLint::AST::Node
  end
end