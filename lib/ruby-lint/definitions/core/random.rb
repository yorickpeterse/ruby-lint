##
# Constant: Random
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Random') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

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
