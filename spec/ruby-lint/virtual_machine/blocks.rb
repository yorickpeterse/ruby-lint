require File.expand_path('../../../helper', __FILE__)

describe 'Building definitions for blocks' do
  should 'make outer local variables available to the inside of a block' do
    code = <<-CODE
number  = 10
@number = nil

example do
  @number = number
end
    CODE

    defs = build_definitions(code)

    defs.lookup(:ivar, '@number').value.value.should == 10
  end

  should 'use outer local variables when overwriting them' do
    code = <<-CODE
number = 10

example do
  number = 20
end
    CODE

    defs = build_definitions(code)

    defs.lookup(:lvar, 'number').value.value.should == 20
  end
end
