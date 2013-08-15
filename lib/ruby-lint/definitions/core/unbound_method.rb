##
# Constant: UnboundMethod
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('UnboundMethod') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('bind') do |method|
    method.define_argument('receiver')
  end

  klass.define_instance_method('call_on_instance') do |method|
    method.define_argument('obj')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('defined_in')

  klass.define_instance_method('executable')

  klass.define_instance_method('hash')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('mod')
    method.define_argument('executable')
    method.define_argument('pulled_from')
    method.define_argument('name')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('name')

  klass.define_instance_method('owner')

  klass.define_instance_method('parameters')

  klass.define_instance_method('source_location')

  klass.define_instance_method('to_s')
end