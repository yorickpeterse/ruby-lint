# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('ActiveModel') do |defs|
  defs.define_constant('ActiveModel') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('autoload_at') do |method|
      method.define_argument('path')
    end

    klass.define_method('autoload_under') do |method|
      method.define_argument('path')
    end

    klass.define_method('autoloads')

    klass.define_method('eager_autoload')

    klass.define_method('eager_load!')

    klass.define_method('initialize')

    klass.define_method('version')

    klass.define_instance_method('eager_load!')
  end

  defs.define_constant('ActiveModel::AttributeMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('attribute_method?') do |method|
      method.define_argument('attr_name')
    end

    klass.define_instance_method('attribute_missing') do |method|
      method.define_argument('match')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('method_missing') do |method|
      method.define_argument('method')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('respond_to?') do |method|
      method.define_argument('method')
      method.define_optional_argument('include_private_methods')
    end

    klass.define_instance_method('respond_to_without_attributes?') do |method|
      method.define_argument('meth')
      method.define_optional_argument('include_private')
    end
  end

  defs.define_constant('ActiveModel::AttributeMethods::CALL_COMPILABLE_REGEXP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('multiline?')

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('alias_attribute') do |method|
      method.define_argument('new_name')
      method.define_argument('old_name')
    end

    klass.define_instance_method('attribute_method_affix') do |method|
      method.define_rest_argument('affixes')
    end

    klass.define_instance_method('attribute_method_prefix') do |method|
      method.define_rest_argument('prefixes')
    end

    klass.define_instance_method('attribute_method_suffix') do |method|
      method.define_rest_argument('suffixes')
    end

    klass.define_instance_method('define_attribute_method') do |method|
      method.define_argument('attr_name')
    end

    klass.define_instance_method('define_attribute_methods') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('generated_attribute_methods')

    klass.define_instance_method('instance_method_already_implemented?') do |method|
      method.define_argument('method_name')
    end

    klass.define_instance_method('undefine_attribute_methods')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('match') do |method|
      method.define_argument('method_name')
    end

    klass.define_instance_method('method_missing_target')

    klass.define_instance_method('method_name') do |method|
      method.define_argument('attr_name')
    end

    klass.define_instance_method('plain?')

    klass.define_instance_method('prefix')

    klass.define_instance_method('suffix')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch') do |klass|
    klass.inherits(defs.constant_proxy('Struct'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('new') do |method|
      method.define_rest_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('attr_name')

    klass.define_instance_method('attr_name=')

    klass.define_instance_method('method_name')

    klass.define_instance_method('method_name=')

    klass.define_instance_method('target')

    klass.define_instance_method('target=')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('index_by')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('lazy')

    klass.define_instance_method('many?')

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

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch::Group') do |klass|
    klass.inherits(defs.constant_proxy('Rubinius::FFI::Struct'))

    klass.define_instance_method('gid')

    klass.define_instance_method('mem')

    klass.define_instance_method('name')

    klass.define_instance_method('passwd')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Rubinius::FFI::Struct'))

    klass.define_instance_method('dir')

    klass.define_instance_method('gecos')

    klass.define_instance_method('gid')

    klass.define_instance_method('name')

    klass.define_instance_method('passwd')

    klass.define_instance_method('shell')

    klass.define_instance_method('uid')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch::STRUCT_ATTRS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('val')
      method.define_argument('sort_id')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('sort_id')

    klass.define_instance_method('value')
  end

  defs.define_constant('ActiveModel::AttributeMethods::ClassMethods::AttributeMethodMatcher::AttributeMethodMatch::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('new') do |method|
      method.define_rest_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=')

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('utime')
      method.define_optional_argument('stime')
      method.define_optional_argument('cutime')
      method.define_optional_argument('cstime')
      method.define_optional_argument('tutime')
      method.define_optional_argument('tstime')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=')

    klass.define_instance_method('tstime')

    klass.define_instance_method('tstime=')

    klass.define_instance_method('tutime')

    klass.define_instance_method('tutime=')

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=')
  end

  defs.define_constant('ActiveModel::AttributeMethods::NAME_COMPILABLE_REGEXP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('multiline?')

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('ActiveModel::BlockValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('options')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('ActiveModel::Callbacks') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('extended') do |method|
      method.define_argument('base')
    end

    klass.define_method('initialize')

    klass.define_instance_method('define_model_callbacks') do |method|
      method.define_rest_argument('callbacks')
    end
  end

  defs.define_constant('ActiveModel::Conversion') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('to_key')

    klass.define_instance_method('to_model')

    klass.define_instance_method('to_param')

    klass.define_instance_method('to_partial_path')
  end

  defs.define_constant('ActiveModel::Conversion::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_to_partial_path')
  end

  defs.define_constant('ActiveModel::DeprecatedMassAssignmentSecurity') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')
  end

  defs.define_constant('ActiveModel::DeprecatedMassAssignmentSecurity::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('attr_accessible') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('attr_protected') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::Dirty') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('changed')

    klass.define_instance_method('changed?')

    klass.define_instance_method('changed_attributes')

    klass.define_instance_method('changes')

    klass.define_instance_method('previous_changes')
  end

  defs.define_constant('ActiveModel::EachValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::Validator'))

    klass.define_instance_method('attributes')

    klass.define_instance_method('check_validity!')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('validate') do |method|
      method.define_argument('record')
    end

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Errors') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('[]') do |method|
      method.define_argument('attribute')
    end

    klass.define_instance_method('[]=') do |method|
      method.define_argument('attribute')
      method.define_argument('error')
    end

    klass.define_instance_method('add') do |method|
      method.define_argument('attribute')
      method.define_optional_argument('message')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('add_on_blank') do |method|
      method.define_argument('attributes')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('add_on_empty') do |method|
      method.define_argument('attributes')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('added?') do |method|
      method.define_argument('attribute')
      method.define_optional_argument('message')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('as_json') do |method|
      method.define_optional_argument('options')
    end

    klass.define_instance_method('blank?')

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('clear')

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('count')

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_instance_method('delete') do |method|
      method.define_argument('key')
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

    klass.define_instance_method('flat_map')

    klass.define_instance_method('full_message') do |method|
      method.define_argument('attribute')
      method.define_argument('message')
    end

    klass.define_instance_method('full_messages')

    klass.define_instance_method('full_messages_for') do |method|
      method.define_argument('attribute')
    end

    klass.define_instance_method('generate_message') do |method|
      method.define_argument('attribute')
      method.define_optional_argument('type')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('get') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('has_key?') do |method|
      method.define_argument('attribute')
    end

    klass.define_instance_method('include?') do |method|
      method.define_argument('attribute')
    end

    klass.define_instance_method('index_by')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('base')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('keys')

    klass.define_instance_method('lazy')

    klass.define_instance_method('many?')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('messages')

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

    klass.define_instance_method('set') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_instance_method('size')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('to_a')

    klass.define_instance_method('to_hash') do |method|
      method.define_optional_argument('full_messages')
    end

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_instance_method('values')

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::Errors::CALLBACKS_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::Errors::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('index_by')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('lazy')

    klass.define_instance_method('many?')

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

  defs.define_constant('ActiveModel::Errors::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('val')
      method.define_argument('sort_id')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('sort_id')

    klass.define_instance_method('value')
  end

  defs.define_constant('ActiveModel::ForbiddenAttributesError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

  end

  defs.define_constant('ActiveModel::ForbiddenAttributesProtection') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('sanitize_for_mass_assignment') do |method|
      method.define_argument('attributes')
    end
  end

  defs.define_constant('ActiveModel::Lint') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('ActiveModel::Lint::Tests') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('test_errors_aref')

    klass.define_instance_method('test_model_naming')

    klass.define_instance_method('test_persisted?')

    klass.define_instance_method('test_to_key')

    klass.define_instance_method('test_to_param')

    klass.define_instance_method('test_to_partial_path')
  end

  defs.define_constant('ActiveModel::MissingAttributeError') do |klass|
    klass.inherits(defs.constant_proxy('NoMethodError'))

  end

  defs.define_constant('ActiveModel::Model') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('included') do |method|
      method.define_argument('base')
    end

    klass.define_method('initialize')

    klass.define_instance_method('persisted?')
  end

  defs.define_constant('ActiveModel::Name') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('!~') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('<') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('<=') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('<=>') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('==') do |method|
      method.define_argument('arg')
    end

    klass.define_instance_method('===') do |method|
      method.define_argument('arg')
    end

    klass.define_instance_method('=~') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('>=') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_instance_method('cache_key')

    klass.define_instance_method('collection')

    klass.define_instance_method('element')

    klass.define_instance_method('eql?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('human') do |method|
      method.define_optional_argument('options')
    end

    klass.define_instance_method('i18n_key')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('klass')
      method.define_optional_argument('namespace')
      method.define_optional_argument('name')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('param_key')

    klass.define_instance_method('plural')

    klass.define_instance_method('route_key')

    klass.define_instance_method('singular')

    klass.define_instance_method('singular_route_key')

    klass.define_instance_method('to_s') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('to_str') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActiveModel::Naming') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_method('param_key') do |method|
      method.define_argument('record_or_class')
    end

    klass.define_method('plural') do |method|
      method.define_argument('record_or_class')
    end

    klass.define_method('route_key') do |method|
      method.define_argument('record_or_class')
    end

    klass.define_method('singular') do |method|
      method.define_argument('record_or_class')
    end

    klass.define_method('singular_route_key') do |method|
      method.define_argument('record_or_class')
    end

    klass.define_method('uncountable?') do |method|
      method.define_argument('record_or_class')
    end

    klass.define_instance_method('model_name')
  end

  defs.define_constant('ActiveModel::Railtie') do |klass|
    klass.inherits(defs.constant_proxy('Rails::Railtie'))

    klass.define_method('config') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('configure') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('instance')

    klass.define_method('method_missing') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActiveModel::Railtie::ABSTRACT_RAILTIES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::Railtie::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('config') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('configure') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('inherited') do |method|
      method.define_argument('base')
    end

    klass.define_instance_method('instance')

    klass.define_instance_method('method_missing') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('respond_to?') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::Railtie::Collection') do |klass|
    klass.inherits(defs.constant_proxy('Array'))

    klass.define_instance_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('each_strongly_connected_component')

    klass.define_instance_method('each_strongly_connected_component_from') do |method|
      method.define_argument('node')
      method.define_optional_argument('id_map')
      method.define_optional_argument('stack')
    end

    klass.define_instance_method('strongly_connected_components')

    klass.define_instance_method('tsort')

    klass.define_instance_method('tsort_each')

    klass.define_instance_method('tsort_each_child') do |method|
      method.define_argument('initializer')
      method.define_block_argument('block')
    end

    klass.define_instance_method('tsort_each_node')
  end

  defs.define_constant('ActiveModel::Railtie::Configurable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')
  end

  defs.define_constant('ActiveModel::Railtie::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('eager_load_namespaces')

    klass.define_instance_method('after_initialize') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('app_generators')

    klass.define_instance_method('app_middleware')

    klass.define_instance_method('before_configuration') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('before_eager_load') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('before_initialize') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('eager_load_namespaces')

    klass.define_instance_method('initialize')

    klass.define_instance_method('respond_to?') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('to_prepare') do |method|
      method.define_block_argument('blk')
    end

    klass.define_instance_method('to_prepare_blocks')

    klass.define_instance_method('watchable_dirs')

    klass.define_instance_method('watchable_files')
  end

  defs.define_constant('ActiveModel::Railtie::Initializer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('after')

    klass.define_instance_method('before')

    klass.define_instance_method('belongs_to?') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('bind') do |method|
      method.define_argument('context')
    end

    klass.define_instance_method('block')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('context')
      method.define_argument('options')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('run') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::SecurePassword') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_method('min_cost')

    klass.define_method('min_cost=')
  end

  defs.define_constant('ActiveModel::SecurePassword::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('has_secure_password') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActiveModel::SecurePassword::InstanceMethodsOnActivation') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('authenticate') do |method|
      method.define_argument('unencrypted_password')
    end

    klass.define_instance_method('password=') do |method|
      method.define_argument('unencrypted_password')
    end

    klass.define_instance_method('password_confirmation=') do |method|
      method.define_argument('unencrypted_password')
    end
  end

  defs.define_constant('ActiveModel::Serialization') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('read_attribute_for_serialization') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('serializable_hash') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActiveModel::Serializers') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('autoload_at') do |method|
      method.define_argument('path')
    end

    klass.define_method('autoload_under') do |method|
      method.define_argument('path')
    end

    klass.define_method('autoloads')

    klass.define_method('eager_autoload')

    klass.define_method('eager_load!')

    klass.define_method('initialize')
  end

  defs.define_constant('ActiveModel::Serializers::JSON') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('as_json') do |method|
      method.define_optional_argument('options')
    end

    klass.define_instance_method('from_json') do |method|
      method.define_argument('json')
      method.define_optional_argument('include_root')
    end

    klass.define_instance_method('read_attribute_for_serialization') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('serializable_hash') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActiveModel::Serializers::Xml') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('from_xml') do |method|
      method.define_argument('xml')
    end

    klass.define_instance_method('read_attribute_for_serialization') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('serializable_hash') do |method|
      method.define_optional_argument('options')
    end

    klass.define_instance_method('to_xml') do |method|
      method.define_optional_argument('options')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActiveModel::Serializers::Xml::Serializer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('serializable')
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('options')

    klass.define_instance_method('serializable_collection')

    klass.define_instance_method('serializable_hash')

    klass.define_instance_method('serialize')
  end

  defs.define_constant('ActiveModel::Serializers::Xml::Serializer::Attribute') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('compute_type')

    klass.define_instance_method('decorations')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('serializable')
      method.define_argument('value')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('type')

    klass.define_instance_method('value')
  end

  defs.define_constant('ActiveModel::Serializers::Xml::Serializer::MethodAttribute') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::Serializers::Xml::Serializer::Attribute'))

  end

  defs.define_constant('ActiveModel::StrictValidationFailed') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

  end

  defs.define_constant('ActiveModel::TestCase') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::TestCase'))

  end

  defs.define_constant('ActiveModel::TestCase::Assertion') do |klass|
    klass.inherits(defs.constant_proxy('Exception'))

  end

  defs.define_constant('ActiveModel::TestCase::CALLBACK_FILTER_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::TestCase::Callback') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('_update_filter') do |method|
      method.define_argument('filter_options')
      method.define_argument('new_options')
    end

    klass.define_instance_method('apply') do |method|
      method.define_argument('code')
    end

    klass.define_instance_method('chain')

    klass.define_instance_method('chain=')

    klass.define_instance_method('clone') do |method|
      method.define_argument('chain')
      method.define_argument('klass')
    end

    klass.define_instance_method('deprecate_per_key_option') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('duplicates?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('filter')

    klass.define_instance_method('filter=')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('chain')
      method.define_argument('filter')
      method.define_argument('kind')
      method.define_argument('options')
      method.define_argument('klass')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('kind')

    klass.define_instance_method('kind=')

    klass.define_instance_method('klass')

    klass.define_instance_method('klass=')

    klass.define_instance_method('matches?') do |method|
      method.define_argument('_kind')
      method.define_argument('_filter')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('next_id')

    klass.define_instance_method('normalize_options!') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('options')

    klass.define_instance_method('options=')

    klass.define_instance_method('raw_filter')

    klass.define_instance_method('raw_filter=')

    klass.define_instance_method('recompile!') do |method|
      method.define_argument('_options')
    end
  end

  defs.define_constant('ActiveModel::TestCase::CallbackChain') do |klass|
    klass.inherits(defs.constant_proxy('Array'))

    klass.define_instance_method('append') do |method|
      method.define_rest_argument('callbacks')
    end

    klass.define_instance_method('compile')

    klass.define_instance_method('config')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('config')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('prepend') do |method|
      method.define_rest_argument('callbacks')
    end
  end

  defs.define_constant('ActiveModel::TestCase::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('__callback_runner_name') do |method|
      method.define_argument('kind')
    end

    klass.define_instance_method('__callback_runner_name_cache')

    klass.define_instance_method('__define_callbacks') do |method|
      method.define_argument('kind')
      method.define_argument('object')
    end

    klass.define_instance_method('__generate_callback_runner_name') do |method|
      method.define_argument('kind')
    end

    klass.define_instance_method('__reset_runner') do |method|
      method.define_argument('symbol')
    end

    klass.define_instance_method('__update_callbacks') do |method|
      method.define_argument('name')
      method.define_optional_argument('filters')
      method.define_optional_argument('block')
    end

    klass.define_instance_method('define_callbacks') do |method|
      method.define_rest_argument('callbacks')
    end

    klass.define_instance_method('reset_callbacks') do |method|
      method.define_argument('symbol')
    end

    klass.define_instance_method('set_callback') do |method|
      method.define_argument('name')
      method.define_rest_argument('filter_list')
      method.define_block_argument('block')
    end

    klass.define_instance_method('skip_callback') do |method|
      method.define_argument('name')
      method.define_rest_argument('filter_list')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActiveModel::TestCase::PASSTHROUGH_EXCEPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::TestCase::UNDEFINED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('inspect')
  end

  defs.define_constant('ActiveModel::Translation') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('human_attribute_name') do |method|
      method.define_argument('attribute')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('i18n_scope')

    klass.define_instance_method('lookup_ancestors')

    klass.define_instance_method('model_name')
  end

  defs.define_constant('ActiveModel::VERSION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('ActiveModel::VERSION::MAJOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('o')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('o')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('ago') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('byte')

    klass.define_method('bytes')

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('day')

    klass.define_method('days')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('even?')

    klass.define_method('exabyte')

    klass.define_method('exabytes')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('fortnight')

    klass.define_method('fortnights')

    klass.define_method('from_now') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('gigabyte')

    klass.define_method('gigabytes')

    klass.define_method('hour')

    klass.define_method('hours')

    klass.define_method('i')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('kilobyte')

    klass.define_method('kilobytes')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('megabyte')

    klass.define_method('megabytes')

    klass.define_method('minute')

    klass.define_method('minutes')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('month')

    klass.define_method('months')

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('petabyte')

    klass.define_method('petabytes')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('second')

    klass.define_method('seconds')

    klass.define_method('since') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('terabyte')

    klass.define_method('terabytes')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_d')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('until') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('week')

    klass.define_method('weeks')

    klass.define_method('year')

    klass.define_method('years')

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('ActiveModel::VERSION::MINOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('o')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('o')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('ago') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('byte')

    klass.define_method('bytes')

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('day')

    klass.define_method('days')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('even?')

    klass.define_method('exabyte')

    klass.define_method('exabytes')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('fortnight')

    klass.define_method('fortnights')

    klass.define_method('from_now') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('gigabyte')

    klass.define_method('gigabytes')

    klass.define_method('hour')

    klass.define_method('hours')

    klass.define_method('i')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('kilobyte')

    klass.define_method('kilobytes')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('megabyte')

    klass.define_method('megabytes')

    klass.define_method('minute')

    klass.define_method('minutes')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('month')

    klass.define_method('months')

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('petabyte')

    klass.define_method('petabytes')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('second')

    klass.define_method('seconds')

    klass.define_method('since') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('terabyte')

    klass.define_method('terabytes')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_d')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('until') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('week')

    klass.define_method('weeks')

    klass.define_method('year')

    klass.define_method('years')

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('ActiveModel::VERSION::PRE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('^') do |method|
      method.define_argument('other')
    end

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('to_a')

    klass.define_method('to_c')

    klass.define_method('to_crlf')

    klass.define_method('to_f')

    klass.define_method('to_h')

    klass.define_method('to_i')

    klass.define_method('to_lf')

    klass.define_method('to_r')

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::VERSION::STRING') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('b')

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

    klass.define_method('index') do |method|
      method.define_argument('str')
      method.define_optional_argument('start')
    end

    klass.define_method('insert') do |method|
      method.define_argument('index')
      method.define_argument('other')
    end

    klass.define_method('intern')

    klass.define_method('is_binary_data?')

    klass.define_method('is_complex_yaml?')

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

  defs.define_constant('ActiveModel::VERSION::TINY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('o')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('o')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('ago') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('byte')

    klass.define_method('bytes')

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('day')

    klass.define_method('days')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('even?')

    klass.define_method('exabyte')

    klass.define_method('exabytes')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('fortnight')

    klass.define_method('fortnights')

    klass.define_method('from_now') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('gigabyte')

    klass.define_method('gigabytes')

    klass.define_method('hour')

    klass.define_method('hours')

    klass.define_method('i')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('kilobyte')

    klass.define_method('kilobytes')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('megabyte')

    klass.define_method('megabytes')

    klass.define_method('minute')

    klass.define_method('minutes')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('month')

    klass.define_method('months')

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('petabyte')

    klass.define_method('petabytes')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('second')

    klass.define_method('seconds')

    klass.define_method('since') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('terabyte')

    klass.define_method('terabytes')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_d')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('until') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('week')

    klass.define_method('weeks')

    klass.define_method('year')

    klass.define_method('years')

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('ActiveModel::Validations') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('errors')

    klass.define_instance_method('invalid?') do |method|
      method.define_optional_argument('context')
    end

    klass.define_instance_method('read_attribute_for_validation') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('run_validations!')

    klass.define_instance_method('valid?') do |method|
      method.define_optional_argument('context')
    end

    klass.define_instance_method('validates_with') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActiveModel::Validations::AbsenceValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attr_name')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::AcceptanceValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('setup') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::Callbacks') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('run_validations!')
  end

  defs.define_constant('ActiveModel::Validations::Callbacks::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('after_validation') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('before_validation') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActiveModel::Validations::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_parse_validates_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('_validates_default_keys')

    klass.define_instance_method('attribute_method?') do |method|
      method.define_argument('attribute')
    end

    klass.define_instance_method('clear_validators!')

    klass.define_instance_method('inherited') do |method|
      method.define_argument('base')
    end

    klass.define_instance_method('validate') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('validates') do |method|
      method.define_rest_argument('attributes')
    end

    klass.define_instance_method('validates!') do |method|
      method.define_rest_argument('attributes')
    end

    klass.define_instance_method('validates_each') do |method|
      method.define_rest_argument('attr_names')
      method.define_block_argument('block')
    end

    klass.define_instance_method('validates_with') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('validators')

    klass.define_instance_method('validators_on') do |method|
      method.define_rest_argument('attributes')
    end
  end

  defs.define_constant('ActiveModel::Validations::Clusivity') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('check_validity!')
  end

  defs.define_constant('ActiveModel::Validations::Clusivity::ERROR_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('b')

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

    klass.define_method('index') do |method|
      method.define_argument('str')
      method.define_optional_argument('start')
    end

    klass.define_method('insert') do |method|
      method.define_argument('index')
      method.define_argument('other')
    end

    klass.define_method('intern')

    klass.define_method('is_binary_data?')

    klass.define_method('is_complex_yaml?')

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

  defs.define_constant('ActiveModel::Validations::ConfirmationValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('setup') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::ExclusionValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::ExclusionValidator::ERROR_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('b')

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

    klass.define_method('index') do |method|
      method.define_argument('str')
      method.define_optional_argument('start')
    end

    klass.define_method('insert') do |method|
      method.define_argument('index')
      method.define_argument('other')
    end

    klass.define_method('intern')

    klass.define_method('is_binary_data?')

    klass.define_method('is_complex_yaml?')

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

  defs.define_constant('ActiveModel::Validations::FormatValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('check_validity!')

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::HelperMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('validates_absence_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_acceptance_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_confirmation_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_exclusion_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_format_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_inclusion_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_length_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_numericality_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_presence_of') do |method|
      method.define_rest_argument('attr_names')
    end

    klass.define_instance_method('validates_size_of') do |method|
      method.define_rest_argument('attr_names')
    end
  end

  defs.define_constant('ActiveModel::Validations::InclusionValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::InclusionValidator::ERROR_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('b')

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

    klass.define_method('index') do |method|
      method.define_argument('str')
      method.define_optional_argument('start')
    end

    klass.define_method('insert') do |method|
      method.define_argument('index')
      method.define_argument('other')
    end

    klass.define_method('intern')

    klass.define_method('is_binary_data?')

    klass.define_method('is_complex_yaml?')

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

  defs.define_constant('ActiveModel::Validations::LengthValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('check_validity!')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attribute')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::LengthValidator::CHECKS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('assert_valid_keys') do |method|
      method.define_rest_argument('valid_keys')
    end

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

    klass.define_method('deep_merge') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_merge!') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_stringify_keys')

    klass.define_method('deep_stringify_keys!')

    klass.define_method('deep_symbolize_keys')

    klass.define_method('deep_symbolize_keys!')

    klass.define_method('deep_transform_keys') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('deep_transform_keys!') do |method|
      method.define_block_argument('block')
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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('except') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('except!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('extractable_options?')

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

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('nested_under_indifferent_access')

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

    klass.define_method('reverse_merge') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_merge!') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_update') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shift')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('store') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('stringify_keys')

    klass.define_method('stringify_keys!')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('symbolize_keys')

    klass.define_method('symbolize_keys!')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_h')

    klass.define_method('to_hash')

    klass.define_method('to_iter')

    klass.define_method('to_options')

    klass.define_method('to_options!')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('transform_keys')

    klass.define_method('transform_keys!')

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

    klass.define_method('with_indifferent_access')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::Validations::LengthValidator::MESSAGES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('assert_valid_keys') do |method|
      method.define_rest_argument('valid_keys')
    end

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

    klass.define_method('deep_merge') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_merge!') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_stringify_keys')

    klass.define_method('deep_stringify_keys!')

    klass.define_method('deep_symbolize_keys')

    klass.define_method('deep_symbolize_keys!')

    klass.define_method('deep_transform_keys') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('deep_transform_keys!') do |method|
      method.define_block_argument('block')
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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('except') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('except!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('extractable_options?')

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

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('nested_under_indifferent_access')

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

    klass.define_method('reverse_merge') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_merge!') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_update') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shift')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('store') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('stringify_keys')

    klass.define_method('stringify_keys!')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('symbolize_keys')

    klass.define_method('symbolize_keys!')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_h')

    klass.define_method('to_hash')

    klass.define_method('to_iter')

    klass.define_method('to_options')

    klass.define_method('to_options!')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('transform_keys')

    klass.define_method('transform_keys!')

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

    klass.define_method('with_indifferent_access')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::Validations::LengthValidator::RESERVED_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::Validations::NumericalityValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('check_validity!')

    klass.define_instance_method('filtered_options') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('parse_raw_value_as_a_number') do |method|
      method.define_argument('raw_value')
    end

    klass.define_instance_method('parse_raw_value_as_an_integer') do |method|
      method.define_argument('raw_value')
    end

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attr_name')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::NumericalityValidator::CHECKS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('assert_valid_keys') do |method|
      method.define_rest_argument('valid_keys')
    end

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

    klass.define_method('deep_merge') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_merge!') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_stringify_keys')

    klass.define_method('deep_stringify_keys!')

    klass.define_method('deep_symbolize_keys')

    klass.define_method('deep_symbolize_keys!')

    klass.define_method('deep_transform_keys') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('deep_transform_keys!') do |method|
      method.define_block_argument('block')
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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('except') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('except!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('extractable_options?')

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

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('nested_under_indifferent_access')

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

    klass.define_method('reverse_merge') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_merge!') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_update') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shift')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('store') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('stringify_keys')

    klass.define_method('stringify_keys!')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('symbolize_keys')

    klass.define_method('symbolize_keys!')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_h')

    klass.define_method('to_hash')

    klass.define_method('to_iter')

    klass.define_method('to_options')

    klass.define_method('to_options!')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('transform_keys')

    klass.define_method('transform_keys!')

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

    klass.define_method('with_indifferent_access')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActiveModel::Validations::NumericalityValidator::RESERVED_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

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

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

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

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

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

    klass.define_method('many?')

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

    klass.define_method('second')

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

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('ActiveModel::Validations::PresenceValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attr_name')
      method.define_argument('value')
    end
  end

  defs.define_constant('ActiveModel::Validations::WithValidator') do |klass|
    klass.inherits(defs.constant_proxy('ActiveModel::EachValidator'))

    klass.define_instance_method('validate_each') do |method|
      method.define_argument('record')
      method.define_argument('attr')
      method.define_argument('val')
    end
  end

  defs.define_constant('ActiveModel::Validator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('kind')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('kind')

    klass.define_instance_method('options')

    klass.define_instance_method('validate') do |method|
      method.define_argument('record')
    end
  end
end
