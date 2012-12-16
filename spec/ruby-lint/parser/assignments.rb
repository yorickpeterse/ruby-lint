require File.expand_path('../../../helper', __FILE__)

describe 'Parsing variable assignments' do
  should 'parse a local variable' do
    parse('number = 10').should == s(
      :assign,
      s(:local_variable, 'number'),
      s(:integer, '10')
    )
  end

  should 'parse an instance variable' do
    parse('@number = 10').should == s(
      :assign,
      s(:instance_variable, '@number'),
      s(:integer, '10')
    )
  end

  should 'parse a class variable' do
    parse('@@number = 10').should == s(
      :assign,
      s(:class_variable, '@@number'),
      s(:integer, '10')
    )
  end

  should 'parse a global variable' do
    parse('$number = 10').should == s(
      :assign,
      s(:global_variable, '$number'),
      s(:integer, '10')
    )
  end

  should 'parse a constant' do
    parse('NUMBER = 10').should == s(
      :assign,
      s(:constant, 'NUMBER'),
      s(:integer, '10')
    )
  end

  should 'parse a variable if it does not already have a value' do
    parse('number ||= 10').should == s(
      :op_assign,
      s(:local_variable, 'number'),
      s(:integer, '10')
    )
  end

  should 'parse assigning two values to two variables' do
    parse('first, second = 10, 20').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:integer, '20'))
    )
  end

  should 'parse assigning one value to two variables' do
    parse('first, second = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:keyword, 'nil'))
    )
  end

  should 'parse assigning an array with two values to two variables' do
    parse('first, second = [10, 20]').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:integer, '20'))
    )
  end

  should 'parse assigning an array with one value to two variables' do
    parse('first, second = [10]').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:keyword, 'nil'))
    )
  end

  should 'parse assigning a value to a variable and expander token' do
    parse('first, * = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10'))
    )
  end

  should 'parse assigning two values to a variable and expander token' do
    parse('first, * = 10, 20').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10'))
    )
  end

  should 'parse assigning three values to two variables and an expander token' do
    parse('first, *, second = 10, 20, 30').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'first'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'second'), s(:integer, '30'))
    )
  end

  should 'parse assigning a single value to an expander variable' do
    parse('*numbers = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'numbers'), s(:array, s(:integer, '10')))
    )
  end

  should 'parse assigning two values to an expander variable' do
    parse('*numbers = 10, 20').should == s(
      :mass_assign,
      s(
        :assign,
        s(:local_variable, 'numbers'),
        s(:array, s(:integer, '10'), s(:integer, '20'))
      )
    )
  end

  should 'parse assigning a value to a local and expander variable' do
    parse('number, *numbers = 10').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'number'), s(:integer, '10')),
      s(:assign, s(:local_variable, 'numbers'), s(:array))
    )
  end

  should 'parse assigning one value to an expander and two local variables' do
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

  should 'parse assigning two values to an expander and local variable' do
    parse('*numbers, number = 10, 20').should == s(
      :mass_assign,
      s(:assign, s(:local_variable, 'numbers'), s(:array, s(:integer, '10'))),
      s(:assign, s(:local_variable, 'number'), s(:integer, '20'))
    )
  end

  should 'parse an uneven number of (expander) variables and values' do
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

  should 'parse the assignment of a attribute in a constant path' do
    parse('Foo::Bar.example = 10').should == s(
      :assign,
      s(
        :field,
        s(:constant_path, s(:constant, 'Foo'), s(:constant, 'Bar')),
        s(:identifier, 'example')
      ),
      s(:integer, '10')
    )
  end
end
