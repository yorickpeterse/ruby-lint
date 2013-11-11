# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('INSTALL_DIRS') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('&') do |method|
    method.define_argument('other')
  end

  klass.define_method('*') do |method|
    method.define_argument('multiplier')
  end

  klass.define_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_method('[]') do |method|
    method.define_argument('arg1')
    method.define_optional_argument('arg2')
  end

  klass.define_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('ent')
    method.define_optional_argument('fin')
  end

  klass.define_method('__append__') do |method|
    method.define_argument('obj')
  end

  klass.define_method('__rescue_match__') do |method|
    method.define_argument('exception')
  end

  klass.define_method('abbrev') do |method|
    method.define_optional_argument('pattern')
  end

  klass.define_method('all?')

  klass.define_method('any?')

  klass.define_method('assoc') do |method|
    method.define_argument('obj')
  end

  klass.define_method('at') do |method|
    method.define_argument('idx')
  end

  klass.define_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_method('clear')

  klass.define_method('collect')

  klass.define_method('collect!')

  klass.define_method('collect_concat')

  klass.define_method('combination') do |method|
    method.define_argument('num')
  end

  klass.define_method('compact')

  klass.define_method('compact!')

  klass.define_method('concat') do |method|
    method.define_argument('other')
  end

  klass.define_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_method('cycle') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('delete') do |method|
    method.define_argument('obj')
  end

  klass.define_method('delete_at') do |method|
    method.define_argument('idx')
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

  klass.define_method('each_index')

  klass.define_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

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
    method.define_argument('idx')
    method.define_optional_argument('default')
  end

  klass.define_method('fill') do |method|
    method.define_optional_argument('a')
    method.define_optional_argument('b')
    method.define_optional_argument('c')
  end

  klass.define_method('find') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_method('find_all')

  klass.define_method('find_index') do |method|
    method.define_optional_argument('obj')
  end

  klass.define_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('flat_map')

  klass.define_method('flatten') do |method|
    method.define_optional_argument('level')
  end

  klass.define_method('flatten!') do |method|
    method.define_optional_argument('level')
  end

  klass.define_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('group_by')

  klass.define_method('index') do |method|
    method.define_optional_argument('obj')
  end

  klass.define_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_method('insert') do |method|
    method.define_argument('idx')
    method.define_rest_argument('items')
  end

  klass.define_method('join') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('keep_if')

  klass.define_method('last') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('lazy')

  klass.define_method('length')

  klass.define_method('map')

  klass.define_method('map!')

  klass.define_method('max')

  klass.define_method('max_by')

  klass.define_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_method('min')

  klass.define_method('min_by')

  klass.define_method('minmax')

  klass.define_method('minmax_by')

  klass.define_method('new_range') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_method('new_reserved') do |method|
    method.define_argument('count')
  end

  klass.define_method('nitems')

  klass.define_method('none?')

  klass.define_method('one?')

  klass.define_method('pack') do |method|
    method.define_argument('directives')
  end

  klass.define_method('partition')

  klass.define_method('permutation') do |method|
    method.define_optional_argument('num')
  end

  klass.define_method('pop') do |method|
    method.define_optional_argument('many')
  end

  klass.define_method('product') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('push') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('quote')

  klass.define_method('rassoc') do |method|
    method.define_argument('obj')
  end

  klass.define_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_method('reject')

  klass.define_method('reject!')

  klass.define_method('repeated_combination') do |method|
    method.define_argument('combination_size')
  end

  klass.define_method('repeated_permutation') do |method|
    method.define_argument('combination_size')
  end

  klass.define_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_method('reverse')

  klass.define_method('reverse!')

  klass.define_method('reverse_each')

  klass.define_method('rindex') do |method|
    method.define_optional_argument('obj')
  end

  klass.define_method('rotate') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('rotate!') do |method|
    method.define_optional_argument('cnt')
  end

  klass.define_method('sample') do |method|
    method.define_optional_argument('count')
    method.define_optional_argument('options')
  end

  klass.define_method('select')

  klass.define_method('select!')

  klass.define_method('shelljoin')

  klass.define_method('shift') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('shuffle') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('shuffle!') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_argument('arg1')
    method.define_optional_argument('arg2')
  end

  klass.define_method('slice!') do |method|
    method.define_argument('start')
    method.define_optional_argument('length')
  end

  klass.define_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_method('sort')

  klass.define_method('sort!')

  klass.define_method('sort_by')

  klass.define_method('sort_by!')

  klass.define_method('sort_inplace')

  klass.define_method('start')

  klass.define_method('start=')

  klass.define_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_method('take_while')

  klass.define_method('to_a')

  klass.define_method('to_ary')

  klass.define_method('to_csv') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('to_tuple')

  klass.define_method('total')

  klass.define_method('total=')

  klass.define_method('transpose')

  klass.define_method('tuple')

  klass.define_method('tuple=')

  klass.define_method('uniq')

  klass.define_method('uniq!')

  klass.define_method('unshift') do |method|
    method.define_rest_argument('values')
  end

  klass.define_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_method('zip') do |method|
    method.define_rest_argument('others')
  end

  klass.define_method('|') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'INSTALL_DIRS').deep_freeze
