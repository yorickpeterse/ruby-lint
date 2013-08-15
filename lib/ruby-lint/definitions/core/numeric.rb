##
# Constant: Numeric
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Numeric') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('%') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+@')

  klass.define_instance_method('-@')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('abs')

  klass.define_instance_method('abs2')

  klass.define_instance_method('angle')

  klass.define_instance_method('arg')

  klass.define_instance_method('ceil')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('conj')

  klass.define_instance_method('conjugate')

  klass.define_instance_method('denominator')

  klass.define_instance_method('div') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('divmod') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fdiv') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('floor')

  klass.define_instance_method('i')

  klass.define_instance_method('imag')

  klass.define_instance_method('imaginary')

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('integer?')

  klass.define_instance_method('magnitude')

  klass.define_instance_method('modulo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('nonzero?')

  klass.define_instance_method('numerator')

  klass.define_instance_method('phase')

  klass.define_instance_method('polar')

  klass.define_instance_method('quo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('real')

  klass.define_instance_method('real?')

  klass.define_instance_method('rect')

  klass.define_instance_method('rectangular')

  klass.define_instance_method('redo_compare') do |method|
    method.define_argument('meth')
    method.define_argument('right')
  end

  klass.define_instance_method('remainder') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('round')

  klass.define_instance_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_c')

  klass.define_instance_method('to_int')

  klass.define_instance_method('truncate')

  klass.define_instance_method('zero?')
end