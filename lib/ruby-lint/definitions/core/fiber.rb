##
# Constant: Fiber
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Fiber') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('create') do |method|
    method.define_argument('callable')
  end

  klass.define_method('current')

  klass.define_method('new') do |method|
    method.define_optional_argument('size')
    method.define_block_argument('block')
  end

  klass.define_method('yield') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('alive?')

  klass.define_instance_method('resume') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('transfer') do |method|
    method.define_rest_argument('args')
  end
end