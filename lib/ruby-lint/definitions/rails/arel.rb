# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:54:03 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('Arel') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('sql') do |method|
    method.define_argument('raw_sql')
  end

  klass.define_method('star')
end

RubyLint::GlobalScope.definitions.define_constant('Arel::AliasPredication') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('as') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Attribute') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('#<Class:0x22df4>'))

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

  klass.define_method('subclass_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('/') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('as') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('asc')

  klass.define_instance_method('average')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('distinct')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('desc')

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('does_not_match') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('does_not_match_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('does_not_match_any') do |method|
    method.define_argument('others')
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

  klass.define_instance_method('eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('extract') do |method|
    method.define_argument('field')
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

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('gt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('lower')

  klass.define_instance_method('lt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('matches') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('matches_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('matches_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('maximum')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minimum')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('none?')

  klass.define_instance_method('not_eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('relation')

  klass.define_instance_method('relation=')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('prc')
  end

  klass.define_instance_method('sort_by')

  klass.define_instance_method('sum')

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

RubyLint::GlobalScope.definitions.define_constant('Arel::Attributes') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('for') do |method|
    method.define_argument('column')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Compatibility') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Crud') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('compile_delete')

  klass.define_instance_method('compile_insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('compile_update') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('create_insert')

  klass.define_instance_method('delete')

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('values')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::DeleteManager') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::TreeManager'))

  klass.define_instance_method('ast')

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('engine')

  klass.define_instance_method('from') do |method|
    method.define_argument('relation')
  end

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('to_dot')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('visitor')

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('wheres=') do |method|
    method.define_argument('list')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Expression') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('asc')

  klass.define_instance_method('desc')
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Expressions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('average')

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('distinct')
  end

  klass.define_instance_method('extract') do |method|
    method.define_argument('field')
  end

  klass.define_instance_method('maximum')

  klass.define_instance_method('minimum')

  klass.define_instance_method('sum')
end

RubyLint::GlobalScope.definitions.define_constant('Arel::FactoryMethods') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::InnerJoin') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::Nodes::Join'))

  klass.define_instance_method('all?')

  klass.define_instance_method('and') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

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
    method.define_block_argument('block')
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

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('object')
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

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('left')

  klass.define_instance_method('left=')

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('none?')

  klass.define_instance_method('not')

  klass.define_instance_method('one?')

  klass.define_instance_method('or') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('partition')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('right')

  klass.define_instance_method('right=')

  klass.define_instance_method('select')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('prc')
  end

  klass.define_instance_method('sort_by')

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('identity')
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('to_sql') do |method|
    method.define_optional_argument('engine')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::InsertManager') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::TreeManager'))

  klass.define_instance_method('ast')

  klass.define_instance_method('columns')

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('create_values') do |method|
    method.define_argument('values')
    method.define_argument('columns')
  end

  klass.define_instance_method('engine')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('fields')
  end

  klass.define_instance_method('into') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('to_dot')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('values=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('visitor')

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Math') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('/') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Node') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('all?')

  klass.define_instance_method('and') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

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
    method.define_block_argument('block')
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

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('object')
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

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('none?')

  klass.define_instance_method('not')

  klass.define_instance_method('one?')

  klass.define_instance_method('or') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('partition')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('prc')
  end

  klass.define_instance_method('sort_by')

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('identity')
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('to_sql') do |method|
    method.define_optional_argument('engine')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Nodes') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::OrderPredications') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('asc')

  klass.define_instance_method('desc')
end

RubyLint::GlobalScope.definitions.define_constant('Arel::OuterJoin') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::Nodes::Join'))

  klass.define_instance_method('all?')

  klass.define_instance_method('and') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

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
    method.define_block_argument('block')
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

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('object')
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

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('left')

  klass.define_instance_method('left=')

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('none?')

  klass.define_instance_method('not')

  klass.define_instance_method('one?')

  klass.define_instance_method('or') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('partition')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('right')

  klass.define_instance_method('right=')

  klass.define_instance_method('select')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('prc')
  end

  klass.define_instance_method('sort_by')

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('identity')
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('to_sql') do |method|
    method.define_optional_argument('engine')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Predications') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('does_not_match') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('does_not_match_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('does_not_match_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('matches') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('matches_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('matches_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in_any') do |method|
    method.define_argument('others')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::SelectManager') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::TreeManager'))

  klass.define_instance_method('as') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('ast')

  klass.define_instance_method('compile_delete')

  klass.define_instance_method('compile_insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('compile_update') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('constraints')

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_insert')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('delete')

  klass.define_instance_method('distinct') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('engine')

  klass.define_instance_method('except') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('exists')

  klass.define_instance_method('from') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('froms')

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('columns')
  end

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('having') do |method|
    method.define_rest_argument('exprs')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('intersect') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('join') do |method|
    method.define_argument('relation')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('join_sources')

  klass.define_instance_method('join_sql')

  klass.define_instance_method('joins') do |method|
    method.define_argument('manager')
  end

  klass.define_instance_method('limit')

  klass.define_instance_method('limit=') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('lock') do |method|
    method.define_optional_argument('locking')
  end

  klass.define_instance_method('locked')

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('minus') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('offset')

  klass.define_instance_method('offset=') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('on') do |method|
    method.define_rest_argument('exprs')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('expr')
  end

  klass.define_instance_method('order_clauses')

  klass.define_instance_method('orders')

  klass.define_instance_method('project') do |method|
    method.define_rest_argument('projections')
  end

  klass.define_instance_method('projections')

  klass.define_instance_method('projections=') do |method|
    method.define_argument('projections')
  end

  klass.define_instance_method('skip') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('source')

  klass.define_instance_method('take') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('taken')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_dot')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('union') do |method|
    method.define_argument('operation')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('visitor')

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('where_clauses')

  klass.define_instance_method('where_sql')

  klass.define_instance_method('wheres')

  klass.define_instance_method('window') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('with') do |method|
    method.define_rest_argument('subqueries')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Sql') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::SqlLiteral') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::Nodes::SqlLiteral'))

  klass.define_method('__allocate__')

  klass.define_method('from_bytearray') do |method|
    method.define_argument('bytes')
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_method('from_codepoint') do |method|
    method.define_argument('code')
    method.define_argument('enc')
  end

  klass.define_method('json_create')

  klass.define_method('pattern') do |method|
    method.define_argument('size')
    method.define_argument('str')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('args')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('count_or_replacement')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('__crypt__') do |method|
    method.define_argument('other_str')
  end

  klass.define_instance_method('__data__')

  klass.define_instance_method('__data__=')

  klass.define_instance_method('acts_like_string?')

  klass.define_instance_method('append') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('apply_and!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('as') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('asc')

  klass.define_instance_method('ascii_only=')

  klass.define_instance_method('ascii_only?')

  klass.define_instance_method('at') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('average')

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('byte_append') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('bytes')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('byteslice') do |method|
    method.define_argument('index_or_range')
    method.define_optional_argument('length')
  end

  klass.define_instance_method('camelcase') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_instance_method('camelize') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_instance_method('capitalize')

  klass.define_instance_method('capitalize!')

  klass.define_instance_method('casecmp') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('center') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('chars')

  klass.define_instance_method('chomp') do |method|
    method.define_optional_argument('separator')
  end

  klass.define_instance_method('chomp!') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('chop')

  klass.define_instance_method('chop!')

  klass.define_instance_method('chr')

  klass.define_instance_method('chr_at') do |method|
    method.define_argument('byte')
  end

  klass.define_instance_method('classify')

  klass.define_instance_method('clear')

  klass.define_instance_method('codepoints')

  klass.define_instance_method('column_of') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('compare_substring') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('size')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('constantize')

  klass.define_instance_method('convert_float')

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('distinct')
  end

  klass.define_instance_method('count_table') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('crypt') do |method|
    method.define_argument('other_str')
  end

  klass.define_instance_method('dasherize')

  klass.define_instance_method('data')

  klass.define_instance_method('data=')

  klass.define_instance_method('deconstantize')

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('delete!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('demodulize')

  klass.define_instance_method('desc')

  klass.define_instance_method('does_not_match') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('does_not_match_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('does_not_match_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('downcase')

  klass.define_instance_method('downcase!')

  klass.define_instance_method('dump')

  klass.define_instance_method('each_byte')

  klass.define_instance_method('each_char')

  klass.define_instance_method('each_codepoint')

  klass.define_instance_method('each_line') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('encode') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('encode!') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('encode_json') do |method|
    method.define_argument('encoder')
  end

  klass.define_instance_method('encoding')

  klass.define_instance_method('encoding=')

  klass.define_instance_method('end_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('ends_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_instance_method('extract') do |method|
    method.define_argument('field')
  end

  klass.define_instance_method('find_character') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('find_string') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_instance_method('find_string_reverse') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('force_encoding') do |method|
    method.define_argument('enc')
  end

  klass.define_instance_method('foreign_key') do |method|
    method.define_optional_argument('separate_class_name_and_id_with_underscore')
  end

  klass.define_instance_method('from') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('getbyte') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('gsub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('gt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('gteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('gteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('hex')

  klass.define_instance_method('html_safe')

  klass.define_instance_method('humanize')

  klass.define_instance_method('in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('in_time_zone') do |method|
    method.define_optional_argument('zone')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('needle')
  end

  klass.define_instance_method('indent') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('str')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('index')
    method.define_argument('other')
  end

  klass.define_instance_method('intern')

  klass.define_instance_method('is_utf8?')

  klass.define_instance_method('last') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('line_of') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('lines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('ljust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('lstrip')

  klass.define_instance_method('lstrip!')

  klass.define_instance_method('lt') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lt_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lt_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq') do |method|
    method.define_argument('right')
  end

  klass.define_instance_method('lteq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('lteq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_instance_method('matches') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('matches_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('matches_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('maximum')

  klass.define_instance_method('mb_chars')

  klass.define_instance_method('minimum')

  klass.define_instance_method('modify!')

  klass.define_instance_method('next')

  klass.define_instance_method('next!')

  klass.define_instance_method('not_ascii_only?')

  klass.define_instance_method('not_eq') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_eq_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_eq_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('not_in_all') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('not_in_any') do |method|
    method.define_argument('others')
  end

  klass.define_instance_method('num_bytes')

  klass.define_instance_method('num_bytes=') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('oct')

  klass.define_instance_method('ord')

  klass.define_instance_method('parameterize') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('partition') do |method|
    method.define_optional_argument('pattern')
  end

  klass.define_instance_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pathmap_explode')

  klass.define_instance_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pluralize') do |method|
    method.define_optional_argument('count')
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('prefix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('prepend') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('reverse')

  klass.define_instance_method('reverse!')

  klass.define_instance_method('rindex') do |method|
    method.define_argument('sub')
    method.define_optional_argument('finish')
  end

  klass.define_instance_method('rjust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('rpartition') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('rstrip')

  klass.define_instance_method('rstrip!')

  klass.define_instance_method('safe_constantize')

  klass.define_instance_method('scan') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('secure_compare') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('setbyte') do |method|
    method.define_argument('index')
    method.define_argument('byte')
  end

  klass.define_instance_method('shared!')

  klass.define_instance_method('shellescape')

  klass.define_instance_method('shellsplit')

  klass.define_instance_method('shorten!') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('singularize') do |method|
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('slice') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_argument('one')
    method.define_optional_argument('two')
  end

  klass.define_instance_method('snake_case')

  klass.define_instance_method('split') do |method|
    method.define_optional_argument('pattern')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('squeeze') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('squeeze!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('squish')

  klass.define_instance_method('squish!')

  klass.define_instance_method('start_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('starts_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('strip')

  klass.define_instance_method('strip!')

  klass.define_instance_method('strip_heredoc')

  klass.define_instance_method('sub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('substring') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_instance_method('succ')

  klass.define_instance_method('succ!')

  klass.define_instance_method('suffix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('sum')

  klass.define_instance_method('swapcase')

  klass.define_instance_method('swapcase!')

  klass.define_instance_method('tableize')

  klass.define_instance_method('tabto') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('titlecase')

  klass.define_instance_method('titleize')

  klass.define_instance_method('to') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('to_ast') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('to_c')

  klass.define_instance_method('to_crlf')

  klass.define_instance_method('to_d')

  klass.define_instance_method('to_date')

  klass.define_instance_method('to_datetime')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i') do |method|
    method.define_optional_argument('base')
  end

  klass.define_instance_method('to_inum') do |method|
    method.define_argument('base')
    method.define_argument('check')
  end

  klass.define_instance_method('to_json_raw')

  klass.define_instance_method('to_json_raw_object')

  klass.define_instance_method('to_lf')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_sexp') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('to_str')

  klass.define_instance_method('to_sub_replacement') do |method|
    method.define_argument('result')
    method.define_argument('match')
  end

  klass.define_instance_method('to_sym')

  klass.define_instance_method('to_time') do |method|
    method.define_optional_argument('form')
  end

  klass.define_instance_method('tr') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr_expand!') do |method|
    method.define_argument('limit')
    method.define_argument('invalid_as_empty')
  end

  klass.define_instance_method('tr_s') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr_s!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr_trans') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
    method.define_argument('squeeze')
  end

  klass.define_instance_method('transform') do |method|
    method.define_argument('tbl')
    method.define_argument('respect_kcode')
  end

  klass.define_instance_method('treetop_camelize')

  klass.define_instance_method('truncate') do |method|
    method.define_argument('truncate_at')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('underscore')

  klass.define_instance_method('unpack') do |method|
    method.define_argument('directives')
  end

  klass.define_instance_method('upcase')

  klass.define_instance_method('upcase!')

  klass.define_instance_method('upto') do |method|
    method.define_argument('stop')
    method.define_optional_argument('exclusive')
  end

  klass.define_instance_method('valid_encoding=')

  klass.define_instance_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Table') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('engine')

  klass.define_method('engine=')

  klass.define_method('table_cache') do |method|
    method.define_argument('engine')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('alias') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('aliases')

  klass.define_instance_method('aliases=')

  klass.define_instance_method('columns')

  klass.define_instance_method('compile_delete')

  klass.define_instance_method('compile_insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('compile_update') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_insert')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('delete')

  klass.define_instance_method('engine')

  klass.define_instance_method('engine=')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('from') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('columns')
  end

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('having') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('insert_manager')

  klass.define_instance_method('join') do |method|
    method.define_argument('relation')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('joins') do |method|
    method.define_argument('manager')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('expr')
  end

  klass.define_instance_method('primary_key')

  klass.define_instance_method('project') do |method|
    method.define_rest_argument('things')
  end

  klass.define_instance_method('select_manager')

  klass.define_instance_method('skip') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('table_alias')

  klass.define_instance_method('table_alias=')

  klass.define_instance_method('table_name')

  klass.define_instance_method('take') do |method|
    method.define_argument('amount')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('where') do |method|
    method.define_argument('condition')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::TreeManager') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('ast')

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('engine')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('to_dot')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('visitor')

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::UpdateManager') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Arel::TreeManager'))

  klass.define_instance_method('ast')

  klass.define_instance_method('create_and') do |method|
    method.define_argument('clauses')
  end

  klass.define_instance_method('create_false')

  klass.define_instance_method('create_join') do |method|
    method.define_argument('to')
    method.define_optional_argument('constraint')
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('create_on') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('create_string_join') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('create_table_alias') do |method|
    method.define_argument('relation')
    method.define_argument('name')
  end

  klass.define_instance_method('create_true')

  klass.define_instance_method('engine')

  klass.define_instance_method('grouping') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('key')

  klass.define_instance_method('key=') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('lower') do |method|
    method.define_argument('column')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('expr')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('table') do |method|
    method.define_argument('table')
  end

  klass.define_instance_method('take') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('to_dot')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('visitor')

  klass.define_instance_method('where') do |method|
    method.define_argument('expr')
  end

  klass.define_instance_method('wheres=') do |method|
    method.define_argument('exprs')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('%') do |method|
    method.define_argument('args')
  end

  klass.define_method('*') do |method|
    method.define_argument('num')
  end

  klass.define_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_method('<<') do |method|
    method.define_argument('other')
  end

  klass.define_method('[]') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('count_or_replacement')
    method.define_optional_argument('replacement')
  end

  klass.define_method('__crypt__') do |method|
    method.define_argument('other_str')
  end

  klass.define_method('__data__')

  klass.define_method('__data__=')

  klass.define_method('acts_like_string?')

  klass.define_method('append') do |method|
    method.define_argument('str')
  end

  klass.define_method('apply_and!') do |method|
    method.define_argument('other')
  end

  klass.define_method('ascii_only=')

  klass.define_method('ascii_only?')

  klass.define_method('at') do |method|
    method.define_argument('position')
  end

  klass.define_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_method('byte_append') do |method|
    method.define_argument('str')
  end

  klass.define_method('bytes')

  klass.define_method('bytesize')

  klass.define_method('byteslice') do |method|
    method.define_argument('index_or_range')
    method.define_optional_argument('length')
  end

  klass.define_method('camelcase') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_method('camelize') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_method('capitalize')

  klass.define_method('capitalize!')

  klass.define_method('casecmp') do |method|
    method.define_argument('to')
  end

  klass.define_method('center') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_method('chars')

  klass.define_method('chomp') do |method|
    method.define_optional_argument('separator')
  end

  klass.define_method('chomp!') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('chop')

  klass.define_method('chop!')

  klass.define_method('chr')

  klass.define_method('chr_at') do |method|
    method.define_argument('byte')
  end

  klass.define_method('classify')

  klass.define_method('clear')

  klass.define_method('codepoints')

  klass.define_method('column_of') do |method|
    method.define_argument('index')
  end

  klass.define_method('compare_substring') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('size')
  end

  klass.define_method('concat') do |method|
    method.define_argument('other')
  end

  klass.define_method('constantize')

  klass.define_method('convert_float')

  klass.define_method('count') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('count_table') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('crypt') do |method|
    method.define_argument('other_str')
  end

  klass.define_method('dasherize')

  klass.define_method('data')

  klass.define_method('data=')

  klass.define_method('deconstantize')

  klass.define_method('delete') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('delete!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('demodulize')

  klass.define_method('downcase')

  klass.define_method('downcase!')

  klass.define_method('dump')

  klass.define_method('each_byte')

  klass.define_method('each_char')

  klass.define_method('each_codepoint')

  klass.define_method('each_line') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('empty?')

  klass.define_method('encode') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_method('encode!') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_method('encode_json') do |method|
    method.define_argument('encoder')
  end

  klass.define_method('encoding')

  klass.define_method('encoding=')

  klass.define_method('end_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_method('ends_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_method('find_character') do |method|
    method.define_argument('offset')
  end

  klass.define_method('find_string') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_method('find_string_reverse') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_method('first') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('force_encoding') do |method|
    method.define_argument('enc')
  end

  klass.define_method('foreign_key') do |method|
    method.define_optional_argument('separate_class_name_and_id_with_underscore')
  end

  klass.define_method('from') do |method|
    method.define_argument('position')
  end

  klass.define_method('getbyte') do |method|
    method.define_argument('index')
  end

  klass.define_method('gsub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('gsub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('hex')

  klass.define_method('html_safe')

  klass.define_method('humanize')

  klass.define_method('in_time_zone') do |method|
    method.define_optional_argument('zone')
  end

  klass.define_method('indent') do |method|
    method.define_argument('n')
  end

  klass.define_method('index') do |method|
    method.define_argument('str')
    method.define_optional_argument('start')
  end

  klass.define_method('insert') do |method|
    method.define_argument('index')
    method.define_argument('other')
  end

  klass.define_method('intern')

  klass.define_method('is_utf8?')

  klass.define_method('last') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('length')

  klass.define_method('line_of') do |method|
    method.define_argument('index')
  end

  klass.define_method('lines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('ljust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_method('lstrip')

  klass.define_method('lstrip!')

  klass.define_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_method('mb_chars')

  klass.define_method('modify!')

  klass.define_method('next')

  klass.define_method('next!')

  klass.define_method('not_ascii_only?')

  klass.define_method('num_bytes')

  klass.define_method('num_bytes=') do |method|
    method.define_argument('bytes')
  end

  klass.define_method('oct')

  klass.define_method('ord')

  klass.define_method('parameterize') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('partition') do |method|
    method.define_optional_argument('pattern')
  end

  klass.define_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_method('pathmap_explode')

  klass.define_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_method('pluralize') do |method|
    method.define_optional_argument('count')
    method.define_optional_argument('locale')
  end

  klass.define_method('prefix?') do |method|
    method.define_argument('other')
  end

  klass.define_method('prepend') do |method|
    method.define_argument('other')
  end

  klass.define_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_method('reverse')

  klass.define_method('reverse!')

  klass.define_method('rindex') do |method|
    method.define_argument('sub')
    method.define_optional_argument('finish')
  end

  klass.define_method('rjust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_method('rpartition') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('rstrip')

  klass.define_method('rstrip!')

  klass.define_method('safe_constantize')

  klass.define_method('scan') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('secure_compare') do |method|
    method.define_argument('other')
  end

  klass.define_method('setbyte') do |method|
    method.define_argument('index')
    method.define_argument('byte')
  end

  klass.define_method('shared!')

  klass.define_method('shellescape')

  klass.define_method('shellsplit')

  klass.define_method('shorten!') do |method|
    method.define_argument('size')
  end

  klass.define_method('singularize') do |method|
    method.define_optional_argument('locale')
  end

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_method('slice!') do |method|
    method.define_argument('one')
    method.define_optional_argument('two')
  end

  klass.define_method('snake_case')

  klass.define_method('split') do |method|
    method.define_optional_argument('pattern')
    method.define_optional_argument('limit')
  end

  klass.define_method('squeeze') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('squeeze!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('squish')

  klass.define_method('squish!')

  klass.define_method('start_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_method('starts_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_method('strip')

  klass.define_method('strip!')

  klass.define_method('strip_heredoc')

  klass.define_method('sub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('sub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('substring') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_method('succ')

  klass.define_method('succ!')

  klass.define_method('suffix?') do |method|
    method.define_argument('other')
  end

  klass.define_method('sum') do |method|
    method.define_optional_argument('bits')
  end

  klass.define_method('swapcase')

  klass.define_method('swapcase!')

  klass.define_method('tableize')

  klass.define_method('tabto') do |method|
    method.define_argument('n')
  end

  klass.define_method('titlecase')

  klass.define_method('titleize')

  klass.define_method('to') do |method|
    method.define_argument('position')
  end

  klass.define_method('to_ast') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('to_c')

  klass.define_method('to_crlf')

  klass.define_method('to_d')

  klass.define_method('to_date')

  klass.define_method('to_datetime')

  klass.define_method('to_f')

  klass.define_method('to_i') do |method|
    method.define_optional_argument('base')
  end

  klass.define_method('to_inum') do |method|
    method.define_argument('base')
    method.define_argument('check')
  end

  klass.define_method('to_json_raw')

  klass.define_method('to_json_raw_object')

  klass.define_method('to_lf')

  klass.define_method('to_r')

  klass.define_method('to_sexp') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('to_str')

  klass.define_method('to_sub_replacement') do |method|
    method.define_argument('result')
    method.define_argument('match')
  end

  klass.define_method('to_sym')

  klass.define_method('to_time') do |method|
    method.define_optional_argument('form')
  end

  klass.define_method('tr') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr_expand!') do |method|
    method.define_argument('limit')
    method.define_argument('invalid_as_empty')
  end

  klass.define_method('tr_s') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr_s!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr_trans') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
    method.define_argument('squeeze')
  end

  klass.define_method('transform') do |method|
    method.define_argument('tbl')
    method.define_argument('respect_kcode')
  end

  klass.define_method('treetop_camelize')

  klass.define_method('truncate') do |method|
    method.define_argument('truncate_at')
    method.define_optional_argument('options')
  end

  klass.define_method('underscore')

  klass.define_method('unpack') do |method|
    method.define_argument('directives')
  end

  klass.define_method('upcase')

  klass.define_method('upcase!')

  klass.define_method('upto') do |method|
    method.define_argument('stop')
    method.define_optional_argument('exclusive')
  end

  klass.define_method('valid_encoding=')

  klass.define_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('Arel::Visitors') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('for') do |method|
    method.define_argument('engine')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('visitor_for') do |method|
    method.define_argument('engine')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Arel::WindowPredications') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('over') do |method|
    method.define_optional_argument('expr')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Arel').deep_freeze