require 'spec_helper'

describe RubyLint::Docstring::Mapping do
  let(:param_tag) { RubyLint::Docstring::ParamTag }
  let(:return_tag) { RubyLint::Docstring::ReturnTag }

  let(:tags) do
    [
      param_tag.new(:name => 'number', :types => ['Numeric']),
      param_tag.new(:name => 'number2', :types => ['Integer']),
      return_tag.new(:types => ['Numeric'])
    ]
  end

  example 'map parameter tags by their names' do
    mapping = RubyLint::Docstring::Mapping.new(tags)

    mapping.param_tags['number'].types.should  == ['Numeric']
    mapping.param_tags['number2'].types.should == ['Integer']
  end

  example 'map a return tag' do
    mapping = RubyLint::Docstring::Mapping.new(tags)

    mapping.return_tag.types.should == ['Numeric']
  end
end
