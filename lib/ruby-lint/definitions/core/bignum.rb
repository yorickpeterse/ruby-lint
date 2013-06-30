##
# Constant: Bignum
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Bignum') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Integer'))

  klass.define_method('__class_init__')

  klass.define_method('from_float') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('&') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('**') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('-@')

  klass.define_instance_method('/') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('^') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('div') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('divide') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('divmod') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('fdiv') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('modulo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_s') do |method|
    method.define_optional_argument('base')
  end

  klass.define_instance_method('|') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('~')
end