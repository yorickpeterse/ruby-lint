##
# Constant: WeakRef
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('WeakRef') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('BasicObject'))

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

##
# Constant: WeakRef::RefError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('WeakRef::RefError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('RuntimeError'))
end