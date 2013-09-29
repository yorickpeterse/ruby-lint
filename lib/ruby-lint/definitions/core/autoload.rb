##
# Constant: Autoload
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Autoload') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.lookup(:const, 'Autoload').deep_freeze