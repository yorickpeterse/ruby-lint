##
# Constant: ConditionVariable
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ConditionVariable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('broadcast')

  klass.define_instance_method('signal')

  klass.define_instance_method('wait') do |method|
    method.define_argument('mutex')
    method.define_optional_argument('timeout')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ConditionVariable').deep_freeze