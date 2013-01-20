require File.expand_path('../../../helper', __FILE__)

describe 'Parsing syntax errors' do
  should 'parse a syntax error' do
    error = should.raise?(RubyLint::ParserError) { parse('10 <> 20') }

    error.message.should == "syntax error, unexpected '>'"
    error.line.should    == 1
    error.column.should  == 5
    error.file.should    == '(ruby-lint)'
  end
end
