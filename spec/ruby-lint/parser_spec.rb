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

  example 'parse and return the comments mapping' do
    code = <<-CODE
# Hello world
def foobar
end
    CODE

    ast, comments = parse_with_comments(code)
    def_node      = ast.children[0]
    comment       = comments[def_node][0]

    comment.is_a?(Parser::Source::Comment).should == true

    comment.text.should          == '# Hello world'
    comment.location.line.should == 1
  end
end
