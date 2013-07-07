##
# Constant: NoMethodError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('NoMethodError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('NameError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('args')

  klass.define_instance_method('initialize') do |method|
    method.define_rest_argument('arguments')
  end

  klass.define_instance_method('name')
end