##
# Constant: SystemCallError
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('SystemCallError') do |klass|
  klass.inherits(RubyLint.global_constant('StandardError'))

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
