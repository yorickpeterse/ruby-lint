# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:42:41 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Struct') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('hash')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('instance_variables')

  klass.define_instance_method('lazy')

  klass.define_instance_method('length')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each')

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

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Struct::Enumerator') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('Struct::Group') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('config') do |method|
    method.define_argument('base')
    method.define_rest_argument('fields')
  end

  klass.define_method('find_nested_parent')

  klass.define_method('layout') do |method|
    method.define_rest_argument('spec')
  end

  klass.define_method('members')

  klass.define_method('offset_of') do |method|
    method.define_argument('name')
  end

  klass.define_method('offsets')

  klass.define_method('size')

  klass.define_instance_method('[]') do |method|
    method.define_argument('field')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('field')
    method.define_argument('val')
  end

  klass.define_instance_method('free')

  klass.define_instance_method('gid')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('pointer')
    method.define_rest_argument('spec')
  end

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('ptr')
  end

  klass.define_instance_method('mem')

  klass.define_instance_method('members')

  klass.define_instance_method('name')

  klass.define_instance_method('null?')

  klass.define_instance_method('offset_of') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('offsets')

  klass.define_instance_method('passwd')

  klass.define_instance_method('pointer')

  klass.define_instance_method('size')

  klass.define_instance_method('to_ptr')

  klass.define_instance_method('values')
end

RubyLint::GlobalScope.definitions.define_constant('Struct::Passwd') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('config') do |method|
    method.define_argument('base')
    method.define_rest_argument('fields')
  end

  klass.define_method('find_nested_parent')

  klass.define_method('layout') do |method|
    method.define_rest_argument('spec')
  end

  klass.define_method('members')

  klass.define_method('offset_of') do |method|
    method.define_argument('name')
  end

  klass.define_method('offsets')

  klass.define_method('size')

  klass.define_instance_method('[]') do |method|
    method.define_argument('field')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('field')
    method.define_argument('val')
  end

  klass.define_instance_method('dir')

  klass.define_instance_method('free')

  klass.define_instance_method('gecos')

  klass.define_instance_method('gid')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('pointer')
    method.define_rest_argument('spec')
  end

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('ptr')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('name')

  klass.define_instance_method('null?')

  klass.define_instance_method('offset_of') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('offsets')

  klass.define_instance_method('passwd')

  klass.define_instance_method('pointer')

  klass.define_instance_method('shell')

  klass.define_instance_method('size')

  klass.define_instance_method('to_ptr')

  klass.define_instance_method('uid')

  klass.define_instance_method('values')
end

RubyLint::GlobalScope.definitions.define_constant('Struct::SortedElement') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('Struct::Tms') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Struct'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

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
    method.define_rest_argument('args')
  end

  klass.define_method('subclass_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('var')
    method.define_argument('obj')
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

  klass.define_instance_method('cstime')

  klass.define_instance_method('cstime=')

  klass.define_instance_method('cutime')

  klass.define_instance_method('cutime=')

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

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

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
    method.define_optional_argument('utime')
    method.define_optional_argument('stime')
    method.define_optional_argument('cutime')
    method.define_optional_argument('cstime')
    method.define_optional_argument('tutime')
    method.define_optional_argument('tstime')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('lazy')

  klass.define_instance_method('length')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('select')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('stime')

  klass.define_instance_method('stime=')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tstime')

  klass.define_instance_method('tstime=')

  klass.define_instance_method('tutime')

  klass.define_instance_method('tutime=')

  klass.define_instance_method('utime')

  klass.define_instance_method('utime=')

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Struct').deep_freeze
