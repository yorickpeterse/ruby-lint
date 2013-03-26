##
# Constant: Complex
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Complex') do |klass|
  klass.inherits(RubyLint.global_constant('Numeric'))

  klass.define_method('__class_init__')

  klass.define_method('generic?') do |method|
    method.define_argument('other')
  end

  klass.define_method('polar') do |method|
    method.define_argument('r')
    method.define_optional_argument('theta')
  end

  klass.define_method('rect') do |method|
    method.define_argument('real')
    method.define_optional_argument('imag')
  end

  klass.define_method('rectangular') do |method|
    method.define_argument('real')
    method.define_optional_argument('imag')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('**') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-@')

  klass.define_instance_method('/') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('abs')

  klass.define_instance_method('abs2')

  klass.define_instance_method('angle')

  klass.define_instance_method('arg')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('conj')

  klass.define_instance_method('conjugate')

  klass.define_instance_method('denominator')

  klass.define_instance_method('divide') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fdiv') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('imag')

  klass.define_instance_method('imaginary')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('a')
    method.define_optional_argument('b')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('magnitude')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('numerator')

  klass.define_instance_method('phase')

  klass.define_instance_method('polar')

  klass.define_instance_method('quo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_instance_method('real')

  klass.define_instance_method('real?')

  klass.define_instance_method('rect')

  klass.define_instance_method('rectangular')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')
end
