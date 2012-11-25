require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing constants' do
  it 'Constant referring to a Ruby class' do
    parse('String').should == s(:constant, 'String')
  end

  it 'Constant path with two segments' do
    parse('Foo::Bar').should == s(
      :constant_path,
      s(:constant, 'Foo'),
      s(:constant, 'Bar')
    )
  end

  it 'Constant path referred to as a top level constant' do
    parse('::Foo::Bar').should == s(
      :constant_path,
      s(:constant, 'Foo'),
      s(:constant, 'Bar')
    )
  end
end
