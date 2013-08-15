##
# Constant: ThreadGroup
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ThreadGroup') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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