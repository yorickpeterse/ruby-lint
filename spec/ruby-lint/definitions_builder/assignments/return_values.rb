require File.expand_path('../../../../helper', __FILE__)

describe 'Using return values in assignments' do
  it 'should assign a return value' do
    code  = 'word = String.new'
    defs  = build_definitions(code)
    value = defs.lookup(:local_variable, 'word').value

    value.is_a?(RubyLint::Definition::RubyObject).should == true

    value.type.should      == :constant
    value.name.should      == 'String'
    value.instance?.should == true
  end

  it 'should assign a nil value for a missing return value' do
    code = <<-CODE
def example
end

number = example
    CODE

    defs = build_definitions(code)

    defs.lookup(:local_variable, 'number').value.nil?.should == true
  end

  it 'should assign return values when chaining method calls' do
    code  = 'word = String.new.initialize.initialize'
    defs  = build_definitions(code)
    value = defs.lookup(:local_variable, 'word').value

    value.is_a?(RubyLint::Definition::RubyObject).should == true

    value.type.should      == :constant
    value.name.should      == 'String'
    value.instance?.should == true
  end
end
