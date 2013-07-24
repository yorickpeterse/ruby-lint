# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:54:04 +0200
# Platform: rbx 2.0.0.n198

RubyLint::VirtualMachine.global_scope.define_constant('Rails') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('application')

  klass.define_method('application=')

  klass.define_method('backtrace_cleaner')

  klass.define_method('cache')

  klass.define_method('cache=')

  klass.define_method('configuration')

  klass.define_method('env')

  klass.define_method('env=') do |method|
    method.define_argument('environment')
  end

  klass.define_method('groups') do |method|
    method.define_rest_argument('groups')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('initialize!')

  klass.define_method('initialized?')

  klass.define_method('logger')

  klass.define_method('logger=')

  klass.define_method('public_path')

  klass.define_method('root')

  klass.define_method('version')
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Application') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Engine'))

  klass.define_method('abstract_railtie?')

  klass.define_method('called_from')

  klass.define_method('called_from=')

  klass.define_method('console') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('eager_load!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('endpoint') do |method|
    method.define_optional_argument('endpoint')
  end

  klass.define_method('engine_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('find') do |method|
    method.define_argument('path')
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

  klass.define_method('isolate_namespace') do |method|
    method.define_argument('mod')
  end

  klass.define_method('isolated')

  klass.define_method('isolated=')

  klass.define_method('isolated?')

  klass.define_method('railtie_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('rake_tasks') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('runner') do |method|
    method.define_block_argument('blk')
  end

  klass.define_instance_method('_all_autoload_once_paths')

  klass.define_instance_method('_all_autoload_paths')

  klass.define_instance_method('_all_load_paths')

  klass.define_instance_method('add_lib_to_load_path!')

  klass.define_instance_method('allow_concurrency?')

  klass.define_instance_method('app')

  klass.define_instance_method('assets')

  klass.define_instance_method('assets=')

  klass.define_instance_method('build_middleware_stack')

  klass.define_instance_method('build_original_fullpath') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('default_middleware_stack')

  klass.define_instance_method('default_url_options') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('default_url_options=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('eager_load!')

  klass.define_instance_method('endpoint')

  klass.define_instance_method('engine_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('env_config')

  klass.define_instance_method('find_root_with_flag') do |method|
    method.define_argument('flag')
    method.define_optional_argument('default')
  end

  klass.define_instance_method('has_migrations?')

  klass.define_instance_method('helpers')

  klass.define_instance_method('helpers_paths')

  klass.define_instance_method('initialize!') do |method|
    method.define_optional_argument('group')
  end

  klass.define_instance_method('initialized?')

  klass.define_instance_method('initializers')

  klass.define_instance_method('isolated?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('key_generator')

  klass.define_instance_method('load_console') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('load_generators') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('load_rack_cache')

  klass.define_instance_method('load_runner') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('load_seed')

  klass.define_instance_method('load_tasks') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('middleware') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ordered_railties')

  klass.define_instance_method('paths') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('railtie_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('railtie_namespace')

  klass.define_instance_method('railties')

  klass.define_instance_method('railties_initializers') do |method|
    method.define_argument('current')
  end

  klass.define_instance_method('reload_dependencies?')

  klass.define_instance_method('reload_routes!')

  klass.define_instance_method('reloaders')

  klass.define_instance_method('require_environment!')

  klass.define_instance_method('root') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('routes')

  klass.define_instance_method('routes?')

  klass.define_instance_method('routes_reloader')

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

  klass.define_instance_method('sandbox')

  klass.define_instance_method('sandbox=')

  klass.define_instance_method('sandbox?')

  klass.define_instance_method('show_exceptions_app')

  klass.define_instance_method('to_app')

  klass.define_instance_method('watchable_args')
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Configuration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::DeprecatedConstant') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::Deprecation::DeprecatedConstantProxy'))

  klass.define_method('deprecate') do |method|
    method.define_argument('old')
    method.define_argument('current')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Engine') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Railtie'))

  klass.define_method('abstract_railtie?')

  klass.define_method('called_from')

  klass.define_method('called_from=')

  klass.define_method('console') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('eager_load!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('endpoint') do |method|
    method.define_optional_argument('endpoint')
  end

  klass.define_method('engine_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('find') do |method|
    method.define_argument('path')
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

  klass.define_method('isolate_namespace') do |method|
    method.define_argument('mod')
  end

  klass.define_method('isolated')

  klass.define_method('isolated=')

  klass.define_method('isolated?')

  klass.define_method('railtie_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('rake_tasks') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('runner') do |method|
    method.define_block_argument('blk')
  end

  klass.define_instance_method('_all_autoload_once_paths')

  klass.define_instance_method('_all_autoload_paths')

  klass.define_instance_method('_all_load_paths')

  klass.define_instance_method('app')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('default_middleware_stack')

  klass.define_instance_method('eager_load!')

  klass.define_instance_method('endpoint')

  klass.define_instance_method('engine_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('env_config')

  klass.define_instance_method('find_root_with_flag') do |method|
    method.define_argument('flag')
    method.define_optional_argument('default')
  end

  klass.define_instance_method('has_migrations?')

  klass.define_instance_method('helpers')

  klass.define_instance_method('helpers_paths')

  klass.define_instance_method('initializers')

  klass.define_instance_method('isolated?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('load_console') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('load_generators') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('load_runner') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('load_seed')

  klass.define_instance_method('load_tasks') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('middleware') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('paths') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('railtie_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('railtie_namespace')

  klass.define_instance_method('railties')

  klass.define_instance_method('root') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('routes')

  klass.define_instance_method('routes?')

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
    method.define_rest_argument('')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Info') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('framework_version') do |method|
    method.define_argument('framework')
  end

  klass.define_method('frameworks')

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('inspect')

  klass.define_method('properties')

  klass.define_method('properties=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('property') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
  end

  klass.define_method('to_html')

  klass.define_method('to_s')

  klass.define_instance_method('properties')

  klass.define_instance_method('properties=') do |method|
    method.define_argument('obj')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::InfoController') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActionController::Base'))

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

  klass.define_instance_method('_layout_from_proc')

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

  klass.define_instance_method('index')

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

  klass.define_instance_method('local_request?')

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

  klass.define_instance_method('properties')

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

  klass.define_instance_method('require_local!')

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

  klass.define_instance_method('routes')

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

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Initializable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('included') do |method|
    method.define_argument('base')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('initializers')

  klass.define_instance_method('run_initializers') do |method|
    method.define_optional_argument('group')
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Paths') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Rack') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('abstract_railtie?')

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

  klass.define_method('railtie_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('rake_tasks') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('runner') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('subclasses')

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

RubyLint::VirtualMachine.global_scope.define_constant('Rails::TestUnitRailtie') do |klass|
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

RubyLint::VirtualMachine.global_scope.define_constant('Rails::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('Rails::WelcomeController') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActionController::Base'))

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

  klass.define_instance_method('index')

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

