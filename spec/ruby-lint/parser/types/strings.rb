require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Strings' do
  it 'String using single quotes' do
    parse("'hello'").should == s(:string, 'hello')
  end

  it 'String using double quotes' do
    parse('"hello"').should == s(:string, 'hello')
  end

  it 'String created using %q{}' do
    parse('%q{hello world}').should == s(:string, 'hello world')
  end

  it 'String created using %Q{}' do
    parse('%Q{hello world}').should == s(:string, 'hello world')
  end

  it 'String containing an embedded expression' do
    parse('"#{10}"').should == s(:embed, s(:integer, '10'))
  end

  it 'String spread out over two lines using backslashes' do
    code = <<-CODE
'hello' \
  'world'
    CODE

    parse(code).should == s(
      :string_concat,
      s(:string, 'hello'),
      s(:string, 'world')
    )
  end
end
