##
# Constant: Fixnum
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Fixnum') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Integer'))

  klass.define_method('===') do |method|
    method.define_argument('obj')
  end

  klass.define_method('__class_init__')

  klass.define_method('induced_from') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('o')
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

  klass.define_instance_method('===') do |method|
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
    method.define_argument('o')
  end

  klass.define_instance_method('divide') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('divmod') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fdiv') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('imaginary')

  klass.define_instance_method('inspect')

  klass.define_instance_method('modulo') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('taint')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_s') do |method|
    method.define_optional_argument('base')
  end

  klass.define_instance_method('untaint')

  klass.define_instance_method('zero?')

  klass.define_instance_method('|') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('~')
end

##
# Constant: Fixnum::MAX
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Fixnum::MAX') do |klass|
end

##
# Constant: Fixnum::MIN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Fixnum::MIN') do |klass|
end