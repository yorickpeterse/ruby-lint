##
# Constant: NilClass
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('NilClass') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('&') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('^') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('nil?')

  klass.define_instance_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_c')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')

  klass.define_instance_method('|') do |method|
    method.define_argument('other')
  end
end