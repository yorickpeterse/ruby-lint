# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:09:45 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Set') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('ary')
  end

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_instance_method('&') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('^') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('add') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('add?') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('classify')

  klass.define_instance_method('clear')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect!')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('delete?') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('delete_if')

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('difference') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('divide') do |method|
    method.define_block_argument('func')
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
    method.define_argument('o')
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

  klass.define_instance_method('flatten')

  klass.define_instance_method('flatten!')

  klass.define_instance_method('flatten_merge') do |method|
    method.define_argument('set')
    method.define_optional_argument('seen')
  end

  klass.define_instance_method('freeze')

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('hash')

  klass.define_instance_method('include?') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('enum')
    method.define_block_argument('block')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('intersection') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('keep_if')

  klass.define_instance_method('lazy')

  klass.define_instance_method('length')

  klass.define_instance_method('map')

  klass.define_instance_method('map!')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('pp')
  end

  klass.define_instance_method('pretty_print_cycle') do |method|
    method.define_argument('pp')
  end

  klass.define_instance_method('proper_subset?') do |method|
    method.define_argument('set')
  end

  klass.define_instance_method('proper_superset?') do |method|
    method.define_argument('set')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reject!')

  klass.define_instance_method('replace') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('select')

  klass.define_instance_method('select!')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('subset?') do |method|
    method.define_argument('set')
  end

  klass.define_instance_method('subtract') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('superset?') do |method|
    method.define_argument('set')
  end

  klass.define_instance_method('taint')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('union') do |method|
    method.define_argument('enum')
  end

  klass.define_instance_method('untaint')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('|') do |method|
    method.define_argument('enum')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Set::Enumerator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

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

RubyLint::GlobalScope.definitions.define_constant('Set::InspectKey') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_method('capitalize')

  klass.define_method('casecmp') do |method|
    method.define_argument('other')
  end

  klass.define_method('downcase')

  klass.define_method('empty?')

  klass.define_method('encoding')

  klass.define_method('id2name')

  klass.define_method('index')

  klass.define_method('intern')

  klass.define_method('is_constant?')

  klass.define_method('is_cvar?')

  klass.define_method('is_ivar?')

  klass.define_method('length')

  klass.define_method('match') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('next')

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_method('succ')

  klass.define_method('swapcase')

  klass.define_method('to_proc')

  klass.define_method('to_sym')

  klass.define_method('upcase')
end

RubyLint::GlobalScope.definitions.define_constant('Set::SortedElement') do |klass|
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

RubyLint::GlobalScope.definitions.lookup(:const, 'Set').deep_freeze
