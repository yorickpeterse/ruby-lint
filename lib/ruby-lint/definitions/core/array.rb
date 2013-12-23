# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-12-23 09:38:51 +0100
# Platform: rbx 2.2.1

RubyLint::GlobalScope.definitions.define_constant('Array') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('allocate')

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_method('yaml_tag_subclasses?')

  klass.define_instance_method('&') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('multiplier')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('arg1')
    method.define_optional_argument('arg2')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('ent')
    method.define_optional_argument('fin')
  end

  klass.define_instance_method('__append__') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('__rescue_match__') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('assoc') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('at') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect!')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('combination') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('compact')

  klass.define_instance_method('compact!')

  klass.define_instance_method('concat') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('delete_at') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('delete_if')

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('drop_while')

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_instance_method('each_index')

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_argument('idx')
    method.define_optional_argument('default')
  end

  klass.define_instance_method('fill') do |method|
    method.define_optional_argument('a')
    method.define_optional_argument('b')
    method.define_optional_argument('c')
  end

  klass.define_instance_method('find') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('find_all')

  klass.define_instance_method('find_index') do |method|
    method.define_optional_argument('obj')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('flat_map')

  klass.define_instance_method('flatten') do |method|
    method.define_optional_argument('level')
  end

  klass.define_instance_method('flatten!') do |method|
    method.define_optional_argument('level')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('hash')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('index') do |method|
    method.define_optional_argument('obj')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('size_or_array')
    method.define_optional_argument('obj')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('idx')
    method.define_rest_argument('items')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('join') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('keep_if')

  klass.define_instance_method('last') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('lazy')

  klass.define_instance_method('length')

  klass.define_instance_method('map')

  klass.define_instance_method('map!')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('new_range') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_instance_method('new_reserved') do |method|
    method.define_argument('count')
  end

  klass.define_instance_method('nitems')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('pack') do |method|
    method.define_argument('directives')
  end

  klass.define_instance_method('partition')

  klass.define_instance_method('permutation') do |method|
    method.define_optional_argument('num')
  end

  klass.define_instance_method('pop') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('product') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('push') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('rassoc') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reject!')

  klass.define_instance_method('repeated_combination') do |method|
    method.define_argument('combination_size')
  end

  klass.define_instance_method('repeated_permutation') do |method|
    method.define_argument('combination_size')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('reverse')

  klass.define_instance_method('reverse!')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('rindex') do |method|
    method.define_optional_argument('obj')
  end

  klass.define_instance_method('rotate') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('rotate!') do |method|
    method.define_optional_argument('cnt')
  end

  klass.define_instance_method('sample') do |method|
    method.define_optional_argument('count')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('select!')

  klass.define_instance_method('shelljoin')

  klass.define_instance_method('shift') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('shuffle') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('shuffle!') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('slice') do |method|
    method.define_argument('arg1')
    method.define_optional_argument('arg2')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_argument('start')
    method.define_optional_argument('length')
  end

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort!')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('sort_by!')

  klass.define_instance_method('sort_inplace')

  klass.define_instance_method('start')

  klass.define_instance_method('start=')

  klass.define_instance_method('taguri')

  klass.define_instance_method('taguri=')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_tuple')

  klass.define_instance_method('to_yaml') do |method|
    method.define_optional_argument('opts')
  end

  klass.define_instance_method('total')

  klass.define_instance_method('total=')

  klass.define_instance_method('transpose')

  klass.define_instance_method('tuple')

  klass.define_instance_method('tuple=')

  klass.define_instance_method('uniq')

  klass.define_instance_method('uniq!')

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('values')
  end

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('yaml_initialize') do |method|
    method.define_argument('tag')
    method.define_argument('val')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('others')
  end

  klass.define_instance_method('|') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Array::Enumerator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('drop_while')

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_instance_method('each_with_index')

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('find') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('find_all')

  klass.define_instance_method('find_index') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('flat_map')

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('receiver_or_size')
    method.define_optional_argument('method_name')
    method.define_rest_argument('method_args')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('lazy')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('next')

  klass.define_instance_method('next_values')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('peek')

  klass.define_instance_method('peek_values')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('rewind')

  klass.define_instance_method('select')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_index') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Array::SortedElement') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Array').deep_freeze
