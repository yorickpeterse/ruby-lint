##
# Constant: Mutex
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Mutex') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

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
