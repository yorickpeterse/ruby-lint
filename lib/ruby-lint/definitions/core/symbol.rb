##
# Constant: Symbol
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Symbol') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('===') do |method|
    method.define_argument('obj')
  end

  klass.define_method('__class_init__')

  klass.define_method('all_symbols')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('capitalize')

  klass.define_instance_method('casecmp') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('downcase')

  klass.define_instance_method('empty?')

  klass.define_instance_method('encoding')

  klass.define_instance_method('id2name')

  klass.define_instance_method('index')

  klass.define_instance_method('inspect')

  klass.define_instance_method('intern')

  klass.define_instance_method('is_constant?')

  klass.define_instance_method('is_cvar?')

  klass.define_instance_method('is_ivar?')

  klass.define_instance_method('length')

  klass.define_instance_method('match') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('next')

  klass.define_instance_method('size')

  klass.define_instance_method('slice') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('succ')

  klass.define_instance_method('swapcase')

  klass.define_instance_method('to_proc')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_sym')

  klass.define_instance_method('upcase')
end