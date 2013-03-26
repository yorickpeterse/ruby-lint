##
# Constant: Struct
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Struct') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_specialize') do |method|
    method.define_argument('attrs')
  end

  klass.define_method('length')

  klass.define_method('make_struct') do |method|
    method.define_argument('name')
    method.define_argument('attrs')
  end

  klass.define_method('members')

  klass.define_method('new') do |method|
    method.define_argument('klass_name')
    method.define_rest_argument('attrs')
    method.define_block_argument('block')
  end

  klass.define_method('subclass_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('var')
    method.define_argument('obj')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_pair')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('inspect')

  klass.define_instance_method('instance_variables')

  klass.define_instance_method('length')

  klass.define_instance_method('members')

  klass.define_instance_method('select') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end
end
