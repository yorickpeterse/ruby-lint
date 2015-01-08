require 'spec_helper'

describe RubyLint::Docstring::Parser do
  let(:parser) { RubyLint::Docstring::Parser.new }

  context '@param tags' do
    it 'parses a tag with just the parameter name' do
      comments = ['# @param number']
      tag      = parser.parse(comments)[0]

      tag.is_a?(RubyLint::Docstring::ParamTag).should == true

      tag.name.should == 'number'
    end

    it 'parses a tag with a parameter name and description' do
      comments = ['# @param number The number.']
      tag      = parser.parse(comments)[0]

      tag.name.should        == 'number'
      tag.description.should == 'The number.'
    end

    it 'parses a tag with a type' do
      comments = ['# @param [Numeric] number']
      tag      = parser.parse(comments)[0]

      tag.name.should  == 'number'
      tag.types.should == ['Numeric']
    end

    it 'parses a tag with a type and description' do
      comments = ['# @param [Numeric] number The number.']
      tag      = parser.parse(comments)[0]

      tag.name.should        == 'number'
      tag.types.should       == ['Numeric']
      tag.description.should == 'The number.'
    end

    it 'parses a tag with a compound type' do
      comments = ['# @param [Array<String>] names The names']
      tag      = parser.parse(comments)[0]

      tag.name.should        == 'names'
      tag.description.should == 'The names'
      tag.types.should       == ['Array']
    end

    it 'should parse a tag with a namespace in it' do
      comments = ['# @param [Foo::Bar] baz']
      tag      = parser.parse(comments)[0]

      tag.name.should  == 'baz'
      tag.types.should == ['Foo::Bar']
    end
  end

  context '@return tags' do
    it 'parses a tag with just the type' do
      comments = ['# @return [Numeric]']
      tag      = parser.parse(comments)[0]

      tag.is_a?(RubyLint::Docstring::ReturnTag).should == true

      tag.description.nil?.should == true
      tag.types.should            == ['Numeric']
    end

    it 'parses a tag with the type and description' do
      comments = ['# @return [Numeric] The number.']
      tag      = parser.parse(comments)[0]

      tag.is_a?(RubyLint::Docstring::ReturnTag).should == true

      tag.types.should       == ['Numeric']
      tag.description.should == 'The number.'
    end

    it 'parses a tag with the description' do
      comments = ['# @return Hello']
      tag      = parser.parse(comments)[0]

      tag.types.should       == []
      tag.description.should == 'Hello'
    end
  end
end
