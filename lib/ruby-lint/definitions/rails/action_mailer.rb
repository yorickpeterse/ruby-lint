# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('ActionMailer') do |defs|
  defs.define_constant('ActionMailer') do |klass|
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
  end

  defs.define_constant('ActionMailer::Base') do |klass|
    klass.inherits(defs.constant_proxy('AbstractController::Base'))

    klass.define_method('__callback_runner_name') do |method|
      method.define_argument('kind')
    end

    klass.define_method('__callback_runner_name_cache')

    klass.define_method('__define_callbacks') do |method|
      method.define_argument('kind')
      method.define_argument('object')
    end

    klass.define_method('__generate_callback_runner_name') do |method|
      method.define_argument('kind')
    end

    klass.define_method('__reset_runner') do |method|
      method.define_argument('symbol')
    end

    klass.define_method('__update_callbacks') do |method|
      method.define_argument('name')
      method.define_optional_argument('filters')
      method.define_optional_argument('block')
    end

    klass.define_method('_helper_methods')

    klass.define_method('_helper_methods=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_helper_methods?')

    klass.define_method('_helpers')

    klass.define_method('_helpers=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_helpers?')

    klass.define_method('_implied_layout_name')

    klass.define_method('_insert_callbacks') do |method|
      method.define_argument('callbacks')
      method.define_optional_argument('block')
    end

    klass.define_method('_layout')

    klass.define_method('_layout=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_layout?')

    klass.define_method('_layout_conditions')

    klass.define_method('_layout_conditions=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_layout_conditions?')

    klass.define_method('_normalize_callback_option') do |method|
      method.define_argument('options')
      method.define_argument('from')
      method.define_argument('to')
    end

    klass.define_method('_normalize_callback_options') do |method|
      method.define_argument('options')
    end

    klass.define_method('_process_action_callbacks')

    klass.define_method('_process_action_callbacks=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_process_action_callbacks?')

    klass.define_method('_view_paths')

    klass.define_method('_view_paths=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_view_paths?')

    klass.define_method('_write_layout_method')

    klass.define_method('add_delivery_method') do |method|
      method.define_argument('symbol')
      method.define_argument('klass')
      method.define_optional_argument('default_options')
    end

    klass.define_method('after_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('after_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_after_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_after_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_around_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_around_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_before_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_before_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('append_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_method('around_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('around_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('asset_host')

    klass.define_method('asset_host=') do |method|
      method.define_argument('value')
    end

    klass.define_method('assets_dir')

    klass.define_method('assets_dir=') do |method|
      method.define_argument('value')
    end

    klass.define_method('before_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('before_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('clear_helpers')

    klass.define_method('controller_path')

    klass.define_method('default') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('default_asset_host_protocol')

    klass.define_method('default_asset_host_protocol=') do |method|
      method.define_argument('value')
    end

    klass.define_method('default_options=') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('default_params')

    klass.define_method('default_params=') do |method|
      method.define_argument('val')
    end

    klass.define_method('default_params?')

    klass.define_method('define_callbacks') do |method|
      method.define_rest_argument('callbacks')
    end

    klass.define_method('deliver_mail') do |method|
      method.define_argument('mail')
    end

    klass.define_method('deliveries') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('deliveries=') do |method|
      method.define_argument('arg')
    end

    klass.define_method('delivery_method')

    klass.define_method('delivery_method=') do |method|
      method.define_argument('val')
    end

    klass.define_method('delivery_method?')

    klass.define_method('delivery_methods')

    klass.define_method('delivery_methods=') do |method|
      method.define_argument('val')
    end

    klass.define_method('delivery_methods?')

    klass.define_method('file_settings')

    klass.define_method('file_settings=') do |method|
      method.define_argument('val')
    end

    klass.define_method('file_settings?')

    klass.define_method('helper') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('helper_method') do |method|
      method.define_rest_argument('meths')
    end

    klass.define_method('javascripts_dir')

    klass.define_method('javascripts_dir=') do |method|
      method.define_argument('value')
    end

    klass.define_method('layout') do |method|
      method.define_argument('layout')
      method.define_optional_argument('conditions')
    end

    klass.define_method('logger')

    klass.define_method('logger=') do |method|
      method.define_argument('value')
    end

    klass.define_method('mailer_name')

    klass.define_method('mailer_name=')

    klass.define_method('method_missing') do |method|
      method.define_argument('method_name')
      method.define_rest_argument('args')
    end

    klass.define_method('modules_for_helpers') do |method|
      method.define_argument('args')
    end

    klass.define_method('parent_prefixes')

    klass.define_method('perform_deliveries')

    klass.define_method('perform_deliveries=') do |method|
      method.define_argument('obj')
    end

    klass.define_method('prepend_after_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('prepend_after_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('prepend_around_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('prepend_around_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('prepend_before_action') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('prepend_before_filter') do |method|
      method.define_rest_argument('names')
      method.define_block_argument('blk')
    end

    klass.define_method('prepend_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_method('protected_instance_variables')

    klass.define_method('protected_instance_variables=') do |method|
      method.define_argument('val')
    end

    klass.define_method('protected_instance_variables?')

    klass.define_method('raise_delivery_errors')

    klass.define_method('raise_delivery_errors=') do |method|
      method.define_argument('obj')
    end

    klass.define_method('receive') do |method|
      method.define_argument('raw_mail')
    end

    klass.define_method('register_interceptor') do |method|
      method.define_argument('interceptor')
    end

    klass.define_method('register_interceptors') do |method|
      method.define_rest_argument('interceptors')
    end

    klass.define_method('register_observer') do |method|
      method.define_argument('observer')
    end

    klass.define_method('register_observers') do |method|
      method.define_rest_argument('observers')
    end

    klass.define_method('relative_url_root')

    klass.define_method('relative_url_root=') do |method|
      method.define_argument('value')
    end

    klass.define_method('reset_callbacks') do |method|
      method.define_argument('symbol')
    end

    klass.define_method('respond_to?') do |method|
      method.define_argument('method')
      method.define_optional_argument('include_private')
    end

    klass.define_method('sendmail_settings')

    klass.define_method('sendmail_settings=') do |method|
      method.define_argument('val')
    end

    klass.define_method('sendmail_settings?')

    klass.define_method('set_callback') do |method|
      method.define_argument('name')
      method.define_rest_argument('filter_list')
      method.define_block_argument('block')
    end

    klass.define_method('set_payload_for_mail') do |method|
      method.define_argument('payload')
      method.define_argument('mail')
    end

    klass.define_method('skip_action_callback') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_after_action') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_after_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_around_action') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_around_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_before_action') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_before_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('skip_callback') do |method|
      method.define_argument('name')
      method.define_rest_argument('filter_list')
      method.define_block_argument('block')
    end

    klass.define_method('skip_filter') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('smtp_settings')

    klass.define_method('smtp_settings=') do |method|
      method.define_argument('val')
    end

    klass.define_method('smtp_settings?')

    klass.define_method('stylesheets_dir')

    klass.define_method('stylesheets_dir=') do |method|
      method.define_argument('value')
    end

    klass.define_method('test_settings')

    klass.define_method('test_settings=') do |method|
      method.define_argument('val')
    end

    klass.define_method('test_settings?')

    klass.define_method('view_context_class')

    klass.define_method('view_paths')

    klass.define_method('view_paths=') do |method|
      method.define_argument('paths')
    end

    klass.define_method('wrap_delivery_behavior') do |method|
      method.define_argument('mail')
      method.define_optional_argument('method')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('_helper_methods')

    klass.define_instance_method('_helper_methods=')

    klass.define_instance_method('_helper_methods?')

    klass.define_instance_method('_helpers')

    klass.define_instance_method('_helpers=')

    klass.define_instance_method('_helpers?')

    klass.define_instance_method('_layout_conditions') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('_normalize_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('_prefixes')

    klass.define_instance_method('_process_action_callbacks')

    klass.define_instance_method('_process_action_callbacks=')

    klass.define_instance_method('_process_action_callbacks?')

    klass.define_instance_method('_render_template') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('_view_paths')

    klass.define_instance_method('_view_paths=')

    klass.define_instance_method('_view_paths?')

    klass.define_instance_method('action_has_layout=')

    klass.define_instance_method('action_has_layout?')

    klass.define_instance_method('append_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('asset_host')

    klass.define_instance_method('asset_host=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('assets_dir')

    klass.define_instance_method('assets_dir=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('attachments')

    klass.define_instance_method('benchmark') do |method|
      method.define_optional_argument('message')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('collect_responses') do |method|
      method.define_argument('headers')
    end

    klass.define_instance_method('create_parts_from_responses') do |method|
      method.define_argument('m')
      method.define_argument('responses')
    end

    klass.define_instance_method('default_asset_host_protocol')

    klass.define_instance_method('default_asset_host_protocol=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('default_i18n_subject') do |method|
      method.define_optional_argument('interpolations')
    end

    klass.define_instance_method('default_params')

    klass.define_instance_method('default_params=')

    klass.define_instance_method('default_params?')

    klass.define_instance_method('delivery_method')

    klass.define_instance_method('delivery_method=')

    klass.define_instance_method('delivery_method?')

    klass.define_instance_method('delivery_methods')

    klass.define_instance_method('delivery_methods=')

    klass.define_instance_method('delivery_methods?')

    klass.define_instance_method('details_for_lookup')

    klass.define_instance_method('each_template') do |method|
      method.define_argument('paths')
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('file_settings')

    klass.define_instance_method('file_settings=')

    klass.define_instance_method('file_settings?')

    klass.define_instance_method('headers') do |method|
      method.define_optional_argument('args')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('method_name')
      method.define_rest_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('insert_part') do |method|
      method.define_argument('container')
      method.define_argument('response')
      method.define_argument('charset')
    end

    klass.define_instance_method('javascripts_dir')

    klass.define_instance_method('javascripts_dir=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('l') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('locale') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('locale=') do |method|
      method.define_argument('arg')
    end

    klass.define_instance_method('localize') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('logger')

    klass.define_instance_method('logger=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('lookup_context')

    klass.define_instance_method('mail') do |method|
      method.define_optional_argument('headers')
      method.define_block_argument('block')
    end

    klass.define_instance_method('mailer_name')

    klass.define_instance_method('message')

    klass.define_instance_method('message=')

    klass.define_instance_method('perform_deliveries')

    klass.define_instance_method('perform_deliveries=') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('prepend_view_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('process') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('process_action') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('protected_instance_variables')

    klass.define_instance_method('protected_instance_variables=')

    klass.define_instance_method('protected_instance_variables?')

    klass.define_instance_method('raise_delivery_errors')

    klass.define_instance_method('raise_delivery_errors=') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('relative_url_root')

    klass.define_instance_method('relative_url_root=') do |method|
      method.define_argument('value')
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

    klass.define_instance_method('run_callbacks') do |method|
      method.define_argument('kind')
      method.define_block_argument('block')
    end

    klass.define_instance_method('sendmail_settings')

    klass.define_instance_method('sendmail_settings=')

    klass.define_instance_method('sendmail_settings?')

    klass.define_instance_method('set_content_type') do |method|
      method.define_argument('m')
      method.define_argument('user_content_type')
      method.define_argument('class_default')
    end

    klass.define_instance_method('smtp_settings')

    klass.define_instance_method('smtp_settings=')

    klass.define_instance_method('smtp_settings?')

    klass.define_instance_method('stylesheets_dir')

    klass.define_instance_method('stylesheets_dir=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('t') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('template_exists?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('test_settings')

    klass.define_instance_method('test_settings=')

    klass.define_instance_method('test_settings?')

    klass.define_instance_method('translate') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('view_assigns')

    klass.define_instance_method('view_context')

    klass.define_instance_method('view_context_class')

    klass.define_instance_method('view_context_class=')

    klass.define_instance_method('view_paths') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('view_renderer')

    klass.define_instance_method('wrap_delivery_behavior!') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActionMailer::Base::CALLBACK_FILTER_TYPES') do |klass|
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

  defs.define_constant('ActionMailer::Base::Callback') do |klass|
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

  defs.define_constant('ActionMailer::Base::CallbackChain') do |klass|
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

  defs.define_constant('ActionMailer::Base::ClassMethods') do |klass|
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

  defs.define_constant('ActionMailer::Base::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::InheritableOptions'))

    klass.define_method('compile_methods!') do |method|
      method.define_argument('keys')
    end

    klass.define_instance_method('compile_methods!')
  end

  defs.define_constant('ActionMailer::Base::DEFAULT_PROTECTED_INSTANCE_VARIABLES') do |klass|
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

  defs.define_constant('ActionMailer::Base::NullMail') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('body')

    klass.define_instance_method('method_missing') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActionMailer::Collector') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('all') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('any') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

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

    klass.define_instance_method('custom') do |method|
      method.define_argument('mime')
      method.define_optional_argument('options')
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

    klass.define_instance_method('initialize') do |method|
      method.define_argument('context')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
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

    klass.define_instance_method('responses')

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

  defs.define_constant('ActionMailer::DeliveryMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('wrap_delivery_behavior!') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActionMailer::DeliveryMethods::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('add_delivery_method') do |method|
      method.define_argument('symbol')
      method.define_argument('klass')
      method.define_optional_argument('default_options')
    end

    klass.define_instance_method('deliveries') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('deliveries=') do |method|
      method.define_argument('arg')
    end

    klass.define_instance_method('wrap_delivery_behavior') do |method|
      method.define_argument('mail')
      method.define_optional_argument('method')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionMailer::MailHelper') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('attachments')

    klass.define_instance_method('block_format') do |method|
      method.define_argument('text')
    end

    klass.define_instance_method('format_paragraph') do |method|
      method.define_argument('text')
      method.define_optional_argument('len')
      method.define_optional_argument('indent')
    end

    klass.define_instance_method('mailer')

    klass.define_instance_method('message')
  end

  defs.define_constant('ActionMailer::Railtie') do |klass|
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

  defs.define_constant('ActionMailer::Railtie::ABSTRACT_RAILTIES') do |klass|
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

  defs.define_constant('ActionMailer::Railtie::ClassMethods') do |klass|
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

  defs.define_constant('ActionMailer::Railtie::Collection') do |klass|
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

  defs.define_constant('ActionMailer::Railtie::Configurable') do |klass|
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

  defs.define_constant('ActionMailer::Railtie::Configuration') do |klass|
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

  defs.define_constant('ActionMailer::Railtie::Initializer') do |klass|
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

  defs.define_constant('ActionMailer::TestCase') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::TestCase'))

    klass.define_method('_mailer_class')

    klass.define_method('_mailer_class=') do |method|
      method.define_argument('val')
    end

    klass.define_method('_mailer_class?')

    klass.define_method('_setup_callbacks')

    klass.define_method('determine_constant_from_test_name') do |method|
      method.define_argument('test_name')
    end

    klass.define_method('determine_default_mailer') do |method|
      method.define_argument('name')
    end

    klass.define_method('mailer_class')

    klass.define_method('tests') do |method|
      method.define_argument('mailer')
    end

    klass.define_instance_method('_mailer_class')

    klass.define_instance_method('_mailer_class=')

    klass.define_instance_method('_mailer_class?')

    klass.define_instance_method('assert_emails') do |method|
      method.define_argument('number')
    end

    klass.define_instance_method('assert_no_emails') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_test_deliveries')

    klass.define_instance_method('set_expected_mail')
  end

  defs.define_constant('ActionMailer::TestCase::Assertion') do |klass|
    klass.inherits(defs.constant_proxy('Exception'))

  end

  defs.define_constant('ActionMailer::TestCase::Behavior') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')

    klass.define_instance_method('assert_emails') do |method|
      method.define_argument('number')
    end

    klass.define_instance_method('assert_no_emails') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_test_deliveries')

    klass.define_instance_method('set_expected_mail')
  end

  defs.define_constant('ActionMailer::TestCase::Behavior::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('determine_default_mailer') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('mailer_class')

    klass.define_instance_method('tests') do |method|
      method.define_argument('mailer')
    end
  end

  defs.define_constant('ActionMailer::TestCase::CALLBACK_FILTER_TYPES') do |klass|
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

  defs.define_constant('ActionMailer::TestCase::Callback') do |klass|
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

  defs.define_constant('ActionMailer::TestCase::CallbackChain') do |klass|
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

  defs.define_constant('ActionMailer::TestCase::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('determine_default_mailer') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('mailer_class')

    klass.define_instance_method('tests') do |method|
      method.define_argument('mailer')
    end
  end

  defs.define_constant('ActionMailer::TestCase::PASSTHROUGH_EXCEPTIONS') do |klass|
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

  defs.define_constant('ActionMailer::TestCase::UNDEFINED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('inspect')
  end

  defs.define_constant('ActionMailer::TestHelper') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('assert_emails') do |method|
      method.define_argument('number')
    end

    klass.define_instance_method('assert_no_emails') do |method|
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActionMailer::VERSION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('ActionMailer::VERSION::MAJOR') do |klass|
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

  defs.define_constant('ActionMailer::VERSION::MINOR') do |klass|
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

  defs.define_constant('ActionMailer::VERSION::PRE') do |klass|
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

  defs.define_constant('ActionMailer::VERSION::STRING') do |klass|
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

  defs.define_constant('ActionMailer::VERSION::TINY') do |klass|
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
end
