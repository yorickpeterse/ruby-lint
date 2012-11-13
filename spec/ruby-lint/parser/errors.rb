require File.expand_path('../../../helper', __FILE__)

describe 'RubyLint::Parser' do
  it 'Parse a syntax error' do
    code = <<-CODE
def example
  -
end
    CODE

    error = should.raise?(RubyLint::ParserError) do
      RubyLint::Parser.new(code).parse
    end

    error.file.should   == '(rlint)'
    error.line.should   == 3
    error.column.should == 3
  end
end
