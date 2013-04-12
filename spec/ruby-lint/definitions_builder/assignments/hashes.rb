require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  should 'assign hashes as instances' do
    defs  = build_definitions('numbers = {}')
    value = defs.lookup(:local_variable, 'numbers').value

    value.instance?.should == true

    value.has_definition?(:instance_method, 'each').should == true
  end

  describe 'hash key assignments' do
    should 'return key/value pairs as an Array' do
      code    = 'numbers = {:key => "value", :extra => "example"}'
      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')
      value   = numbers.value

      value.value.is_a?(Array).should == true
      value.value.length.should       == 2

      value.value[0].name.should        == 'key'
      value.value[0].value.type.should  == :string
      value.value[0].value.value.should == 'value'

      value.value[1].name.should        == 'extra'
      value.value[1].value.type.should  == :string
      value.value[1].value.value.should == 'example'
    end

    should 'process a single key assignment' do
      code = <<-CODE
numbers        = {}
numbers['one'] = 1
      CODE

      defs = build_definitions(code)

      numbers = defs.lookup(:local_variable, 'numbers')
      one     = numbers.lookup(:member, 'one')

      one.is_a?(ruby_object).should == true
      one.name.should               == 'one'
      one.type.should               == :string

      one.value.type.should  == :integer
      one.value.value.should == '1'
    end

    should 'process a single key assignment using variables' do
      code = <<-CODE
key          = 'one'
numbers      = {'two' => 2}
numbers[key] = 1
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.lookup(:member, 'one').value.value.should == '1'
      numbers.lookup(:member, 'two').value.value.should == '2'
    end
  end
end
