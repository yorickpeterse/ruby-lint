require File.expand_path('../../../../helper', __FILE__)

describe 'Using return values in assignments' do
  it 'should assign a return value' do
    code  = 'word = String.new'
    defs  = build_definitions(code)
    value = defs.lookup(:local_variable, 'word').value

    value.is_a?(ruby_object).should == true

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

    value.is_a?(ruby_object).should == true

    value.type.should      == :constant
    value.name.should      == 'String'
    value.instance?.should == true
  end

  describe 'setting instance types for core Ruby types' do
    should 'create a new String instance' do
      defs = build_definitions('number = "10"')

      defs.lookup(:local_variable, 'number').value.instance?.should == true
    end

    should 'create a new Symbol instance' do
      defs = build_definitions('number = :"10"')

      defs.lookup(:local_variable, 'number').value.instance?.should == true
    end

    should 'create a new Fixnum instance' do
      defs = build_definitions('number = 10')

      defs.lookup(:local_variable, 'number').value.instance?.should == true
    end

    should 'create a new Float instance' do
      defs = build_definitions('number = 10.0')

      defs.lookup(:local_variable, 'number').value.instance?.should == true
    end

    should 'create a new Array instance' do
      defs = build_definitions('number = [10]')

      defs.lookup(:local_variable, 'number').value.instance?.should == true
    end

    should 'create a new Hash instance' do
      defs = build_definitions('number = {:a => 10}')

      defs.lookup(:local_variable, 'number').value.instance?.should == true
    end
  end
end
