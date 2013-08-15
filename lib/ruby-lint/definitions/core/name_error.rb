##
# Constant: NameError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('NameError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('StandardError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('name')
end