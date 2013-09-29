##
# Constant: Random
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Random') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('new_seed')

  klass.define_method('rand') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('srand') do |method|
    method.define_optional_argument('seed')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('bytes') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('seed')
  end

  klass.define_instance_method('rand') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('seed')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Random').deep_freeze