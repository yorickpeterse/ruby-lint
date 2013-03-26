##
# Constant: Range
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Range') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('begin')

  klass.define_instance_method('can_iterate_from?') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('cover?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('end')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('exclude_end?')

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('include?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('last') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('max') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('member?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('min') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('step') do |method|
    method.define_optional_argument('step_size')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')
end
