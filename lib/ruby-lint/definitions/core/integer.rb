##
# Constant: Integer
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Integer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Numeric'))

  klass.define_method('__class_init__')

  klass.define_method('induced_from') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('&') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('**') do |method|
    method.define_argument('exp')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('^') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('ceil')

  klass.define_instance_method('chr') do |method|
    method.define_optional_argument('enc')
  end

  klass.define_instance_method('denominator')

  klass.define_instance_method('downto') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('even?')

  klass.define_instance_method('floor')

  klass.define_instance_method('gcd') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('gcdlcm') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('integer?')

  klass.define_instance_method('lcm') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('magnitude')

  klass.define_instance_method('next')

  klass.define_instance_method('numerator')

  klass.define_instance_method('odd?')

  klass.define_instance_method('ord')

  klass.define_instance_method('pred')

  klass.define_instance_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_instance_method('round') do |method|
    method.define_optional_argument('ndigits')
  end

  klass.define_instance_method('succ')

  klass.define_instance_method('times')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_int')

  klass.define_instance_method('to_r')

  klass.define_instance_method('truncate')

  klass.define_instance_method('upto') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('|') do |method|
    method.define_argument('other')
  end
end