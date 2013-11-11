# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('CONFIG') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_method('__entries__')

  klass.define_method('__store__') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_method('all?')

  klass.define_method('any?')

  klass.define_method('assoc') do |method|
    method.define_argument('key')
  end

  klass.define_method('capacity')

  klass.define_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_method('clear')

  klass.define_method('collect')

  klass.define_method('collect_concat')

  klass.define_method('compare_by_identity')

  klass.define_method('compare_by_identity?')

  klass.define_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_method('default') do |method|
    method.define_optional_argument('key')
  end

  klass.define_method('default=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_proc')

  klass.define_method('default_proc=') do |method|
    method.define_argument('prc')
  end

  klass.define_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_method('delete_if')

  klass.define_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_method('drop_while')

  klass.define_method('each')

  klass.define_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_method('each_item')

  klass.define_method('each_key')

  klass.define_method('each_pair')

  klass.define_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_method('each_value')

  klass.define_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_method('empty?')

  klass.define_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_method('fetch') do |method|
    method.define_argument('key')
    method.define_optional_argument('default')
  end

  klass.define_method('find') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_method('find_all')

  klass.define_method('find_index') do |method|
    method.define_optional_argument('value')
  end

  klass.define_method('find_item') do |method|
    method.define_argument('key')
  end

  klass.define_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('flat_map')

  klass.define_method('flatten') do |method|
    method.define_optional_argument('level')
  end

  klass.define_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('group_by')

  klass.define_method('has_key?') do |method|
    method.define_argument('key')
  end

  klass.define_method('has_value?') do |method|
    method.define_argument('value')
  end

  klass.define_method('index') do |method|
    method.define_argument('value')
  end

  klass.define_method('indexes') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('indices') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_method('invert')

  klass.define_method('keep_if')

  klass.define_method('key') do |method|
    method.define_argument('value')
  end

  klass.define_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_method('keys')

  klass.define_method('lazy')

  klass.define_method('length')

  klass.define_method('map')

  klass.define_method('max')

  klass.define_method('max_by')

  klass.define_method('max_entries')

  klass.define_method('member?') do |method|
    method.define_argument('key')
  end

  klass.define_method('merge') do |method|
    method.define_argument('other')
  end

  klass.define_method('merge!') do |method|
    method.define_argument('other')
  end

  klass.define_method('min')

  klass.define_method('min_by')

  klass.define_method('minmax')

  klass.define_method('minmax_by')

  klass.define_method('none?')

  klass.define_method('one?')

  klass.define_method('partition')

  klass.define_method('rassoc') do |method|
    method.define_argument('value')
  end

  klass.define_method('redistribute') do |method|
    method.define_argument('entries')
  end

  klass.define_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_method('rehash')

  klass.define_method('reject')

  klass.define_method('reject!')

  klass.define_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_method('reverse_each')

  klass.define_method('select')

  klass.define_method('select!')

  klass.define_method('shift')

  klass.define_method('size')

  klass.define_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_method('sort')

  klass.define_method('sort_by')

  klass.define_method('store') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_method('take_while')

  klass.define_method('to_a')

  klass.define_method('to_h')

  klass.define_method('to_hash')

  klass.define_method('to_iter')

  klass.define_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('update') do |method|
    method.define_argument('other')
  end

  klass.define_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_method('values')

  klass.define_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'CONFIG').deep_freeze
