# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:53 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('ActionController') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('add_renderer') do |method|
    method.define_argument('key')
    method.define_block_argument('block')
  end

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
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ActionControllerError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('StandardError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::BadRequest') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('original_exception')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Base') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::Metal'))

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

  klass.define_method('_flash_types')

  klass.define_method('_flash_types=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_flash_types?')

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

  klass.define_method('_renderers')

  klass.define_method('_renderers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_renderers?')

  klass.define_method('_routes')

  klass.define_method('_set_wrapper_options') do |method|
    method.define_argument('options')
  end

  klass.define_method('_view_cache_dependencies')

  klass.define_method('_view_cache_dependencies=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_view_cache_dependencies?')

  klass.define_method('_view_paths')

  klass.define_method('_view_paths=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_view_paths?')

  klass.define_method('_wrapper_options')

  klass.define_method('_wrapper_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_wrapper_options?')

  klass.define_method('_write_layout_method')

  klass.define_method('abstract')

  klass.define_method('abstract!')

  klass.define_method('abstract?')

  klass.define_method('action') do |method|
    method.define_argument('name')
    method.define_optional_argument('klass')
  end

  klass.define_method('action_methods')

  klass.define_method('add_flash_types') do |method|
    method.define_rest_argument('types')
  end

  klass.define_method('after_action') do |method|
    method.define_rest_argument('names')
    method.define_block_argument('blk')
  end

  klass.define_method('after_filter') do |method|
    method.define_rest_argument('names')
    method.define_block_argument('blk')
  end

  klass.define_method('all_helpers_from_path') do |method|
    method.define_argument('path')
  end

  klass.define_method('allow_forgery_protection')

  klass.define_method('allow_forgery_protection=') do |method|
    method.define_argument('value')
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

  klass.define_method('cache_store')

  klass.define_method('cache_store=') do |method|
    method.define_argument('store')
  end

  klass.define_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_method('clear_action_methods!')

  klass.define_method('clear_helpers')

  klass.define_method('clear_respond_to')

  klass.define_method('config')

  klass.define_method('config_accessor') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('configure')

  klass.define_method('controller_name')

  klass.define_method('controller_path')

  klass.define_method('default_asset_host_protocol')

  klass.define_method('default_asset_host_protocol=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_static_extension')

  klass.define_method('default_static_extension=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_url_options')

  klass.define_method('default_url_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_url_options?')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('direct_descendants')

  klass.define_method('etag') do |method|
    method.define_block_argument('etagger')
  end

  klass.define_method('etaggers')

  klass.define_method('etaggers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('etaggers?')

  klass.define_method('force_ssl') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('forgery_protection_strategy')

  klass.define_method('forgery_protection_strategy=') do |method|
    method.define_argument('value')
  end

  klass.define_method('helper') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('helper_attr') do |method|
    method.define_rest_argument('attrs')
  end

  klass.define_method('helper_method') do |method|
    method.define_rest_argument('meths')
  end

  klass.define_method('helpers')

  klass.define_method('helpers_path')

  klass.define_method('helpers_path=') do |method|
    method.define_argument('val')
  end

  klass.define_method('helpers_path?')

  klass.define_method('hidden_actions')

  klass.define_method('hidden_actions=') do |method|
    method.define_argument('val')
  end

  klass.define_method('hidden_actions?')

  klass.define_method('hide_action') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('http_basic_authenticate_with') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('include_all_helpers')

  klass.define_method('include_all_helpers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('include_all_helpers?')

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

  klass.define_method('log_process_action') do |method|
    method.define_argument('payload')
  end

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('value')
  end

  klass.define_method('method_added') do |method|
    method.define_argument('name')
  end

  klass.define_method('middleware')

  klass.define_method('middleware_stack')

  klass.define_method('middleware_stack=') do |method|
    method.define_argument('val')
  end

  klass.define_method('middleware_stack?')

  klass.define_method('mimes_for_respond_to')

  klass.define_method('mimes_for_respond_to=') do |method|
    method.define_argument('val')
  end

  klass.define_method('mimes_for_respond_to?')

  klass.define_method('modules_for_helpers') do |method|
    method.define_argument('args')
  end

  klass.define_method('page_cache_extension')

  klass.define_method('page_cache_extension=') do |method|
    method.define_argument('extension')
  end

  klass.define_method('parent_prefixes')

  klass.define_method('perform_caching')

  klass.define_method('perform_caching=') do |method|
    method.define_argument('value')
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

  klass.define_method('protect_from_forgery') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('protected_instance_variables')

  klass.define_method('protected_instance_variables=') do |method|
    method.define_argument('val')
  end

  klass.define_method('protected_instance_variables?')

  klass.define_method('relative_url_root')

  klass.define_method('relative_url_root=') do |method|
    method.define_argument('value')
  end

  klass.define_method('request_forgery_protection_token')

  klass.define_method('request_forgery_protection_token=') do |method|
    method.define_argument('value')
  end

  klass.define_method('rescue_from') do |method|
    method.define_rest_argument('klasses')
    method.define_block_argument('block')
  end

  klass.define_method('rescue_handlers')

  klass.define_method('rescue_handlers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('rescue_handlers?')

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('respond_to') do |method|
    method.define_rest_argument('mimes')
  end

  klass.define_method('responder')

  klass.define_method('responder=') do |method|
    method.define_argument('val')
  end

  klass.define_method('responder?')

  klass.define_method('set_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
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

  klass.define_method('stylesheets_dir')

  klass.define_method('stylesheets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('use') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('use_renderer') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('use_renderers') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('view_cache_dependency') do |method|
    method.define_block_argument('dependency')
  end

  klass.define_method('view_context_class')

  klass.define_method('view_paths')

  klass.define_method('view_paths=') do |method|
    method.define_argument('paths')
  end

  klass.define_method('visible_action?') do |method|
    method.define_argument('action_name')
  end

  klass.define_method('without_modules') do |method|
    method.define_rest_argument('modules')
  end

  klass.define_method('wrap_parameters') do |method|
    method.define_argument('name_or_model_or_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('_handle_render_options') do |method|
    method.define_argument('options')
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

  klass.define_instance_method('_prefixes')

  klass.define_instance_method('_process_action_callbacks')

  klass.define_instance_method('_process_action_callbacks=')

  klass.define_instance_method('_process_action_callbacks?')

  klass.define_instance_method('_process_options') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_js') do |method|
    method.define_argument('js')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_json') do |method|
    method.define_argument('json')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_xml') do |method|
    method.define_argument('xml')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_template') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('_renderers')

  klass.define_instance_method('_renderers=')

  klass.define_instance_method('_renderers?')

  klass.define_instance_method('_routes')

  klass.define_instance_method('_routes_context')

  klass.define_instance_method('_view_cache_dependencies')

  klass.define_instance_method('_view_cache_dependencies=')

  klass.define_instance_method('_view_cache_dependencies?')

  klass.define_instance_method('_view_paths')

  klass.define_instance_method('_view_paths=')

  klass.define_instance_method('_view_paths?')

  klass.define_instance_method('_with_routes') do |method|
    method.define_argument('routes')
  end

  klass.define_instance_method('_wrapper_options')

  klass.define_instance_method('_wrapper_options=')

  klass.define_instance_method('_wrapper_options?')

  klass.define_instance_method('action_has_layout=')

  klass.define_instance_method('action_has_layout?')

  klass.define_instance_method('action_methods')

  klass.define_instance_method('action_name')

  klass.define_instance_method('action_name=')

  klass.define_instance_method('alert')

  klass.define_instance_method('allow_forgery_protection')

  klass.define_instance_method('allow_forgery_protection=') do |method|
    method.define_argument('value')
  end

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

  klass.define_instance_method('authenticate_or_request_with_http_basic') do |method|
    method.define_optional_argument('realm')
    method.define_block_argument('login_procedure')
  end

  klass.define_instance_method('authenticate_or_request_with_http_digest') do |method|
    method.define_optional_argument('realm')
    method.define_block_argument('password_procedure')
  end

  klass.define_instance_method('authenticate_or_request_with_http_token') do |method|
    method.define_optional_argument('realm')
    method.define_block_argument('login_procedure')
  end

  klass.define_instance_method('authenticate_with_http_basic') do |method|
    method.define_block_argument('login_procedure')
  end

  klass.define_instance_method('authenticate_with_http_digest') do |method|
    method.define_optional_argument('realm')
    method.define_block_argument('password_procedure')
  end

  klass.define_instance_method('authenticate_with_http_token') do |method|
    method.define_block_argument('login_procedure')
  end

  klass.define_instance_method('available_action?') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('cache') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_store')

  klass.define_instance_method('cache_store=') do |method|
    method.define_argument('store')
  end

  klass.define_instance_method('collect_mimes_from_class_level')

  klass.define_instance_method('config')

  klass.define_instance_method('content_type') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('controller_name')

  klass.define_instance_method('controller_path')

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('default_asset_host_protocol')

  klass.define_instance_method('default_asset_host_protocol=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('default_static_extension')

  klass.define_instance_method('default_static_extension=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_url_options')

  klass.define_instance_method('default_url_options=')

  klass.define_instance_method('default_url_options?')

  klass.define_instance_method('details_for_lookup')

  klass.define_instance_method('dispatch') do |method|
    method.define_argument('action')
    method.define_argument('request')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('edit_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('edit_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('env')

  klass.define_instance_method('env=')

  klass.define_instance_method('etaggers')

  klass.define_instance_method('etaggers=')

  klass.define_instance_method('etaggers?')

  klass.define_instance_method('expire_fragment') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('expires_in') do |method|
    method.define_argument('seconds')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('expires_now')

  klass.define_instance_method('flash') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('force_ssl_redirect') do |method|
    method.define_optional_argument('host_or_options')
  end

  klass.define_instance_method('forgery_protection_strategy')

  klass.define_instance_method('forgery_protection_strategy=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('form_authenticity_param')

  klass.define_instance_method('form_authenticity_token')

  klass.define_instance_method('formats') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('formats=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('fragment_cache_key') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('fragment_exist?') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('fresh_when') do |method|
    method.define_argument('record_or_options')
    method.define_optional_argument('additional_options')
  end

  klass.define_instance_method('handle_unverified_request')

  klass.define_instance_method('handler_for_rescue') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('head') do |method|
    method.define_argument('status')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('headers') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('headers=')

  klass.define_instance_method('helpers_path')

  klass.define_instance_method('helpers_path=')

  klass.define_instance_method('helpers_path?')

  klass.define_instance_method('hidden_actions')

  klass.define_instance_method('hidden_actions=')

  klass.define_instance_method('hidden_actions?')

  klass.define_instance_method('include_all_helpers')

  klass.define_instance_method('include_all_helpers=')

  klass.define_instance_method('include_all_helpers?')

  klass.define_instance_method('instrument_fragment_cache') do |method|
    method.define_argument('name')
    method.define_argument('key')
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

  klass.define_instance_method('location') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('location=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('lookup_context')

  klass.define_instance_method('method_for_action') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('middleware_stack')

  klass.define_instance_method('middleware_stack=')

  klass.define_instance_method('middleware_stack?')

  klass.define_instance_method('mimes_for_respond_to')

  klass.define_instance_method('mimes_for_respond_to=')

  klass.define_instance_method('mimes_for_respond_to?')

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('new_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('new_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('notice')

  klass.define_instance_method('optimize_routes_generation?')

  klass.define_instance_method('params')

  klass.define_instance_method('params=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('perform_caching')

  klass.define_instance_method('perform_caching=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('performed?')

  klass.define_instance_method('polymorphic_path') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('polymorphic_url') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('prepend_view_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('protect_against_forgery?')

  klass.define_instance_method('protected_instance_variables')

  klass.define_instance_method('protected_instance_variables=')

  klass.define_instance_method('protected_instance_variables?')

  klass.define_instance_method('read_fragment') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('redirect_to') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('relative_url_root')

  klass.define_instance_method('relative_url_root=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('render_to_body') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('render_to_string') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('request_forgery_protection_token')

  klass.define_instance_method('request_forgery_protection_token=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('request_http_basic_authentication') do |method|
    method.define_optional_argument('realm')
  end

  klass.define_instance_method('request_http_digest_authentication') do |method|
    method.define_optional_argument('realm')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('request_http_token_authentication') do |method|
    method.define_optional_argument('realm')
  end

  klass.define_instance_method('rescue_handlers')

  klass.define_instance_method('rescue_handlers=')

  klass.define_instance_method('rescue_handlers?')

  klass.define_instance_method('rescue_with_handler') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('reset_session')

  klass.define_instance_method('respond_to') do |method|
    method.define_rest_argument('mimes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_with') do |method|
    method.define_rest_argument('resources')
    method.define_block_argument('block')
  end

  klass.define_instance_method('responder')

  klass.define_instance_method('responder=')

  klass.define_instance_method('responder?')

  klass.define_instance_method('response')

  klass.define_instance_method('response=')

  klass.define_instance_method('response_body')

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('retrieve_collector_from_mimes') do |method|
    method.define_optional_argument('mimes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end

  klass.define_instance_method('send_action') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('send_data') do |method|
    method.define_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('send_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('session') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('show_detailed_exceptions?')

  klass.define_instance_method('stale?') do |method|
    method.define_argument('record_or_options')
    method.define_optional_argument('additional_options')
  end

  klass.define_instance_method('status') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('status=') do |method|
    method.define_argument('arg')
  end

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

  klass.define_instance_method('to_a')

  klass.define_instance_method('translate') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_options')

  klass.define_instance_method('verified_request?')

  klass.define_instance_method('verify_authenticity_token')

  klass.define_instance_method('view_assigns')

  klass.define_instance_method('view_cache_dependencies')

  klass.define_instance_method('view_context')

  klass.define_instance_method('view_context_class')

  klass.define_instance_method('view_context_class=')

  klass.define_instance_method('view_paths') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('view_renderer')

  klass.define_instance_method('view_runtime')

  klass.define_instance_method('view_runtime=')

  klass.define_instance_method('write_fragment') do |method|
    method.define_argument('key')
    method.define_argument('content')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Caching') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoloads')

  klass.define_method('eager_autoload')

  klass.define_method('eager_load!')

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_store')

  klass.define_instance_method('cache_store=') do |method|
    method.define_argument('store')
  end

  klass.define_instance_method('expire_fragment') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('fragment_cache_key') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('fragment_exist?') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('instrument_fragment_cache') do |method|
    method.define_argument('name')
    method.define_argument('key')
  end

  klass.define_instance_method('read_fragment') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('view_cache_dependencies')

  klass.define_instance_method('write_fragment') do |method|
    method.define_argument('key')
    method.define_argument('content')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ConditionalGet') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('expires_in') do |method|
    method.define_argument('seconds')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('expires_now')

  klass.define_instance_method('fresh_when') do |method|
    method.define_argument('record_or_options')
    method.define_optional_argument('additional_options')
  end

  klass.define_instance_method('stale?') do |method|
    method.define_argument('record_or_options')
    method.define_optional_argument('additional_options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Cookies') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::DataStreaming') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('send_data') do |method|
    method.define_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('send_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Flash') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('redirect_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('response_status_and_flash')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ForceSSL') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('force_ssl_redirect') do |method|
    method.define_optional_argument('host_or_options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Head') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('head') do |method|
    method.define_argument('status')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Helpers') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('helpers_path')

  klass.define_method('helpers_path=')

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::HideActions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::HttpAuthentication') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ImplicitRender') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('default_render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('method_for_action') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('send_action') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Instrumentation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('redirect_to') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('send_data') do |method|
    method.define_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('send_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('view_runtime')

  klass.define_instance_method('view_runtime=')
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Integration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::IntegrationTest') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::TestCase'))

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

  klass.define_method('app')

  klass.define_method('app=') do |method|
    method.define_argument('app')
  end

  klass.define_method('current')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('describe') do |method|
    method.define_argument('text')
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

  klass.define_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('__name__')

  klass.define_instance_method('_assertions')

  klass.define_instance_method('_assertions=') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('_routes_context')

  klass.define_instance_method('_setup_callbacks')

  klass.define_instance_method('_setup_callbacks=')

  klass.define_instance_method('_setup_callbacks?')

  klass.define_instance_method('_teardown_callbacks')

  klass.define_instance_method('_teardown_callbacks=')

  klass.define_instance_method('_teardown_callbacks?')

  klass.define_instance_method('_with_routes') do |method|
    method.define_argument('routes')
  end

  klass.define_instance_method('after_setup')

  klass.define_instance_method('after_teardown')

  klass.define_instance_method('app')

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

  klass.define_instance_method('assert_dom_equal') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_dom_not_equal') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
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

  klass.define_instance_method('assert_generates') do |method|
    method.define_argument('expected_path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
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

  klass.define_instance_method('assert_no_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_no_tag') do |method|
    method.define_rest_argument('opts')
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

  klass.define_instance_method('assert_recognizes') do |method|
    method.define_argument('expected_options')
    method.define_argument('path')
    method.define_optional_argument('extras')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_redirected_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_response') do |method|
    method.define_argument('type')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_routing') do |method|
    method.define_argument('path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_select_email') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_select_encoded') do |method|
    method.define_optional_argument('element')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_send') do |method|
    method.define_argument('send_ary')
    method.define_optional_argument('m')
  end

  klass.define_instance_method('assert_silent')

  klass.define_instance_method('assert_tag') do |method|
    method.define_rest_argument('opts')
  end

  klass.define_instance_method('assert_template') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_throws') do |method|
    method.define_argument('sym')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assigns') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('before_setup')

  klass.define_instance_method('before_teardown')

  klass.define_instance_method('capture_io')

  klass.define_instance_method('capture_subprocess_io')

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('cookies') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('copy_session_variables!')

  klass.define_instance_method('count_description') do |method|
    method.define_argument('min')
    method.define_argument('max')
    method.define_argument('count')
  end

  klass.define_instance_method('css_select') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('default_url_options')

  klass.define_instance_method('default_url_options=') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('diff') do |method|
    method.define_argument('exp')
    method.define_argument('act')
  end

  klass.define_instance_method('edit_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('edit_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('exception_details') do |method|
    method.define_argument('e')
    method.define_argument('msg')
  end

  klass.define_instance_method('find_all_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('find_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('flunk') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('get') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('get_via_redirect') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('head') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('html_document')

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

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('sym')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('method_name')

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('mu_pp') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mu_pp_for_diff') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('new_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('new_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('open_session') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('optimize_routes_generation?')

  klass.define_instance_method('pass') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('passed?')

  klass.define_instance_method('patch') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('pending') do |method|
    method.define_optional_argument('description')
    method.define_block_argument('block')
  end

  klass.define_instance_method('polymorphic_path') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('polymorphic_url') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('post') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('post_via_redirect') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('put') do |method|
    method.define_rest_argument('args')
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

  klass.define_instance_method('reset!')

  klass.define_instance_method('response_from_page')

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

  klass.define_instance_method('setup')

  klass.define_instance_method('setup_subscriptions')

  klass.define_instance_method('skip') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('bt')
  end

  klass.define_instance_method('skipped?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('tagged_logger=')

  klass.define_instance_method('teardown')

  klass.define_instance_method('teardown_subscriptions')

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_options')

  klass.define_instance_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('with_routing')

  klass.define_instance_method('xhr') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('xml_http_request') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Live') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('log_error') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('process') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('set_response!') do |method|
    method.define_argument('request')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Metal') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('AbstractController::Base'))

  klass.define_method('abstract')

  klass.define_method('abstract!')

  klass.define_method('abstract?')

  klass.define_method('action') do |method|
    method.define_argument('name')
    method.define_optional_argument('klass')
  end

  klass.define_method('action_methods')

  klass.define_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_method('clear_action_methods!')

  klass.define_method('config')

  klass.define_method('config_accessor') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('configure')

  klass.define_method('controller_name')

  klass.define_method('controller_path')

  klass.define_method('direct_descendants')

  klass.define_method('hidden_actions')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('internal_methods')

  klass.define_method('method_added') do |method|
    method.define_argument('name')
  end

  klass.define_method('middleware')

  klass.define_method('middleware_stack')

  klass.define_method('middleware_stack=') do |method|
    method.define_argument('val')
  end

  klass.define_method('middleware_stack?')

  klass.define_method('use') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('action_methods')

  klass.define_instance_method('action_name')

  klass.define_instance_method('action_name=')

  klass.define_instance_method('available_action?') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('content_type')

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('controller_name')

  klass.define_instance_method('controller_path')

  klass.define_instance_method('dispatch') do |method|
    method.define_argument('name')
    method.define_argument('request')
  end

  klass.define_instance_method('env')

  klass.define_instance_method('env=')

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=')

  klass.define_instance_method('headers')

  klass.define_instance_method('headers=')

  klass.define_instance_method('location')

  klass.define_instance_method('location=') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('middleware_stack')

  klass.define_instance_method('middleware_stack=')

  klass.define_instance_method('middleware_stack?')

  klass.define_instance_method('params')

  klass.define_instance_method('params=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('performed?')

  klass.define_instance_method('process') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('response')

  klass.define_instance_method('response=')

  klass.define_instance_method('response_body')

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('send_action') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('session') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('status')

  klass.define_instance_method('status=') do |method|
    method.define_argument('status')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('url_for') do |method|
    method.define_argument('string')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::MethodNotAllowed') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Middleware') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::Metal'))

  klass.define_method('abstract')

  klass.define_method('abstract!')

  klass.define_method('abstract?')

  klass.define_method('action') do |method|
    method.define_argument('name')
    method.define_optional_argument('klass')
  end

  klass.define_method('action_methods')

  klass.define_method('build') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_method('clear_action_methods!')

  klass.define_method('config')

  klass.define_method('config_accessor') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('configure')

  klass.define_method('controller_name')

  klass.define_method('controller_path')

  klass.define_method('direct_descendants')

  klass.define_method('hidden_actions')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('internal_methods')

  klass.define_method('method_added') do |method|
    method.define_argument('name')
  end

  klass.define_method('middleware')

  klass.define_method('middleware_stack')

  klass.define_method('middleware_stack=') do |method|
    method.define_argument('val')
  end

  klass.define_method('middleware_stack?')

  klass.define_method('new') do |method|
    method.define_argument('app')
  end

  klass.define_method('use') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('action_methods')

  klass.define_instance_method('action_name')

  klass.define_instance_method('action_name=')

  klass.define_instance_method('app')

  klass.define_instance_method('app=')

  klass.define_instance_method('available_action?') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('content_type')

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('controller_name')

  klass.define_instance_method('controller_path')

  klass.define_instance_method('dispatch') do |method|
    method.define_argument('name')
    method.define_argument('request')
  end

  klass.define_instance_method('env')

  klass.define_instance_method('env=')

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=')

  klass.define_instance_method('headers')

  klass.define_instance_method('headers=')

  klass.define_instance_method('index')

  klass.define_instance_method('location')

  klass.define_instance_method('location=') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('middleware_stack')

  klass.define_instance_method('middleware_stack=')

  klass.define_instance_method('middleware_stack?')

  klass.define_instance_method('params')

  klass.define_instance_method('params=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('performed?')

  klass.define_instance_method('process') do |method|
    method.define_argument('action')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('response')

  klass.define_instance_method('response=')

  klass.define_instance_method('response_body')

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('send_action') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('session') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('status')

  klass.define_instance_method('status=') do |method|
    method.define_argument('status')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('url_for') do |method|
    method.define_argument('string')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::MimeResponds') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('collect_mimes_from_class_level')

  klass.define_instance_method('respond_to') do |method|
    method.define_rest_argument('mimes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_with') do |method|
    method.define_rest_argument('resources')
    method.define_block_argument('block')
  end

  klass.define_instance_method('retrieve_collector_from_mimes') do |method|
    method.define_optional_argument('mimes')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::MissingFile') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ModelNaming') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::NotImplemented') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::MethodNotAllowed'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ParameterMissing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('KeyError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('param')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Parameters') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::HashWithIndifferentAccess'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('action_on_unpermitted_parameters')

  klass.define_method('action_on_unpermitted_parameters=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('from_trusted_xml') do |method|
    method.define_argument('xml')
  end

  klass.define_method('from_xml') do |method|
    method.define_argument('xml')
    method.define_optional_argument('disallowed_types')
  end

  klass.define_method('new_from_hash_copying_default') do |method|
    method.define_argument('hash')
  end

  klass.define_method('new_from_literal') do |method|
    method.define_argument('size')
  end

  klass.define_method('permit_all_parameters')

  klass.define_method('permit_all_parameters=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('__entries__')

  klass.define_instance_method('__store__') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('assert_valid_keys') do |method|
    method.define_rest_argument('valid_keys')
  end

  klass.define_instance_method('assoc') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('capacity')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('compare_by_identity')

  klass.define_instance_method('compare_by_identity?')

  klass.define_instance_method('convert_key') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('convert_value') do |method|
    method.define_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('deep_merge') do |method|
    method.define_argument('other_hash')
    method.define_block_argument('block')
  end

  klass.define_instance_method('deep_merge!') do |method|
    method.define_argument('other_hash')
    method.define_block_argument('block')
  end

  klass.define_instance_method('deep_stringify_keys')

  klass.define_instance_method('deep_stringify_keys!')

  klass.define_instance_method('deep_symbolize_keys')

  klass.define_instance_method('deep_transform_keys') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('deep_transform_keys!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('default') do |method|
    method.define_optional_argument('key')
  end

  klass.define_instance_method('default=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_proc')

  klass.define_instance_method('default_proc=') do |method|
    method.define_argument('prc')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('delete_if') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('drop_while')

  klass.define_instance_method('dup')

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_instance_method('each_item')

  klass.define_instance_method('each_key')

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_instance_method('each_value')

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('encode_json') do |method|
    method.define_argument('encoder')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('except') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('except!') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('extract!') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('extractable_options?')

  klass.define_instance_method('fetch') do |method|
    method.define_argument('key')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('find_all')

  klass.define_instance_method('find_index') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('find_item') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('flatten') do |method|
    method.define_optional_argument('level')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('has_value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('indexes') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('indices') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('invert')

  klass.define_instance_method('keep_if')

  klass.define_instance_method('key') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('length')

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('max_entries')

  klass.define_instance_method('member?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('hash')
    method.define_block_argument('block')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('nested_under_indifferent_access')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('permit') do |method|
    method.define_rest_argument('filters')
  end

  klass.define_instance_method('permit!')

  klass.define_instance_method('permitted?')

  klass.define_instance_method('rassoc') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('redistribute') do |method|
    method.define_argument('entries')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('regular_update') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('regular_writer') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('require') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('required') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse_merge') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('reverse_merge!') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('reverse_update') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('select!')

  klass.define_instance_method('shift')

  klass.define_instance_method('size')

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_by')

  klass.define_instance_method('store') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('stringify_keys')

  klass.define_instance_method('stringify_keys!')

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('identity')
    method.define_block_argument('block')
  end

  klass.define_instance_method('symbolize_keys')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_iter')

  klass.define_instance_method('to_options')

  klass.define_instance_method('to_options!')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('transform_keys')

  klass.define_instance_method('transform_keys!')

  klass.define_instance_method('update') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('indices')
  end

  klass.define_instance_method('with_indifferent_access')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::ParamsWrapper') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::RackDelegation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('content_type') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('dispatch') do |method|
    method.define_argument('action')
    method.define_argument('request')
  end

  klass.define_instance_method('headers') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('location') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('location=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('reset_session')

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('status') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('status=') do |method|
    method.define_argument('arg')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Railtie') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rails::Railtie'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionController::Railties') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::RecordIdentifier') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('dom_class') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Redirecting') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('redirect_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('response_status')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::RenderError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Renderers') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('add') do |method|
    method.define_argument('key')
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('_handle_render_options') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_js') do |method|
    method.define_argument('js')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_json') do |method|
    method.define_argument('json')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_xml') do |method|
    method.define_argument('xml')
    method.define_argument('options')
  end

  klass.define_instance_method('render_to_body') do |method|
    method.define_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Rendering') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('render_to_body') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('render_to_string') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::RequestForgeryProtection') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('form_authenticity_param')

  klass.define_instance_method('form_authenticity_token')

  klass.define_instance_method('handle_unverified_request')

  klass.define_instance_method('protect_against_forgery?')

  klass.define_instance_method('verified_request?')

  klass.define_instance_method('verify_authenticity_token')
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Rescue') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('rescue_with_handler') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('show_detailed_exceptions?')
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Responder') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('call') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('api_behavior') do |method|
    method.define_argument('error')
  end

  klass.define_instance_method('api_location')

  klass.define_instance_method('controller')

  klass.define_instance_method('default_action')

  klass.define_instance_method('default_render')

  klass.define_instance_method('delete?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('display') do |method|
    method.define_argument('resource')
    method.define_optional_argument('given_options')
  end

  klass.define_instance_method('display_errors')

  klass.define_instance_method('format')

  klass.define_instance_method('get?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('has_errors?')

  klass.define_instance_method('head') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('json_resource_errors')

  klass.define_instance_method('navigation_behavior') do |method|
    method.define_argument('error')
  end

  klass.define_instance_method('navigation_location')

  klass.define_instance_method('options')

  klass.define_instance_method('patch?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('post?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('put?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('redirect_to') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('resource')

  klass.define_instance_method('resource_errors')

  klass.define_instance_method('resource_location')

  klass.define_instance_method('resourceful?')

  klass.define_instance_method('resources')

  klass.define_instance_method('respond')

  klass.define_instance_method('response_overridden?')

  klass.define_instance_method('to_format')

  klass.define_instance_method('to_html')

  klass.define_instance_method('to_js')
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Routing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::RoutingError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('failures')

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::SessionOverflowError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Streaming') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('_process_options') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('_render_template') do |method|
    method.define_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::StrongParameters') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('params')

  klass.define_instance_method('params=') do |method|
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::TemplateAssertions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('assert_template') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('setup_subscriptions')

  klass.define_instance_method('teardown_subscriptions')
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::TestCase') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::TestCase'))

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

  klass.define_method('_controller_class')

  klass.define_method('_controller_class=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_controller_class?')

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

  klass.define_method('controller_class')

  klass.define_method('controller_class=') do |method|
    method.define_argument('new_class')
  end

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

  klass.define_method('determine_default_controller_class') do |method|
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

  klass.define_method('make_my_diffs_pretty!')

  klass.define_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('parallelize_me!')

  klass.define_method('prepare_controller_class') do |method|
    method.define_argument('new_class')
  end

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
    method.define_argument('controller_class')
  end

  klass.define_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('__name__')

  klass.define_instance_method('_assertions')

  klass.define_instance_method('_assertions=') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('_controller_class')

  klass.define_instance_method('_controller_class=')

  klass.define_instance_method('_controller_class?')

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

  klass.define_instance_method('assert_dom_equal') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_dom_not_equal') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
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

  klass.define_instance_method('assert_generates') do |method|
    method.define_argument('expected_path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
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

  klass.define_instance_method('assert_no_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_no_tag') do |method|
    method.define_rest_argument('opts')
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

  klass.define_instance_method('assert_recognizes') do |method|
    method.define_argument('expected_options')
    method.define_argument('path')
    method.define_optional_argument('extras')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_redirected_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_response') do |method|
    method.define_argument('type')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_routing') do |method|
    method.define_argument('path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_select_email') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_select_encoded') do |method|
    method.define_optional_argument('element')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_send') do |method|
    method.define_argument('send_ary')
    method.define_optional_argument('m')
  end

  klass.define_instance_method('assert_silent')

  klass.define_instance_method('assert_tag') do |method|
    method.define_rest_argument('opts')
  end

  klass.define_instance_method('assert_template') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_throws') do |method|
    method.define_argument('sym')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assigns') do |method|
    method.define_optional_argument('key')
  end

  klass.define_instance_method('before_setup')

  klass.define_instance_method('before_teardown')

  klass.define_instance_method('build_request')

  klass.define_instance_method('build_response')

  klass.define_instance_method('capture_io')

  klass.define_instance_method('capture_subprocess_io')

  klass.define_instance_method('cookies')

  klass.define_instance_method('count_description') do |method|
    method.define_argument('min')
    method.define_argument('max')
    method.define_argument('count')
  end

  klass.define_instance_method('css_select') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('diff') do |method|
    method.define_argument('exp')
    method.define_argument('act')
  end

  klass.define_instance_method('exception_details') do |method|
    method.define_argument('e')
    method.define_argument('msg')
  end

  klass.define_instance_method('find_all_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('find_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('fixture_file_upload') do |method|
    method.define_argument('path')
    method.define_optional_argument('mime_type')
    method.define_optional_argument('binary')
  end

  klass.define_instance_method('flash')

  klass.define_instance_method('flunk') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('get') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('head') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('html_document')

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

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('selector')
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('paramify_values') do |method|
    method.define_argument('hash_or_array_or_value')
  end

  klass.define_instance_method('pass') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('passed?')

  klass.define_instance_method('patch') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('pending') do |method|
    method.define_optional_argument('description')
    method.define_block_argument('block')
  end

  klass.define_instance_method('post') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('put') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('redirect_to_url')

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

  klass.define_instance_method('request')

  klass.define_instance_method('response')

  klass.define_instance_method('response_from_page')

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

  klass.define_instance_method('session')

  klass.define_instance_method('setup')

  klass.define_instance_method('setup_controller_request_and_response')

  klass.define_instance_method('setup_subscriptions')

  klass.define_instance_method('skip') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('bt')
  end

  klass.define_instance_method('skipped?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('tagged_logger=')

  klass.define_instance_method('teardown')

  klass.define_instance_method('teardown_subscriptions')

  klass.define_instance_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('with_routing')

  klass.define_instance_method('xhr') do |method|
    method.define_argument('request_method')
    method.define_argument('action')
    method.define_optional_argument('parameters')
    method.define_optional_argument('session')
    method.define_optional_argument('flash')
  end

  klass.define_instance_method('xml_http_request') do |method|
    method.define_argument('request_method')
    method.define_argument('action')
    method.define_optional_argument('parameters')
    method.define_optional_argument('session')
    method.define_optional_argument('flash')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::Testing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('headers=') do |method|
    method.define_argument('new_headers')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::UnknownController') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::UnknownFormat') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::UnknownHttpMethod') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::ActionControllerError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::UnpermittedParameters') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('IndexError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('params')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::UrlFor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('url_options')
end

RubyLint::GlobalScope.definitions.define_constant('ActionController::UrlGenerationError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionController::RoutingError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('failures')

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ActionController').deep_freeze