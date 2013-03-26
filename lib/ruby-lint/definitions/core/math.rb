##
# Constant: Math
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Math') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('acos') do |method|
    method.define_argument('x')
  end

  klass.define_method('acosh') do |method|
    method.define_argument('x')
  end

  klass.define_method('asin') do |method|
    method.define_argument('x')
  end

  klass.define_method('asinh') do |method|
    method.define_argument('x')
  end

  klass.define_method('atan') do |method|
    method.define_argument('x')
  end

  klass.define_method('atan2') do |method|
    method.define_argument('y')
    method.define_argument('x')
  end

  klass.define_method('atanh') do |method|
    method.define_argument('x')
  end

  klass.define_method('cos') do |method|
    method.define_argument('x')
  end

  klass.define_method('cosh') do |method|
    method.define_argument('x')
  end

  klass.define_method('erf') do |method|
    method.define_argument('x')
  end

  klass.define_method('erfc') do |method|
    method.define_argument('x')
  end

  klass.define_method('exp') do |method|
    method.define_argument('x')
  end

  klass.define_method('frexp') do |method|
    method.define_argument('x')
  end

  klass.define_method('gamma') do |method|
    method.define_argument('x')
  end

  klass.define_method('hypot') do |method|
    method.define_argument('x')
    method.define_argument('y')
  end

  klass.define_method('ldexp') do |method|
    method.define_argument('x')
    method.define_argument('n')
  end

  klass.define_method('lgamma') do |method|
    method.define_argument('x')
  end

  klass.define_method('log') do |method|
    method.define_argument('x')
    method.define_optional_argument('base')
  end

  klass.define_method('log10') do |method|
    method.define_argument('x')
  end

  klass.define_method('log2') do |method|
    method.define_argument('x')
  end

  klass.define_method('modf') do |method|
    method.define_argument('x')
  end

  klass.define_method('sin') do |method|
    method.define_argument('x')
  end

  klass.define_method('sinh') do |method|
    method.define_argument('x')
  end

  klass.define_method('sqrt') do |method|
    method.define_argument('x')
  end

  klass.define_method('tan') do |method|
    method.define_argument('x')
  end

  klass.define_method('tanh') do |method|
    method.define_argument('x')
  end

  klass.define_instance_method('cbrt') do |method|
    method.define_argument('x')
  end
end
