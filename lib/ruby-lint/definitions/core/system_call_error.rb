##
# Constant: SystemCallError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('SystemCallError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('StandardError'))

  klass.define_method('__class_init__')

  klass.define_method('errno_error') do |method|
    method.define_argument('message')
    method.define_argument('errno')
  end

  klass.define_method('exception') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('errno')
  end

  klass.define_method('new') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('errno')
  end

  klass.define_instance_method('errno')

  klass.define_instance_method('initialize') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'SystemCallError').deep_freeze