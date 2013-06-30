##
# Constant: SystemExit
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('SystemExit') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Exception'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('first')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('status')

  klass.define_instance_method('success?')
end