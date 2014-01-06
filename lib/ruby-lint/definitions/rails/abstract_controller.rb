# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('AbstractController') do |defs|
  defs.define_constant('AbstractController') do |klass|
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

  defs.define_constant('AbstractController::AssetPaths') do |klass|
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

  defs.define_constant('AbstractController::Base') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('abstract')

    klass.define_method('abstract!')

    klass.define_method('abstract?')

    klass.define_method('action_methods')

    klass.define_method('clear_action_methods!')

    klass.define_method('config')

    klass.define_method('config_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('configure')

    klass.define_method('controller_path')

    klass.define_method('direct_descendants')

    klass.define_method('hidden_actions')

    klass.define_method('inherited') do |method|
      method.define_argument('klass')
    end

    klass.define_method('internal_methods')

    klass.define_method('method_added') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('action_methods')

    klass.define_instance_method('action_name')

    klass.define_instance_method('action_name=')

    klass.define_instance_method('available_action?') do |method|
      method.define_argument('action_name')
    end

    klass.define_instance_method('config')

    klass.define_instance_method('controller_path')

    klass.define_instance_method('formats')

    klass.define_instance_method('formats=')

    klass.define_instance_method('process') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('response_body')

    klass.define_instance_method('response_body=')

    klass.define_instance_method('send_action') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('AbstractController::Base::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('config')

    klass.define_instance_method('config_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('configure')
  end

  defs.define_constant('AbstractController::Base::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::InheritableOptions'))

    klass.define_method('compile_methods!') do |method|
      method.define_argument('keys')
    end

    klass.define_instance_method('compile_methods!')
  end

  defs.define_constant('AbstractController::Callbacks') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('process_action') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('AbstractController::Callbacks::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_insert_callbacks') do |method|
      method.define_argument('callbacks')
      method.define_optional_argument('block')
    end

    klass.define_instance_method('_normalize_callback_option') do |method|
      method.define_argument('options')
      method.define_argument('from')
      method.define_argument('to')
    end

    klass.define_instance_method('_normalize_callback_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('after_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('after_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('append_after_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('append_after_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('append_around_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('append_around_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('append_before_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('append_before_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('around_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('around_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('before_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('before_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('prepend_after_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('prepend_after_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('prepend_around_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('prepend_around_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('prepend_before_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('prepend_before_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_instance_method('skip_action_callback') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_after_action') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_after_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_around_action') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_around_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_before_action') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_before_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('skip_filter') do |method|
      method.define_rest_argument('names')
    end
  end

  defs.define_constant('AbstractController::Collector') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('generate_method_for_mime') do |method|
      method.define_argument('mime')
    end

    klass.define_method('initialize')

    klass.define_instance_method('atom') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('bmp') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('css') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('csv') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('gif') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('html') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('ics') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('jpeg') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('js') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('json') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('method_missing') do |method|
      method.define_argument('symbol')
      method.define_block_argument('block')
    end

    klass.define_instance_method('mpeg') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('multipart_form') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('pdf') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('png') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('rss') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('text') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('tiff') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('url_encoded_form') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('xml') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('yaml') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('AbstractController::Helpers') do |klass|
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

  defs.define_constant('AbstractController::Helpers::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('clear_helpers')

    klass.define_instance_method('helper') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('helper_method') do |method|
      method.define_rest_argument('meths')
    end

    klass.define_instance_method('inherited') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('modules_for_helpers') do |method|
      method.define_argument('args')
    end
  end

  defs.define_constant('AbstractController::Helpers::ClassMethods::MissingHelperError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('error')
      method.define_argument('path')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('AbstractController::Helpers::ClassMethods::MissingHelperError::InvalidExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError'))

  end

  defs.define_constant('AbstractController::Helpers::ClassMethods::MissingHelperError::MRIExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError::InvalidExtensionError'))

  end

  defs.define_constant('AbstractController::Helpers::ClassMethods::MissingHelperError::REGEXPS') do |klass|
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

  defs.define_constant('AbstractController::Layouts') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('_layout_conditions') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('_normalize_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('action_has_layout=')

    klass.define_instance_method('action_has_layout?')
  end

  defs.define_constant('AbstractController::Layouts::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_implied_layout_name')

    klass.define_instance_method('_write_layout_method')

    klass.define_instance_method('inherited') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('layout') do |method|
      method.define_argument('layout')
      method.define_optional_argument('conditions')
    end
  end

  defs.define_constant('AbstractController::Layouts::ClassMethods::LayoutConditions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('AbstractController::Logger') do |klass|
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

  defs.define_constant('AbstractController::Railties') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('AbstractController::Railties::RoutesHelpers') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_method('with') do |method|
      method.define_argument('routes')
    end
  end

  defs.define_constant('AbstractController::Rendering') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('_render_template') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('process') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_instance_method('render') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('render_to_body') do |method|
      method.define_optional_argument('options')
    end

    klass.define_instance_method('render_to_string') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('view_assigns')

    klass.define_instance_method('view_context')

    klass.define_instance_method('view_context_class')

    klass.define_instance_method('view_context_class=')

    klass.define_instance_method('view_renderer')
  end

  defs.define_constant('AbstractController::Rendering::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('view_context_class')
  end

  defs.define_constant('AbstractController::Rendering::DEFAULT_PROTECTED_INSTANCE_VARIABLES') do |klass|
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

  defs.define_constant('AbstractController::Translation') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('l') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('localize') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('t') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('translate') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('AbstractController::UrlFor') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('_routes')
  end

  defs.define_constant('AbstractController::UrlFor::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_routes')

    klass.define_instance_method('action_methods')
  end

  defs.define_constant('AbstractController::ViewPaths') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('_prefixes')

    klass.define_instance_method('append_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('details_for_lookup')

    klass.define_instance_method('formats') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('formats=') do |method|
      method.define_argument('arg')
    end

    klass.define_instance_method('locale') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('locale=') do |method|
      method.define_argument('arg')
    end

    klass.define_instance_method('lookup_context')

    klass.define_instance_method('prepend_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('template_exists?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('view_paths') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('AbstractController::ViewPaths::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('append_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('parent_prefixes')

    klass.define_instance_method('prepend_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('view_paths')

    klass.define_instance_method('view_paths=') do |method|
      method.define_argument('paths')
    end
  end
end
