##
# Constant: MonitorMixin
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('MonitorMixin') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('extend_object') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mon_enter')

  klass.define_instance_method('mon_exit')

  klass.define_instance_method('mon_synchronize')

  klass.define_instance_method('mon_try_enter')

  klass.define_instance_method('new_cond')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('try_mon_enter')
end

##
# Constant: MonitorMixin::ConditionVariable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('MonitorMixin::ConditionVariable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('broadcast')

  klass.define_instance_method('signal')

  klass.define_instance_method('wait') do |method|
    method.define_optional_argument('timeout')
  end

  klass.define_instance_method('wait_until')

  klass.define_instance_method('wait_while')
end

##
# Constant: MonitorMixin::ConditionVariable::Timeout
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('MonitorMixin::ConditionVariable::Timeout') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Exception'))
end

RubyLint::GlobalScope.definitions.lookup(:const, 'MonitorMixin').deep_freeze