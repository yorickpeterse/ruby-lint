##
# Constant: ConditionVariable
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('ConditionVariable') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('broadcast')

  klass.define_instance_method('signal')

  klass.define_instance_method('wait') do |method|
    method.define_argument('mutex')
    method.define_optional_argument('timeout')
  end
end
