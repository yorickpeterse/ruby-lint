require File.expand_path('../../../../helper', __FILE__)

describe 'Parsing Strings' do
  should 'parse an empty string' do
    parse('""').should == s(:string)
  end

  should 'parse a string using single quotes' do
    parse("'hello'").should == s(:string, 'hello')
  end

  should 'parse a string using double quotes' do
    parse('"hello"').should == s(:string, 'hello')
  end

  should 'parse a string created using %q{}' do
    parse('%q{hello world}').should == s(:string, 'hello world')
  end

  should 'parse a string created using %Q{}' do
    parse('%Q{hello world}').should == s(:string, 'hello world')
  end

  should 'parse a string containing an embedded expression' do
    parse('"#{10}"').should == s(:embed, s(:integer, '10'))
  end

  should 'parse a string containing an embedded expression using a shorthand' do
    parse('"#$foo"').should == s(:embed, s(:global_variable, '$foo'))
  end

  should 'parse a string spread out over two lines using backslashes' do
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
