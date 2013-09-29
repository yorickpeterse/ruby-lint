##
# Constant: Binding
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Binding') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('setup') do |method|
    method.define_argument('variables')
    method.define_argument('code')
    method.define_argument('constant_scope')
    method.define_optional_argument('recv')
    method.define_optional_argument('location')
  end

  klass.define_instance_method('compiled_code')

  klass.define_instance_method('compiled_code=')

  klass.define_instance_method('constant_scope')

  klass.define_instance_method('constant_scope=')

  klass.define_instance_method('eval') do |method|
    method.define_argument('expr')
    method.define_optional_argument('filename')
    method.define_optional_argument('lineno')
  end

  klass.define_instance_method('from_proc?')

  klass.define_instance_method('line_number')

  klass.define_instance_method('location')

  klass.define_instance_method('location=')

  klass.define_instance_method('proc_environment')

  klass.define_instance_method('proc_environment=')

  klass.define_instance_method('self')

  klass.define_instance_method('self=')

  klass.define_instance_method('variables')

  klass.define_instance_method('variables=')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Binding').deep_freeze