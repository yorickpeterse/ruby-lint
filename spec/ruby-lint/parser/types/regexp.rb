require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Regexps' do
  it 'Regular expression without a mode' do
    parse('/foo/').should == s(
      :regexp,
      s(:string, 'foo'),
      s(:regexp_end, '/')
    )
  end

  it 'Regular expression with two modes' do
    parse('/foo/im').should == s(
      :regexp,
      s(:string, 'foo'),
      s(:regexp_end, '/im')
    )
  end

  it 'Regular expression created using %r{}' do
    parse('%r{foo}').should == s(
      :regexp,
      s(:string, 'foo'),
      s(:regexp_end, '}')
    )
  end
end
