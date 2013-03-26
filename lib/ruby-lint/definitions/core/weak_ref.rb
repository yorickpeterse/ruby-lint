##
# Constant: WeakRef
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('WeakRef') do |klass|
  klass.inherits(RubyLint.global_constant('BasicObject'))

  klass.define_method('__class_init__')

  klass.define_method('new')

  klass.define_instance_method('__getobj__')

  klass.define_instance_method('__object__')

  klass.define_instance_method('__setobj__') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_to_missing?') do |method|
    method.define_argument('method')
    method.define_argument('include_private')
  end

  klass.define_instance_method('weakref_alive?')
end
