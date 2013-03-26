##
# Constant: Autoload
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Autoload') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('call') do |method|
    method.define_argument('under')
    method.define_optional_argument('honor_require')
  end

  klass.define_instance_method('find_const') do |method|
    method.define_argument('under')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('name')
    method.define_argument('scope')
    method.define_argument('path')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('path')

  klass.define_instance_method('resolve')

  klass.define_instance_method('scope')

  klass.define_instance_method('set_path') do |method|
    method.define_argument('path')
  end
end
