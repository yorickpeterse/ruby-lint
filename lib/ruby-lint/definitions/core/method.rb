##
# Constant: Method
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Method') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('arity')

  klass.define_instance_method('call') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('defined_in')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('executable')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('receiver')
    method.define_argument('defined_in')
    method.define_argument('executable')
    method.define_argument('name')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('name')

  klass.define_instance_method('owner')

  klass.define_instance_method('parameters')

  klass.define_instance_method('receiver')

  klass.define_instance_method('source')

  klass.define_instance_method('source_location')

  klass.define_instance_method('to_proc')

  klass.define_instance_method('to_s')

  klass.define_instance_method('unbind')
end