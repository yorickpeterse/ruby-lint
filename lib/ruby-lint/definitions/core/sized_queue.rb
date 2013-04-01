##
# Constant: SizedQueue
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('SizedQueue') do |klass|
  klass.inherits(RubyLint.global_constant('Queue'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('deq') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('enq') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('max')

  klass.define_instance_method('max=') do |method|
    method.define_argument('max')
  end

  klass.define_instance_method('num_waiting')

  klass.define_instance_method('pop') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('push') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('shift') do |method|
    method.define_rest_argument('args')
  end
end