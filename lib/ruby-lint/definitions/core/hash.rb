##
# Constant: Hash
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Hash') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_method('new_from_literal') do |method|
    method.define_argument('size')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('__entries__')

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('__store__') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('assoc') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('capacity')

  klass.define_instance_method('clear')

  klass.define_instance_method('compare_by_identity')

  klass.define_instance_method('compare_by_identity?')

  klass.define_instance_method('default') do |method|
    method.define_optional_argument('key')
  end

  klass.define_instance_method('default=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_proc')

  klass.define_instance_method('default_proc=') do |method|
    method.define_argument('prc')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('delete_if') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('each_item')

  klass.define_instance_method('each_key')

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_value')

  klass.define_instance_method('empty?')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_argument('key')
    method.define_optional_argument('default')
  end

  klass.define_instance_method('find_item') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('flatten') do |method|
    method.define_optional_argument('level')
  end

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('has_value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('include?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('indexes') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('indices') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('invert')

  klass.define_instance_method('keep_if') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('key') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('length')

  klass.define_instance_method('max_entries')

  klass.define_instance_method('member?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('other')
    method.define_block_argument('block')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('rassoc') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('redistribute') do |method|
    method.define_argument('entries')
  end

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('select!')

  klass.define_instance_method('shift')

  klass.define_instance_method('size')

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('store') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_iter')

  klass.define_instance_method('to_s')

  klass.define_instance_method('update') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end
end
