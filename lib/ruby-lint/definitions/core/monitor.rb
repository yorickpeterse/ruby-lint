##
# Constant: Monitor
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Monitor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('enter')

  klass.define_instance_method('exit')

  klass.define_instance_method('try_enter')
end

##
# Constant: Monitor::ConditionVariable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Monitor::ConditionVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('broadcast')

  klass.define_instance_method('signal')

  klass.define_instance_method('wait') do |method|
    method.define_optional_argument('timeout')
  end

  klass.define_instance_method('wait_until')

  klass.define_instance_method('wait_while')
end