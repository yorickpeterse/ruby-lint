##
# Constant: Float
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Numeric'))

  klass.define_method('__class_init__')

  klass.define_method('induced_from') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('abs')

  klass.define_instance_method('angle')

  klass.define_instance_method('arg')

  klass.define_instance_method('ceil')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('denominator')

  klass.define_instance_method('divide') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('divmod') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('dtoa')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fdiv') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('finite?')

  klass.define_instance_method('floor')

  klass.define_instance_method('imaginary')

  klass.define_instance_method('infinite?')

  klass.define_instance_method('inspect')

  klass.define_instance_method('magnitude')

  klass.define_instance_method('modulo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('nan?')

  klass.define_instance_method('numerator')

  klass.define_instance_method('phase')

  klass.define_instance_method('quo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_instance_method('round') do |method|
    method.define_optional_argument('ndigits')
  end

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_int')

  klass.define_instance_method('to_packed') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_s_minimal')

  klass.define_instance_method('truncate')
end

##
# Constant: Float::DIG
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::DIG') do |klass|
end

##
# Constant: Float::EPSILON
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::EPSILON') do |klass|
end

##
# Constant: Float::FFI
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::FFI') do |klass|

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
# Constant: Float::INFINITY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::INFINITY') do |klass|
end

##
# Constant: Float::MANT_DIG
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MANT_DIG') do |klass|
end

##
# Constant: Float::MAX
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MAX') do |klass|
end

##
# Constant: Float::MAX_10_EXP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MAX_10_EXP') do |klass|
end

##
# Constant: Float::MAX_EXP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MAX_EXP') do |klass|
end

##
# Constant: Float::MIN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MIN') do |klass|
end

##
# Constant: Float::MIN_10_EXP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MIN_10_EXP') do |klass|
end

##
# Constant: Float::MIN_EXP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::MIN_EXP') do |klass|
end

##
# Constant: Float::NAN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::NAN') do |klass|
end

##
# Constant: Float::RADIX
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::RADIX') do |klass|
end

##
# Constant: Float::ROUNDS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Float::ROUNDS') do |klass|
end