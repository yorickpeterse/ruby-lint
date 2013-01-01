require File.expand_path('../../../helper', __FILE__)

describe 'Setting metadata for AST nodes' do
  code = <<-CODE
# Note that space, it is required to test the column number.
 number
  CODE

  should 'set the correct line number' do
    node = parse(code)

    node.type.should   == :method
    node.line.should   == 2
    node.column.should == 1
    node.file.should   == '(ruby-lint)'
  end
end
