require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Regexps' do
  should 'parse a regular expression without a mode' do
    parse('/foo/').should == s(
      :regexp,
      s(:string, 'foo'),
      s(:regexp_end, '/')
    )
  end

  should 'parse a regular expression with two modes' do
    parse('/foo/im').should == s(
      :regexp,
      s(:string, 'foo'),
      s(:regexp_end, '/im')
    )
  end

  should 'parse a regular expression created using %r{}' do
    parse('%r{foo}').should == s(
      :regexp,
      s(:string, 'foo'),
      s(:regexp_end, '}')
    )
  end
end
