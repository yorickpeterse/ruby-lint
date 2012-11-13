require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a regular expression' do
    token = Rlint::Parser.new('/foo/im').parse[0]

    token.class.should == Rlint::Token::RegexpToken
    token.type.should  == :regexp
    token.value.should == 'foo'

    token.modes.class.should  == Array
    token.modes.length.should == 2

    token.modes.include?('i').should == true
    token.modes.include?('m').should == true
  end

  it 'Parse a regular expression using %r{}' do
    token = Rlint::Parser.new('%r{foo}im').parse[0]

    token.class.should == Rlint::Token::RegexpToken
    token.type.should  == :regexp
    token.value.should == 'foo'

    token.modes.class.should  == Array
    token.modes.length.should == 2

    token.modes.include?('i').should == true
    token.modes.include?('m').should == true
  end
end
