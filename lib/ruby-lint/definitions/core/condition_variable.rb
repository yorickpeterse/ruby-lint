##
# Constant: ConditionVariable
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ConditionVariable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('broadcast')

  klass.define_instance_method('signal')

  klass.define_instance_method('wait') do |method|
    method.define_argument('mutex')
    method.define_optional_argument('timeout')
  end
end