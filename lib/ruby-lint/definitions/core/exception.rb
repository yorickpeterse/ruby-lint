##
# Constant: Exception
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Exception') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_yaml_properties')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Exception').deep_freeze