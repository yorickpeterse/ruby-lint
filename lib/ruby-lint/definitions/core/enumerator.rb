##
# Constant: Enumerator
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_with_index')

  klass.define_instance_method('enum_with_index')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('obj')
    method.define_optional_argument('iter')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('next')

  klass.define_instance_method('peek')

  klass.define_instance_method('peek_values')

  klass.define_instance_method('rewind')

  klass.define_instance_method('with_index') do |method|
    method.define_optional_argument('offset')
  end
end