##
# Constant: Enumerable::Enumerator
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Enumerable::Enumerator') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

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
