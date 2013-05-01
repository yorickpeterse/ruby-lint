require File.expand_path('../../helper', __FILE__)

describe RubyLint::Parser do
  should 'retrieve the parser constant' do
    RubyLint::Parser.parser_constant.respond_to?(:parse).should == true
  end

  should 'parse a block of Ruby code' do
    ast = parse('10', false)

    ast.type.should            == :root
    ast.children.length.should == 1
  end

  should 'use a custom node class' do
    parse('10').class.should == RubyLint::AST::Node
  end
end
