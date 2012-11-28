require File.expand_path('../../../helper', __FILE__)

describe 'Parsing variable assignments' do
  it 'Assign a local variable' do
    parse('number = 10').should == s(
      :assign,
      s(:local_variable, 'number'),
      s(:integer, '10')
    )
  end

  it 'Assign an instance variable' do
    parse('@number = 10').should == s(
      :assign,
      s(:instance_variable, '@number'),
      s(:integer, '10')
    )
  end

  it 'Assign a class variable' do
    parse('@@number = 10').should == s(
      :assign,
      s(:class_variable, '@@number'),
      s(:integer, '10')
    )
  end

  it 'Assign a global variable' do
    parse('$number = 10').should == s(
      :assign,
      s(:global_variable, '$number'),
      s(:integer, '10')
    )
  end

  it 'Assign a constant' do
    parse('NUMBER = 10').should == s(
      :assign,
      s(:constant, 'NUMBER'),
      s(:integer, '10')
    )
  end

  it 'Assign a variable if it does not already have a value' do
    parse('number ||= 10').should == s(
      :op_assign,
      s(:local_variable, 'number'),
      s(:integer, '10')
    )
  end

  it 'Assign two values to two variables' do
    parse('first, second = 10, 20').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:integer, '20'))
    )
  end

  it 'Assign one value to two variables' do
    parse('first, second = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:keyword, 'nil'))
    )
  end

  it 'Assign an array with two values to two variables' do
    parse('first, second = [10, 20]').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:integer, '20'))
    )
  end

  it 'Assign an array with one value to two variables' do
    parse('first, second = [10]').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:keyword, 'nil'))
    )
  end

  it 'Assign a value to a variable and expander token' do
    parse('first, * = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10'))
    )
  end

  it 'Assign two values to a variable and expander token' do
    parse('first, * = 10, 20').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10'))
    )
  end

  it 'Assign three values to two variables and an expander token' do
    parse('first, *, second = 10, 20, 30').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:integer, '30'))
    )
  end

  it 'Assign a single value to an expander variable' do
    parse('*numbers = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'numbers'), s(:array, s(:integer, '10')))
    )
  end

  it 'Assign two values to an expander variable' do
    parse('*numbers = 10, 20').should == s(
      :mass_assign,
      s(
        :assign,
        s(:local_variable, 'numbers'),
        s(:array, s(:integer, '10'), s(:integer, '20'))
      )
    )
  end

  it 'Assign a value to a local and expander variable' do
    parse('number, *numbers = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'numbers'), s(:array))
    )
  end

  it 'Assign one value to an expander and two local variables' do
    $derp = true

    parse('*numbers, number, numberx = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'numbers'), s(:array)),
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'numberx'), s(:keyword, 'nil'))
    )

    parse('number, *numbers, numberx = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'numbers'), s(:array)),
      s(:assign, s(:local_variable, 'numberx'), s(:keyword, 'nil'))
    )

    parse('number, numberx, *numbers = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'numberx'), s(:keyword, 'nil')),
      s(:assign, s(:local_variable, 'numbers'), s(:array))
    )
  end

  it 'Assign two values to an expander and local variable' do
    parse('*numbers, number = 10, 20').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'numbers'), s(:array, s(:integer, '10'))),
      s(:assign, s(:local_variable, 'number'), s(:integer, '20'))
    )
  end

  it 'Assign an uneven number of (expander) variables and values' do
    parse('*numbers, number = 10, 20, 30').should == s(
      :mass_assign,
      s(
        :assign,
        s(:local_variable, 'numbers'),
        s(:array, s(:integer, '10'), s(:integer, '20'))
      ),
      s(:assign, s(:local_variable, 'number'), s(:integer, '30'))
    )

    parse('*numbers, number = 10, 20, 30, 40').should == s(
      :mass_assign,
      s(
        :assign,
        s(:local_variable, 'numbers'),
        s(:array, s(:integer, '10'), s(:integer, '20'), s(:integer, '30'))
      ),
      s(:assign, s(:local_variable, 'number'), s(:integer, '40'))
    )

    parse('number, *numbers = 10, 20, 30, 40').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(
        :assign,
        s(:local_variable, 'numbers'),
        s(:array, s(:integer, '20'), s(:integer, '30'), s(:integer, '40'))
      )
    )

    parse('number, *numbers, numberx = 10, 20, 30, 40').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(
        :assign,
        s(:local_variable, 'numbers'),
        s(:array, s(:integer, '20'), s(:integer, '30'))
      ),
      s(:assign, s(:local_variable, 'numberx'), s(:integer, '40'))
    )
  end
end
