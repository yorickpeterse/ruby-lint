##
# Constant: ERB
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('ERB') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('version')

  klass.define_instance_method('def_class') do |method|
    method.define_optional_argument('superklass')
    method.define_optional_argument('methodname')
  end

  klass.define_instance_method('def_method') do |method|
    method.define_argument('mod')
    method.define_argument('methodname')
    method.define_optional_argument('fname')
  end

  klass.define_instance_method('def_module') do |method|
    method.define_optional_argument('methodname')
  end

  klass.define_instance_method('filename')

  klass.define_instance_method('filename=')

  klass.define_instance_method('result') do |method|
    method.define_optional_argument('b')
  end

  klass.define_instance_method('run') do |method|
    method.define_optional_argument('b')
  end

  klass.define_instance_method('set_eoutvar') do |method|
    method.define_argument('compiler')
    method.define_optional_argument('eoutvar')
  end

  klass.define_instance_method('src')
end
