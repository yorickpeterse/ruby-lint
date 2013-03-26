##
# Constant: Rational
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Rational') do |klass|
  klass.inherits(RubyLint.global_constant('Numeric'))

  klass.define_method('__class_init__')

  klass.define_instance_method('%') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('a')
  end

  klass.define_instance_method('**') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('a')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('a')
  end

  klass.define_instance_method('/') do |method|
    method.define_argument('a')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('abs')

  klass.define_instance_method('ceil')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('denominator')

  klass.define_instance_method('div') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('divide') do |method|
    method.define_argument('a')
  end

  klass.define_instance_method('divmod') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('floor')

  klass.define_instance_method('hash')

  klass.define_instance_method('inspect')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('ary')
  end

  klass.define_instance_method('numerator')

  klass.define_instance_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_instance_method('round') do |method|
    method.define_optional_argument('precision')
  end

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')

  klass.define_instance_method('truncate')
end
