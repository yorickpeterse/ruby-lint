require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing constants' do
  should 'parse a constant' do
    parse('String').should == s(:constant, 'String')
  end

  should 'parse a constant path' do
    parse('Foo::Bar').should == s(
      :constant_path,
      s(:constant, 'Foo'),
      s(:constant, 'Bar')
    )
  end

  should 'parse a top level constant path' do
    parse('::Foo::Bar').should == s(
      :constant_path,
      s(:constant, 'Foo'),
      s(:constant, 'Bar')
    )
  end
end
