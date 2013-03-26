##
# Constant: Regexp
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Regexp') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('compile') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('escape') do |method|
    method.define_argument('str')
  end

  klass.define_method('last_match') do |method|
    method.define_optional_argument('field')
  end

  klass.define_method('last_match=') do |method|
    method.define_argument('match')
  end

  klass.define_method('propagate_last_match')

  klass.define_method('quote') do |method|
    method.define_argument('str')
  end

  klass.define_method('set_block_last_match')

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_method('union') do |method|
    method.define_rest_argument('patterns')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('casefold?')

  klass.define_instance_method('encoding')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fixed_encoding?')

  klass.define_instance_method('hash')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('opts')
    method.define_optional_argument('lang')
  end

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('match') do |method|
    method.define_argument('str')
    method.define_optional_argument('pos')
  end

  klass.define_instance_method('match_all') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('match_from') do |method|
    method.define_argument('str')
    method.define_argument('count')
  end

  klass.define_instance_method('match_start') do |method|
    method.define_argument('str')
    method.define_argument('offset')
  end

  klass.define_instance_method('name_table')

  klass.define_instance_method('named_captures')

  klass.define_instance_method('names')

  klass.define_instance_method('option_to_string') do |method|
    method.define_argument('option')
  end

  klass.define_instance_method('options')

  klass.define_instance_method('search_from') do |method|
    method.define_argument('str')
    method.define_argument('offset')
  end

  klass.define_instance_method('search_region') do |method|
    method.define_argument('str')
    method.define_argument('start')
    method.define_argument('finish')
    method.define_argument('forward')
  end

  klass.define_instance_method('source')

  klass.define_instance_method('to_s')

  klass.define_instance_method('~')
end
