##
# Constant: ThreadGroup
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('ThreadGroup') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add') do |method|
    method.define_argument('thread')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('list')

  klass.define_instance_method('remove') do |method|
    method.define_argument('thread')
  end
end
