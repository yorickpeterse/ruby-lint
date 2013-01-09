require File.expand_path('../../../../helper', __FILE__)

describe 'Building variable definitions' do
  should 'process basic variable assignments' do
    defs   = build_definitions('number = 10')
    number = defs.lookup(:local_variable, 'number')

    number.is_a?(RubyLint::Definition::RubyObject).should == true
    number.name.should == 'number'

    number.value.is_a?(RubyLint::Definition::RubyObject).should == true
    number.value.value.should == ['10']
  end

  should 'process multiple variable assignments' do
    defs    = build_definitions('number, numberx = 10, 20')
    number  = defs.lookup(:local_variable, 'number')
    numberx = defs.lookup(:local_variable, 'numberx')

    number.is_a?(RubyLint::Definition::RubyObject).should == true

    number.name.should        == 'number'
    number.value.value.should == ['10']

    numberx.is_a?(RubyLint::Definition::RubyObject).should == true

    numberx.name.should        == 'numberx'
    numberx.value.value.should == ['20']
  end

  should 'process constant path assignments' do
    defs = build_definitions('Kernel::FOO = 10')
    foo  = defs.lookup(:constant, 'Kernel').lookup(:constant, 'FOO')

    foo.is_a?(RubyLint::Definition::RubyObject).should == true

    foo.name.should        == 'FOO'
    foo.value.value.should == ['10']
  end

  should 'process recursive variable assignments' do
    code = <<-CODE
a = 1
b = a
c = b
d = c
    CODE

    defs = build_definitions(code)

    defs.lookup(:local_variable, 'd').value.value.should == ['1']
  end

  describe 'array index assignments' do
    should 'process single index assignments' do
      code = <<-CODE
  numbers    = []
  numbers[0] = 10
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.is_a?(RubyLint::Definition::RubyObject).should == true

      numbers.value.is_a?(RubyLint::Definition::RubyObject).should == true
      numbers.value.type.should == :array

      first = numbers.lookup(:member, 0)

      first.is_a?(RubyLint::Definition::RubyObject).should == true
      first.type.should  == :integer

      first.value.is_a?(RubyLint::Definition::RubyObject).should == true
      first.value.type.should  == :integer
      first.value.value.should == ['10']
    end

    should 'process multiple index assignments' do
      code = <<-CODE
numbers        = []
numbers[0,1]   = 10
numbers[2,3]   = 20, 30
numbers[4,5,6] = 40, 50
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.lookup(:member, '0').value.value.should == ['10']
      numbers.lookup(:member, '1').value.should       == nil
      numbers.lookup(:member, '2').value.value.should == ['20']
      numbers.lookup(:member, '3').value.value.should == ['30']
      numbers.lookup(:member, '4').value.value.should == ['40']
      numbers.lookup(:member, '5').value.value.should == ['50']
      numbers.lookup(:member, '6').value.should       == nil
    end

    should 'process index assignments using variables' do
      code = <<-CODE
index          = 1
numbers        = [10]
numbers[index] = 20
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.lookup(:member, '0').value.value.should == ['10']
      numbers.lookup(:member, '1').value.value.should == ['20']
    end
  end

  describe 'hash key assignments' do
    should 'process a single key assignment' do
      code = <<-CODE
numbers        = {}
numbers['one'] = 1
      CODE

      defs = build_definitions(code)

      numbers = defs.lookup(:local_variable, 'numbers')
      one     = numbers.lookup(:member, 'one')

      one.is_a?(RubyLint::Definition::RubyObject).should == true

      one.name.should == 'one'
      one.type.should == :string

      one.value.type.should  == :integer
      one.value.value.should == ['1']
    end

    should 'process a single key assignment using variables' do
      code = <<-CODE
key          = 'one'
numbers      = {'two' => 2}
numbers[key] = 1
      CODE

      defs    = build_definitions(code)
      numbers = defs.lookup(:local_variable, 'numbers')

      numbers.lookup(:member, 'one').value.value.should == ['1']
      numbers.lookup(:member, 'two').value.value.should == ['2']
    end
  end

  describe 'object member assignments' do
    should 'process a single member assignment' do
      code = <<-CODE
  person      = OpenStruct.new
  person.name = 'Matz'
      CODE

      defs   = build_definitions(code)
      person = defs.lookup(:local_variable, 'person')
      name   = person.lookup(:member, 'name')

      name.is_a?(RubyLint::Definition::RubyObject).should == true

      name.name.should == 'name'
      name.type.should == :identifier

      name.value.type.should  == :string
      name.value.value.should == ['Matz']
    end
  end

  describe 'optional assignments' do
    should 'process an assignment for an existing variable' do
      code = <<-CODE
number   = 10
number ||= 20
      CODE

      defs = build_definitions(code)

      defs.lookup(:local_variable, 'number').value.value.should == ['10']
    end

    should 'process an assignment for a non existing variable' do
      defs = build_definitions('number ||= 10')

      defs.lookup(:local_variable, 'number').value.value.should == ['10']
    end
  end
end
