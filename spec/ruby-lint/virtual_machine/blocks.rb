require File.expand_path('../../../helper', __FILE__)

describe RubyLint::VirtualMachine do
  should 'make variables available in a block' do
    code = <<-CODE
number = 10

example do
end
    CODE

    definition = build_associations(code).to_a.last.last

    number = definition.lookup(:lvar, 'number')

    number.is_a?(ruby_object).should == true
    number.value.value.should        == 10
  end

  should 'make block arguments available as variables inside the block only' do
    code = <<-CODE
example do
  number = 10
end
    CODE

    associations = build_associations(code).to_a

    root_def  = associations.first.last
    block_def = associations.last.last

    root_def.lookup(:lvar, 'number').nil?.should         == true
    block_def.lookup(:lvar, 'number').value.value.should == 10
  end

  should 'update outer local variables modified in the block' do
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
