##
# Constant: Mutex
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Mutex') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize')

  klass.define_instance_method('lock')

  klass.define_instance_method('locked?')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('bunk')
  end

  klass.define_instance_method('sleep') do |method|
    method.define_optional_argument('duration')
  end

  klass.define_instance_method('synchronize')

  klass.define_instance_method('try_lock')

  klass.define_instance_method('unlock')
end