##
# Constant: Queue
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Queue') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('deq') do |method|
    method.define_optional_argument('non_block')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('enq') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('num_waiting')

  klass.define_instance_method('pop') do |method|
    method.define_optional_argument('non_block')
  end

  klass.define_instance_method('push') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('shift') do |method|
    method.define_optional_argument('non_block')
  end

  klass.define_instance_method('size')
end