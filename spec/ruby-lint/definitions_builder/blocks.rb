require File.expand_path('../../../helper', __FILE__)

describe 'Building definitions for blocks' do
  should 'make outer local variables available to the inside of a block' do
    code = <<-CODE
number = 10

example do
  number_string = number.to_s
end
    CODE

    ast     = parse(code, false)
    builder = RubyLint::DefinitionsBuilder.new

    builder.iterate(ast)

    block  = builder.options[:node_definitions].values.last
    number = block.lookup(:local_variable, 'number')

    number.is_a?(ruby_object).should == true

    number.value.type.should  == :integer
    number.value.value.should == '10'
  end

  should 'use outer local variables when overwriting them' do
    code = <<-CODE
number = 10

example do
  number = 20
end
    CODE

    defs = build_definitions(code)

    defs.lookup(:local_variable, 'number').value.value.should == '20'
  end
end
