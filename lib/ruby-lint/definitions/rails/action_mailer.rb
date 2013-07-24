# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:55 +0200
# Platform: rbx 2.0.0.n198

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoloads')

  klass.define_method('eager_autoload')

  klass.define_method('eager_load!')

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('version')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('AbstractController::Base'))

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

  klass.define_method('abstract')

  klass.define_method('abstract!')

  klass.define_method('abstract?')

  klass.define_method('action_methods')

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

  klass.define_method('clear_action_methods!')

  klass.define_method('clear_helpers')

  klass.define_method('config')

  klass.define_method('config_accessor') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('configure')

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

  klass.define_method('direct_descendants')

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

  klass.define_method('hidden_actions')

  klass.define_method('inherited') do |method|
    method.define_argument('klass')
  end

  klass.define_method('internal_methods')

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

  klass.define_method('method_added') do |method|
    method.define_argument('name')
  end

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

  klass.define_instance_method('action_methods')

  klass.define_instance_method('action_name')

  klass.define_instance_method('action_name=')

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

  klass.define_instance_method('available_action?') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('collect_responses') do |method|
    method.define_argument('headers')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('controller_path')

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

  klass.define_instance_method('formats') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('formats=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('headers') do |method|
    method.define_optional_argument('args')
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

  klass.define_instance_method('response_body')

  klass.define_instance_method('response_body=')

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end

  klass.define_instance_method('send_action') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
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

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::Collector') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::DeliveryMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('wrap_delivery_behavior!') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::MailHelper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

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

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Railtie'))

  klass.define_method('abstract_railtie?')

  klass.define_method('config') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('configure') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('console') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('generate_railtie_name') do |method|
    method.define_argument('class_or_module')
  end

  klass.define_method('generators') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('initializer') do |method|
    method.define_argument('name')
    method.define_optional_argument('opts')
    method.define_block_argument('blk')
  end

  klass.define_method('initializers')

  klass.define_method('initializers_chain')

  klass.define_method('initializers_for') do |method|
    method.define_argument('binding')
  end

  klass.define_method('instance')

  klass.define_method('method_missing') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('railtie_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('rake_tasks') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('runner') do |method|
    method.define_block_argument('blk')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('initializers')

  klass.define_instance_method('railtie_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('railtie_namespace')

  klass.define_instance_method('run_console_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_generators_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_initializers') do |method|
    method.define_optional_argument('group')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('run_runner_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_tasks_blocks') do |method|
    method.define_argument('app')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::TestCase'))

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

  klass.define_method('_mailer_class')

  klass.define_method('_mailer_class=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_mailer_class?')

  klass.define_method('_setup_callbacks')

  klass.define_method('_setup_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_setup_callbacks?')

  klass.define_method('_teardown_callbacks')

  klass.define_method('_teardown_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_teardown_callbacks?')

  klass.define_method('current')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('describe') do |method|
    method.define_argument('text')
  end

  klass.define_method('determine_constant_from_test_name') do |method|
    method.define_argument('test_name')
  end

  klass.define_method('determine_default_mailer') do |method|
    method.define_argument('name')
  end

  klass.define_method('direct_descendants')

  klass.define_method('for_tag') do |method|
    method.define_argument('tag')
  end

  klass.define_method('i_suck_and_my_tests_are_order_dependent!')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('jruby?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('mailer_class')

  klass.define_method('make_my_diffs_pretty!')

  klass.define_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('parallelize_me!')

  klass.define_method('reset')

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('rubinius?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('set_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
  end

  klass.define_method('setup') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('skip_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
  end

  klass.define_method('teardown') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('test') do |method|
    method.define_argument('name')
    method.define_block_argument('block')
  end

  klass.define_method('test_methods')

  klass.define_method('test_order')

  klass.define_method('test_suites')

  klass.define_method('tests') do |method|
    method.define_argument('mailer')
  end

  klass.define_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('__name__')

  klass.define_instance_method('_assertions')

  klass.define_instance_method('_assertions=') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('_mailer_class')

  klass.define_instance_method('_mailer_class=')

  klass.define_instance_method('_mailer_class?')

  klass.define_instance_method('_setup_callbacks')

  klass.define_instance_method('_setup_callbacks=')

  klass.define_instance_method('_setup_callbacks?')

  klass.define_instance_method('_teardown_callbacks')

  klass.define_instance_method('_teardown_callbacks=')

  klass.define_instance_method('_teardown_callbacks?')

  klass.define_instance_method('after_setup')

  klass.define_instance_method('after_teardown')

  klass.define_instance_method('assert') do |method|
    method.define_argument('test')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_blank') do |method|
    method.define_argument('object')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_deprecated') do |method|
    method.define_optional_argument('match')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_difference') do |method|
    method.define_argument('expression')
    method.define_optional_argument('difference')
    method.define_optional_argument('message')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_emails') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('assert_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_in_delta') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('delta')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_in_epsilon') do |method|
    method.define_argument('a')
    method.define_argument('b')
    method.define_optional_argument('epsilon')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_includes') do |method|
    method.define_argument('collection')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_instance_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_kind_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_nil') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_no_difference') do |method|
    method.define_argument('expression')
    method.define_optional_argument('message')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_no_emails') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_no_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not') do |method|
    method.define_argument('object')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_not_deprecated') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_not_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_in_delta') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('delta')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_in_epsilon') do |method|
    method.define_argument('a')
    method.define_argument('b')
    method.define_optional_argument('epsilon')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_includes') do |method|
    method.define_argument('collection')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_instance_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_kind_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_nil') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_operator') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('o2')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_predicate') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_nothing_raised') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('assert_operator') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('o2')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_output') do |method|
    method.define_optional_argument('stdout')
    method.define_optional_argument('stderr')
  end

  klass.define_instance_method('assert_predicate') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_present') do |method|
    method.define_argument('object')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_raise') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('assert_raises') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('assert_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_send') do |method|
    method.define_argument('send_ary')
    method.define_optional_argument('m')
  end

  klass.define_instance_method('assert_silent')

  klass.define_instance_method('assert_throws') do |method|
    method.define_argument('sym')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('before_setup')

  klass.define_instance_method('before_teardown')

  klass.define_instance_method('capture_io')

  klass.define_instance_method('capture_subprocess_io')

  klass.define_instance_method('diff') do |method|
    method.define_argument('exp')
    method.define_argument('act')
  end

  klass.define_instance_method('exception_details') do |method|
    method.define_argument('e')
    method.define_argument('msg')
  end

  klass.define_instance_method('flunk') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('initialize_test_deliveries')

  klass.define_instance_method('io')

  klass.define_instance_method('io?')

  klass.define_instance_method('jruby?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('message') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('ending')
    method.define_block_argument('default')
  end

  klass.define_instance_method('method_name')

  klass.define_instance_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('mu_pp') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mu_pp_for_diff') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('pass') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('passed?')

  klass.define_instance_method('pending') do |method|
    method.define_optional_argument('description')
    method.define_block_argument('block')
  end

  klass.define_instance_method('refute') do |method|
    method.define_argument('test')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_in_delta') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('delta')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_in_epsilon') do |method|
    method.define_argument('a')
    method.define_argument('b')
    method.define_optional_argument('epsilon')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_includes') do |method|
    method.define_argument('collection')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_instance_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_kind_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_nil') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_operator') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('o2')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_predicate') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('rubinius?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('run') do |method|
    method.define_argument('runner')
  end

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end

  klass.define_instance_method('run_test') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('set_expected_mail')

  klass.define_instance_method('setup')

  klass.define_instance_method('skip') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('bt')
  end

  klass.define_instance_method('skipped?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('tagged_logger=')

  klass.define_instance_method('teardown')

  klass.define_instance_method('windows?') do |method|
    method.define_optional_argument('platform')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::TestHelper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_emails') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('assert_no_emails') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

