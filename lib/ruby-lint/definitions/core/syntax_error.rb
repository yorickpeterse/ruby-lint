##
# Constant: SyntaxError
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('SyntaxError') do |klass|
  klass.inherits(RubyLint.global_constant('ScriptError'))

  klass.define_method('__class_init__')

  klass.define_method('from') do |method|
    method.define_argument('message')
    method.define_argument('column')
    method.define_argument('line')
    method.define_argument('code')
    method.define_argument('file')
  end

  klass.define_instance_method('code')

  klass.define_instance_method('code=')

  klass.define_instance_method('column')

  klass.define_instance_method('column=')

  klass.define_instance_method('file')

  klass.define_instance_method('file=')

  klass.define_instance_method('import_position') do |method|
    method.define_argument('c')
    method.define_argument('l')
    method.define_argument('code')
  end

  klass.define_instance_method('line')

  klass.define_instance_method('line=')

  klass.define_instance_method('message')

  klass.define_instance_method('reason')
end
