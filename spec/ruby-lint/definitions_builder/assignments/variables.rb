require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  describe 'variables' do
    should 'process basic variable assignments' do
      defs   = build_definitions('number = 10')
      number = defs.lookup(:lvar, 'number')

      number.is_a?(ruby_object).should == true
      number.name.should               == 'number'

      number.value.is_a?(ruby_object).should == true
      number.value.value.should              == '10'
    end

    should 'process mass variable assignments' do
      defs    = build_definitions('number, numberx = 10, 20')
      number  = defs.lookup(:lvar, 'number')
      numberx = defs.lookup(:lvar, 'numberx')

      number.is_a?(ruby_object).should == true

      number.name.should        == 'number'
      number.value.value.should == '10'

      numberx.is_a?(ruby_object).should == true

      numberx.name.should        == 'numberx'
      numberx.value.value.should == '20'
    end

    should 'process constant path assignments' do
      defs = build_definitions('Kernel::FOO = 10')
      foo  = defs.lookup(:constant, 'Kernel').lookup(:constant, 'FOO')

      foo.is_a?(ruby_object).should == true

      foo.name.should        == 'FOO'
      foo.value.value.should == '10'
    end

    should 'process recursive variable assignments' do
      code = <<-CODE
  a = 1
  b = a
  c = b
  d = c
      CODE

      defs = build_definitions(code)
      var  = defs.lookup(:lvar, 'd')

      var.value.type.should  == :int
      var.value.value.should == '1'
    end

    should 'handle multiple variable assignments' do
      code = 'first = second = third = 10'
      defs = build_definitions(code)

      %w{first second third}.each do |name|
        variable = defs.lookup(:lvar, name)

        variable.is_a?(ruby_object).should == true

        variable.value.type.should  == :int
        variable.value.value.should == '10'
      end
    end
  end
end
