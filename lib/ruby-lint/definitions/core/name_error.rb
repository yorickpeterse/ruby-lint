##
# Constant: NameError
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('NameError') do |klass|
  klass.inherits(RubyLint.global_constant('StandardError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('name')
end
