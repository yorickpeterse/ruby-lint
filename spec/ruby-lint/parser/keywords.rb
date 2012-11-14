require File.expand_path('../../../helper', __FILE__)

describe 'Rlint::Parser' do
  it 'Parse a defined? keyword' do
    token = RubyLint::Parser.new('defined?(Foobar)').parse[0]

    token.class.should == RubyLint::Token::KeywordToken
    token.type.should  == :keyword
    token.name.should  == 'defined?'

    token.parameters.class.should  == Array
    token.parameters.length.should == 1

    param = token.parameters[0]

    param.class.should == RubyLint::Token::VariableToken
    param.type.should  == :constant
    param.name.should  == 'Foobar'
  end

  it 'Parse a super keyword without parameters' do
    token = RubyLint::Parser.new('super').parse[0]

    token.class.should == RubyLint::Token::KeywordToken
    token.type.should  == :keyword
    token.name.should  == 'super'

    token.parameters.class.should  == Array
    token.parameters.empty?.should == true
  end

  it 'Parse a super keyword with parameters' do
    token = RubyLint::Parser.new('super(10)').parse[0]

    token.class.should == RubyLint::Token::KeywordToken
    token.type.should  == :keyword
    token.name.should  == 'super'

    token.parameters.class.should  == Array
    token.parameters.length.should == 1

    param = token.parameters[0]

    param.class.should == RubyLint::Token::Token
    param.type.should  == :integer
    param.value.should == '10'
  end

  it 'Parse a super keyword with a block' do
    token = RubyLint::Parser.new('super { |f| }').parse[0]

    token.class.should == RubyLint::Token::KeywordToken
    token.type.should  == :keyword
    token.name.should  == 'super'

    token.parameters.class.should  == Array
    token.parameters.empty?.should == true

    token.block.class.should == RubyLint::Token::BlockToken
  end
end
