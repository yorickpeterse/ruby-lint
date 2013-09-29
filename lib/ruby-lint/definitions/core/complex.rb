##
# Constant: Complex
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Complex') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Numeric'))

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

##
# Constant: Complex::FFI
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Complex::FFI') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_typedef') do |method|
    method.define_argument('current')
    method.define_argument('add')
  end

  klass.define_method('config') do |method|
    method.define_argument('name')
  end

  klass.define_method('config_hash') do |method|
    method.define_argument('name')
  end

  klass.define_method('errno')

  klass.define_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_method('generate_function') do |method|
    method.define_argument('ptr')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('generate_trampoline') do |method|
    method.define_argument('obj')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('size_to_type') do |method|
    method.define_argument('size')
  end

  klass.define_method('type_size') do |method|
    method.define_argument('type')
  end
end

##
# Constant: Complex::I
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Complex::I') do |klass|
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Complex').deep_freeze