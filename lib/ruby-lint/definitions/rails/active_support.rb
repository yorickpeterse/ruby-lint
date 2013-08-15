# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:54:03 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoloads')

  klass.define_method('eager_autoload')

  klass.define_method('eager_load!')

  klass.define_method('encode_big_decimal_as_string') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('encode_big_decimal_as_string=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('escape_html_entities_in_json') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('escape_html_entities_in_json=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('execute_hook') do |method|
    method.define_argument('base')
    method.define_argument('options')
    method.define_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('on_load') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('parse_json_times')

  klass.define_method('parse_json_times=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('run_load_hooks') do |method|
    method.define_argument('name')
    method.define_optional_argument('base')
  end

  klass.define_method('use_standard_json_time_format') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('use_standard_json_time_format=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('version')

  klass.define_instance_method('parse_json_times')

  klass.define_instance_method('parse_json_times=') do |method|
    method.define_argument('obj')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Autoload') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('extended') do |method|
    method.define_argument('base')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('autoload') do |method|
    method.define_argument('const_name')
    method.define_optional_argument('path')
  end

  klass.define_instance_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('autoloads')

  klass.define_instance_method('eager_autoload')

  klass.define_instance_method('eager_load!')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::BacktraceCleaner') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('add_filter') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('add_silencer') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('clean') do |method|
    method.define_argument('backtrace')
    method.define_optional_argument('kind')
  end

  klass.define_instance_method('filter') do |method|
    method.define_argument('backtrace')
    method.define_optional_argument('kind')
  end

  klass.define_instance_method('remove_filters!')

  klass.define_instance_method('remove_silencers!')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::BasicObject') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::ProxyObject'))

  klass.define_method('inherited') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('raise') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Benchmarkable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('silence')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Cache') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('expand_cache_key') do |method|
    method.define_argument('key')
    method.define_optional_argument('namespace')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('lookup_store') do |method|
    method.define_rest_argument('store_option')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::CachingKeyGenerator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('generate_key') do |method|
    method.define_argument('salt')
    method.define_optional_argument('key_size')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Callbacks') do |klass|
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

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Concern') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('extended') do |method|
    method.define_argument('base')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Configurable') do |klass|
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

  klass.define_instance_method('config')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Dependencies') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('autoload_module!') do |method|
    method.define_argument('into')
    method.define_argument('const_name')
    method.define_argument('qualified_name')
    method.define_argument('path_suffix')
  end

  klass.define_method('autoload_once_paths')

  klass.define_method('autoload_once_paths=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('autoload_paths')

  klass.define_method('autoload_paths=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('autoloadable_module?') do |method|
    method.define_argument('path_suffix')
  end

  klass.define_method('autoloaded?') do |method|
    method.define_argument('desc')
  end

  klass.define_method('autoloaded_constants')

  klass.define_method('autoloaded_constants=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('clear')

  klass.define_method('constant_watch_stack')

  klass.define_method('constant_watch_stack=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('constantize') do |method|
    method.define_argument('name')
  end

  klass.define_method('depend_on') do |method|
    method.define_argument('file_name')
    method.define_optional_argument('message')
  end

  klass.define_method('explicitly_unloadable_constants')

  klass.define_method('explicitly_unloadable_constants=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('history')

  klass.define_method('history=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('hook!')

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('load?')

  klass.define_method('load_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('const_paths')
  end

  klass.define_method('load_missing_constant') do |method|
    method.define_argument('from_mod')
    method.define_argument('const_name')
  end

  klass.define_method('load_once_path?') do |method|
    method.define_argument('path')
  end

  klass.define_method('loadable_constants_for_path') do |method|
    method.define_argument('path')
    method.define_optional_argument('bases')
  end

  klass.define_method('loaded')

  klass.define_method('loaded=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('log') do |method|
    method.define_argument('msg')
  end

  klass.define_method('log_activity')

  klass.define_method('log_activity=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('log_activity?')

  klass.define_method('log_call') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('mark_for_unload') do |method|
    method.define_argument('const_desc')
  end

  klass.define_method('mechanism')

  klass.define_method('mechanism=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('new_constants_in') do |method|
    method.define_rest_argument('descs')
  end

  klass.define_method('qualified_name_for') do |method|
    method.define_argument('mod')
    method.define_argument('name')
  end

  klass.define_method('reference') do |method|
    method.define_argument('klass')
  end

  klass.define_method('remove_constant') do |method|
    method.define_argument('const')
  end

  klass.define_method('remove_unloadable_constants!')

  klass.define_method('safe_constantize') do |method|
    method.define_argument('name')
  end

  klass.define_method('search_for_file') do |method|
    method.define_argument('path_suffix')
  end

  klass.define_method('to_constant_name') do |method|
    method.define_argument('desc')
  end

  klass.define_method('unhook!')

  klass.define_method('warnings_on_first_load')

  klass.define_method('warnings_on_first_load=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('will_unload?') do |method|
    method.define_argument('const_desc')
  end

  klass.define_instance_method('autoload_module!') do |method|
    method.define_argument('into')
    method.define_argument('const_name')
    method.define_argument('qualified_name')
    method.define_argument('path_suffix')
  end

  klass.define_instance_method('autoload_once_paths')

  klass.define_instance_method('autoload_once_paths=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('autoload_paths')

  klass.define_instance_method('autoload_paths=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('autoloadable_module?') do |method|
    method.define_argument('path_suffix')
  end

  klass.define_instance_method('autoloaded?') do |method|
    method.define_argument('desc')
  end

  klass.define_instance_method('autoloaded_constants')

  klass.define_instance_method('autoloaded_constants=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('constant_watch_stack')

  klass.define_instance_method('constant_watch_stack=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('constantize') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('depend_on') do |method|
    method.define_argument('file_name')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('explicitly_unloadable_constants')

  klass.define_instance_method('explicitly_unloadable_constants=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('history')

  klass.define_instance_method('history=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('hook!')

  klass.define_instance_method('load?')

  klass.define_instance_method('load_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('const_paths')
  end

  klass.define_instance_method('load_missing_constant') do |method|
    method.define_argument('from_mod')
    method.define_argument('const_name')
  end

  klass.define_instance_method('load_once_path?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('loadable_constants_for_path') do |method|
    method.define_argument('path')
    method.define_optional_argument('bases')
  end

  klass.define_instance_method('loaded')

  klass.define_instance_method('loaded=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('log') do |method|
    method.define_argument('msg')
  end

  klass.define_instance_method('log_activity')

  klass.define_instance_method('log_activity=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('log_activity?')

  klass.define_instance_method('log_call') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mark_for_unload') do |method|
    method.define_argument('const_desc')
  end

  klass.define_instance_method('mechanism')

  klass.define_instance_method('mechanism=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('new_constants_in') do |method|
    method.define_rest_argument('descs')
  end

  klass.define_instance_method('qualified_const_defined?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('qualified_name_for') do |method|
    method.define_argument('mod')
    method.define_argument('name')
  end

  klass.define_instance_method('reference') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('remove_constant') do |method|
    method.define_argument('const')
  end

  klass.define_instance_method('remove_unloadable_constants!')

  klass.define_instance_method('require_or_load') do |method|
    method.define_argument('file_name')
    method.define_optional_argument('const_path')
  end

  klass.define_instance_method('safe_constantize') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('search_for_file') do |method|
    method.define_argument('path_suffix')
  end

  klass.define_instance_method('to_constant_name') do |method|
    method.define_argument('desc')
  end

  klass.define_instance_method('unhook!')

  klass.define_instance_method('warnings_on_first_load')

  klass.define_instance_method('warnings_on_first_load=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('will_unload?') do |method|
    method.define_argument('const_desc')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Deprecation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('_load') do |method|
    method.define_argument('str')
  end

  klass.define_method('behavior') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('behavior=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('debug') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('debug=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('deprecate_methods') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('deprecation_horizon') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('deprecation_horizon=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('deprecation_warning') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('gem_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('gem_name=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('include') do |method|
    method.define_argument('included_module')
  end

  klass.define_method('initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('instance')

  klass.define_method('method_added') do |method|
    method.define_argument('method_name')
  end

  klass.define_method('new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('silence') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('silenced') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('silenced=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('warn') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_dump') do |method|
    method.define_optional_argument('depth')
  end

  klass.define_instance_method('behavior')

  klass.define_instance_method('behavior=') do |method|
    method.define_argument('behavior')
  end

  klass.define_instance_method('debug')

  klass.define_instance_method('debug=')

  klass.define_instance_method('deprecate_methods') do |method|
    method.define_argument('target_module')
    method.define_rest_argument('method_names')
  end

  klass.define_instance_method('deprecation_horizon')

  klass.define_instance_method('deprecation_horizon=')

  klass.define_instance_method('deprecation_warning') do |method|
    method.define_argument('deprecated_method_name')
    method.define_optional_argument('message')
    method.define_optional_argument('caller_backtrace')
  end

  klass.define_instance_method('gem_name')

  klass.define_instance_method('gem_name=')

  klass.define_instance_method('silenced')

  klass.define_instance_method('silenced=')

  klass.define_instance_method('warn') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('callstack')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::DescendantsTracker') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('clear')

  klass.define_method('descendants') do |method|
    method.define_argument('klass')
  end

  klass.define_method('direct_descendants') do |method|
    method.define_argument('klass')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('store_inherited') do |method|
    method.define_argument('klass')
    method.define_argument('descendant')
  end

  klass.define_instance_method('descendants')

  klass.define_instance_method('direct_descendants')

  klass.define_instance_method('inherited') do |method|
    method.define_argument('base')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Duration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::ProxyObject'))

  klass.define_method('===') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-@')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('ago') do |method|
    method.define_optional_argument('time')
  end

  klass.define_instance_method('as_json') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('from_now') do |method|
    method.define_optional_argument('time')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('is_a?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('kind_of?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('parts')

  klass.define_instance_method('parts=')

  klass.define_instance_method('raise') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('since') do |method|
    method.define_optional_argument('time')
  end

  klass.define_instance_method('sum') do |method|
    method.define_argument('sign')
    method.define_optional_argument('time')
  end

  klass.define_instance_method('until') do |method|
    method.define_optional_argument('time')
  end

  klass.define_instance_method('value')

  klass.define_instance_method('value=')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::FileUpdateChecker') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('execute')

  klass.define_instance_method('execute_if_updated')

  klass.define_instance_method('updated?')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Gzip') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('compress') do |method|
    method.define_argument('source')
    method.define_optional_argument('level')
    method.define_optional_argument('strategy')
  end

  klass.define_method('decompress') do |method|
    method.define_argument('source')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::HashWithIndifferentAccess') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Hash'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
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
    method.define_rest_argument('extras')
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

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Inflector') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('camelize') do |method|
    method.define_argument('term')
    method.define_optional_argument('uppercase_first_letter')
  end

  klass.define_method('classify') do |method|
    method.define_argument('table_name')
  end

  klass.define_method('constantize') do |method|
    method.define_argument('camel_cased_word')
  end

  klass.define_method('dasherize') do |method|
    method.define_argument('underscored_word')
  end

  klass.define_method('deconstantize') do |method|
    method.define_argument('path')
  end

  klass.define_method('demodulize') do |method|
    method.define_argument('path')
  end

  klass.define_method('foreign_key') do |method|
    method.define_argument('class_name')
    method.define_optional_argument('separate_class_name_and_id_with_underscore')
  end

  klass.define_method('humanize') do |method|
    method.define_argument('lower_case_and_underscored_word')
  end

  klass.define_method('inflections') do |method|
    method.define_optional_argument('locale')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('ordinal') do |method|
    method.define_argument('number')
  end

  klass.define_method('ordinalize') do |method|
    method.define_argument('number')
  end

  klass.define_method('parameterize') do |method|
    method.define_argument('string')
    method.define_optional_argument('sep')
  end

  klass.define_method('pluralize') do |method|
    method.define_argument('word')
    method.define_optional_argument('locale')
  end

  klass.define_method('safe_constantize') do |method|
    method.define_argument('camel_cased_word')
  end

  klass.define_method('singularize') do |method|
    method.define_argument('word')
    method.define_optional_argument('locale')
  end

  klass.define_method('tableize') do |method|
    method.define_argument('class_name')
  end

  klass.define_method('titleize') do |method|
    method.define_argument('word')
  end

  klass.define_method('transliterate') do |method|
    method.define_argument('string')
    method.define_optional_argument('replacement')
  end

  klass.define_method('underscore') do |method|
    method.define_argument('camel_cased_word')
  end

  klass.define_instance_method('camelize') do |method|
    method.define_argument('term')
    method.define_optional_argument('uppercase_first_letter')
  end

  klass.define_instance_method('classify') do |method|
    method.define_argument('table_name')
  end

  klass.define_instance_method('constantize') do |method|
    method.define_argument('camel_cased_word')
  end

  klass.define_instance_method('dasherize') do |method|
    method.define_argument('underscored_word')
  end

  klass.define_instance_method('deconstantize') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('demodulize') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('foreign_key') do |method|
    method.define_argument('class_name')
    method.define_optional_argument('separate_class_name_and_id_with_underscore')
  end

  klass.define_instance_method('humanize') do |method|
    method.define_argument('lower_case_and_underscored_word')
  end

  klass.define_instance_method('inflections') do |method|
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('ordinal') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('ordinalize') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('parameterize') do |method|
    method.define_argument('string')
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('pluralize') do |method|
    method.define_argument('word')
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('safe_constantize') do |method|
    method.define_argument('camel_cased_word')
  end

  klass.define_instance_method('singularize') do |method|
    method.define_argument('word')
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('tableize') do |method|
    method.define_argument('class_name')
  end

  klass.define_instance_method('titleize') do |method|
    method.define_argument('word')
  end

  klass.define_instance_method('transliterate') do |method|
    method.define_argument('string')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('underscore') do |method|
    method.define_argument('camel_cased_word')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::InheritableOptions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::OrderedOptions'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('from_trusted_xml') do |method|
    method.define_argument('xml')
  end

  klass.define_method('from_xml') do |method|
    method.define_argument('xml')
    method.define_optional_argument('disallowed_types')
  end

  klass.define_method('new_from_literal') do |method|
    method.define_argument('size')
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

  klass.define_instance_method('_get') do |method|
    method.define_argument('key')
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

  klass.define_instance_method('deep_symbolize_keys!')

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
    method.define_optional_argument('default')
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

  klass.define_instance_method('inheritable_copy')

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
    method.define_argument('other')
    method.define_block_argument('block')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
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

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('symbolize_keys!')

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
    method.define_argument('other')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_indifferent_access')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::JSON') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('backend')

  klass.define_method('backend=') do |method|
    method.define_argument('name')
  end

  klass.define_method('decode') do |method|
    method.define_argument('json')
    method.define_optional_argument('options')
  end

  klass.define_method('encode') do |method|
    method.define_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_method('engine')

  klass.define_method('engine=') do |method|
    method.define_argument('name')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('parse_error')

  klass.define_method('with_backend') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::KeyGenerator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('generate_key') do |method|
    method.define_argument('salt')
    method.define_optional_argument('key_size')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::LegacyKeyGenerator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('generate_key') do |method|
    method.define_argument('salt')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::LogSubscriber') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::Subscriber'))

  klass.define_method('attach_to') do |method|
    method.define_argument('namespace')
    method.define_optional_argument('subscriber')
    method.define_optional_argument('notifier')
  end

  klass.define_method('colorize_logging')

  klass.define_method('colorize_logging=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('flush_all!')

  klass.define_method('log_subscribers')

  klass.define_method('logger')

  klass.define_method('logger=')

  klass.define_method('subscribers')

  klass.define_instance_method('color') do |method|
    method.define_argument('text')
    method.define_argument('color')
    method.define_optional_argument('bold')
  end

  klass.define_instance_method('colorize_logging')

  klass.define_instance_method('colorize_logging=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('debug') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('error') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fatal') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('finish') do |method|
    method.define_argument('name')
    method.define_argument('id')
    method.define_argument('payload')
  end

  klass.define_instance_method('info') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('start') do |method|
    method.define_argument('name')
    method.define_argument('id')
    method.define_argument('payload')
  end

  klass.define_instance_method('unknown') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('warn') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Logger') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Logger'))

  klass.define_method('broadcast') do |method|
    method.define_argument('logger')
  end

  klass.define_method('silencer')

  klass.define_method('silencer=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('msg')
  end

  klass.define_instance_method('add') do |method|
    method.define_argument('severity')
    method.define_optional_argument('message')
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('close')

  klass.define_instance_method('datetime_format')

  klass.define_instance_method('datetime_format=') do |method|
    method.define_argument('datetime_format')
  end

  klass.define_instance_method('debug') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('debug?')

  klass.define_instance_method('error') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('error?')

  klass.define_instance_method('fatal') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fatal?')

  klass.define_instance_method('formatter')

  klass.define_instance_method('formatter=')

  klass.define_instance_method('info') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('info?')

  klass.define_instance_method('level')

  klass.define_instance_method('level=')

  klass.define_instance_method('log') do |method|
    method.define_argument('severity')
    method.define_optional_argument('message')
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('progname')

  klass.define_instance_method('progname=')

  klass.define_instance_method('sev_threshold')

  klass.define_instance_method('sev_threshold=')

  klass.define_instance_method('silencer')

  klass.define_instance_method('silencer=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('unknown') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('warn') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('warn?')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::MessageEncryptor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('decrypt_and_verify') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('encrypt_and_sign') do |method|
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::MessageVerifier') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('generate') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('verify') do |method|
    method.define_argument('signed_message')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Multibyte') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('clean') do |method|
    method.define_argument('string')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('proxy_class')

  klass.define_method('proxy_class=') do |method|
    method.define_argument('klass')
  end

  klass.define_method('valid_character')

  klass.define_method('verify') do |method|
    method.define_argument('string')
  end

  klass.define_method('verify!') do |method|
    method.define_argument('string')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Notifications') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('instrument') do |method|
    method.define_argument('name')
    method.define_optional_argument('payload')
  end

  klass.define_method('instrumenter')

  klass.define_method('notifier')

  klass.define_method('notifier=')

  klass.define_method('publish') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
  end

  klass.define_method('subscribe') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('subscribed') do |method|
    method.define_argument('callback')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('unsubscribe') do |method|
    method.define_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::NumberHelper') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('number_to_currency') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_method('number_to_delimited') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_method('number_to_human') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_method('number_to_human_size') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_method('number_to_percentage') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_method('number_to_phone') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_method('number_to_rounded') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_currency') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_delimited') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human_size') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_percentage') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_phone') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_rounded') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::OptionMerger') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::OrderedHash') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Hash'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('from_trusted_xml') do |method|
    method.define_argument('xml')
  end

  klass.define_method('from_xml') do |method|
    method.define_argument('xml')
    method.define_optional_argument('disallowed_types')
  end

  klass.define_method('new_from_literal') do |method|
    method.define_argument('size')
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

  klass.define_instance_method('deep_symbolize_keys!')

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

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
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
    method.define_optional_argument('default')
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
    method.define_argument('other')
    method.define_block_argument('block')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('symbolize_keys!')

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

  klass.define_instance_method('to_yaml_type')

  klass.define_instance_method('transform_keys')

  klass.define_instance_method('transform_keys!')

  klass.define_instance_method('update') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_indifferent_access')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::OrderedOptions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Hash'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('from_trusted_xml') do |method|
    method.define_argument('xml')
  end

  klass.define_method('from_xml') do |method|
    method.define_argument('xml')
    method.define_optional_argument('disallowed_types')
  end

  klass.define_method('new_from_literal') do |method|
    method.define_argument('size')
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

  klass.define_instance_method('_get') do |method|
    method.define_argument('key')
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

  klass.define_instance_method('deep_symbolize_keys!')

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
    method.define_optional_argument('default')
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
    method.define_argument('other')
    method.define_block_argument('block')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
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

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('respond_to_missing?') do |method|
    method.define_argument('name')
    method.define_argument('include_private')
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

  klass.define_instance_method('symbolize_keys!')

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
    method.define_argument('other')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_indifferent_access')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::PerThreadRegistry') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::ProxyObject') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('BasicObject'))

  klass.define_instance_method('raise') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Railtie') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Rescuable') do |klass|
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

  klass.define_instance_method('handler_for_rescue') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('rescue_with_handler') do |method|
    method.define_argument('exception')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::SafeBuffer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('String'))

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
    method.define_argument('value')
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
    method.define_rest_argument('args')
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

  klass.define_instance_method('ascii_only=')

  klass.define_instance_method('ascii_only?')

  klass.define_instance_method('at') do |method|
    method.define_argument('position')
  end

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

  klass.define_instance_method('capitalize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('capitalize!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('casecmp') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('center') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('chars')

  klass.define_instance_method('chomp') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chomp!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('chop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chop!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('chr')

  klass.define_instance_method('chr_at') do |method|
    method.define_argument('byte')
  end

  klass.define_instance_method('classify')

  klass.define_instance_method('clear')

  klass.define_instance_method('clone_empty')

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
    method.define_argument('value')
  end

  klass.define_instance_method('constantize')

  klass.define_instance_method('convert_float')

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('strings')
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
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('demodulize')

  klass.define_instance_method('downcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('downcase!') do |method|
    method.define_rest_argument('args')
  end

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

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('encoding')

  klass.define_instance_method('encoding=')

  klass.define_instance_method('end_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('ends_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
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
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('hex')

  klass.define_instance_method('html_safe')

  klass.define_instance_method('html_safe?')

  klass.define_instance_method('humanize')

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

  klass.define_instance_method('lstrip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('lstrip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_instance_method('mb_chars')

  klass.define_instance_method('modify!')

  klass.define_instance_method('next') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('next!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('not_ascii_only?')

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
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prepend!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('reverse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse!') do |method|
    method.define_rest_argument('args')
  end

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

  klass.define_instance_method('rstrip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rstrip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('value')
  end

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
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('snake_case')

  klass.define_instance_method('split') do |method|
    method.define_optional_argument('pattern')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('squeeze') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('squeeze!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('squish')

  klass.define_instance_method('squish!')

  klass.define_instance_method('start_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('starts_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('strip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('strip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('strip_heredoc')

  klass.define_instance_method('sub') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('substring') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_instance_method('succ') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('succ!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('suffix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('bits')
  end

  klass.define_instance_method('swapcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('swapcase!') do |method|
    method.define_rest_argument('args')
  end

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

  klass.define_instance_method('to_param')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')

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
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tr!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('tr_expand!') do |method|
    method.define_argument('limit')
    method.define_argument('invalid_as_empty')
  end

  klass.define_instance_method('tr_s') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tr_s!') do |method|
    method.define_rest_argument('args')
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

  klass.define_instance_method('upcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('upcase!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('upto') do |method|
    method.define_argument('stop')
    method.define_optional_argument('exclusive')
  end

  klass.define_instance_method('valid_encoding=')

  klass.define_instance_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::StringInquirer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('String'))

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

  klass.define_instance_method('ascii_only=')

  klass.define_instance_method('ascii_only?')

  klass.define_instance_method('at') do |method|
    method.define_argument('position')
  end

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
    method.define_rest_argument('strings')
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

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
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

  klass.define_instance_method('hex')

  klass.define_instance_method('html_safe')

  klass.define_instance_method('humanize')

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

  klass.define_instance_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_instance_method('mb_chars')

  klass.define_instance_method('modify!')

  klass.define_instance_method('next')

  klass.define_instance_method('next!')

  klass.define_instance_method('not_ascii_only?')

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

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('bits')
  end

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

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Subscriber') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('attach_to') do |method|
    method.define_argument('namespace')
    method.define_optional_argument('subscriber')
    method.define_optional_argument('notifier')
  end

  klass.define_method('subscribers')

  klass.define_instance_method('finish') do |method|
    method.define_argument('name')
    method.define_argument('id')
    method.define_argument('payload')
  end

  klass.define_instance_method('start') do |method|
    method.define_argument('name')
    method.define_argument('id')
    method.define_argument('payload')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::SubscriberQueueRegistry') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('get_queue') do |method|
    method.define_argument('queue_key')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::TaggedLogging') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('new') do |method|
    method.define_argument('logger')
  end

  klass.define_instance_method('clear_tags!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flush')

  klass.define_instance_method('pop_tags') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('push_tags') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tagged') do |method|
    method.define_rest_argument('tags')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::TestCase') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('MiniTest::Unit::TestCase'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::Testing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::TimeWithZone') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('name')

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('acts_like_time?')

  klass.define_instance_method('advance') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('ago') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('as_json') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('comparable_time')

  klass.define_instance_method('day')

  klass.define_instance_method('dst?')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('formatted_offset') do |method|
    method.define_optional_argument('colon')
    method.define_optional_argument('alternate_utc_string')
  end

  klass.define_instance_method('freeze')

  klass.define_instance_method('future?')

  klass.define_instance_method('getgm')

  klass.define_instance_method('getlocal')

  klass.define_instance_method('getutc')

  klass.define_instance_method('gmt?')

  klass.define_instance_method('gmt_offset')

  klass.define_instance_method('gmtime')

  klass.define_instance_method('gmtoff')

  klass.define_instance_method('hash')

  klass.define_instance_method('hour')

  klass.define_instance_method('httpdate')

  klass.define_instance_method('in_time_zone') do |method|
    method.define_optional_argument('new_zone')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('is_a?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('isdst')

  klass.define_instance_method('iso8601') do |method|
    method.define_optional_argument('fraction_digits')
  end

  klass.define_instance_method('kind_of?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('localtime')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('variables')
  end

  klass.define_instance_method('mday')

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('sym')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('mon')

  klass.define_instance_method('month')

  klass.define_instance_method('past?')

  klass.define_instance_method('period')

  klass.define_instance_method('respond_to_missing?') do |method|
    method.define_argument('sym')
    method.define_argument('include_priv')
  end

  klass.define_instance_method('rfc2822')

  klass.define_instance_method('rfc822')

  klass.define_instance_method('sec')

  klass.define_instance_method('since') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('strftime') do |method|
    method.define_argument('format')
  end

  klass.define_instance_method('time')

  klass.define_instance_method('time_zone')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_date')

  klass.define_instance_method('to_datetime')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_formatted_s') do |method|
    method.define_optional_argument('format')
  end

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s') do |method|
    method.define_optional_argument('format')
  end

  klass.define_instance_method('to_time')

  klass.define_instance_method('today?')

  klass.define_instance_method('tv_sec')

  klass.define_instance_method('usec')

  klass.define_instance_method('utc')

  klass.define_instance_method('utc?')

  klass.define_instance_method('utc_offset')

  klass.define_instance_method('wday')

  klass.define_instance_method('xmlschema') do |method|
    method.define_optional_argument('fraction_digits')
  end

  klass.define_instance_method('yday')

  klass.define_instance_method('year')

  klass.define_instance_method('zone')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::TimeZone') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('arg')
  end

  klass.define_method('all')

  klass.define_method('create') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('find_tzinfo') do |method|
    method.define_argument('name')
  end

  klass.define_method('new') do |method|
    method.define_argument('name')
  end

  klass.define_method('require_tzinfo')

  klass.define_method('seconds_to_utc_offset') do |method|
    method.define_argument('seconds')
    method.define_optional_argument('colon')
  end

  klass.define_method('us_zones')

  klass.define_method('zones_map')

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('zone')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('re')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('at') do |method|
    method.define_argument('secs')
  end

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('formatted_offset') do |method|
    method.define_optional_argument('colon')
    method.define_optional_argument('alternate_utc_string')
  end

  klass.define_instance_method('local') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('local_to_utc') do |method|
    method.define_argument('time')
    method.define_optional_argument('dst')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('now')

  klass.define_instance_method('parse') do |method|
    method.define_argument('str')
    method.define_optional_argument('now')
  end

  klass.define_instance_method('period_for_local') do |method|
    method.define_argument('time')
    method.define_optional_argument('dst')
  end

  klass.define_instance_method('period_for_utc') do |method|
    method.define_argument('time')
  end

  klass.define_instance_method('to_s')

  klass.define_instance_method('today')

  klass.define_instance_method('tzinfo')

  klass.define_instance_method('utc_offset')

  klass.define_instance_method('utc_to_local') do |method|
    method.define_argument('time')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::XMLConverter') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('to_h')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::XmlMini') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('_dasherize') do |method|
    method.define_argument('key')
  end

  klass.define_method('_parse_binary') do |method|
    method.define_argument('bin')
    method.define_argument('entity')
  end

  klass.define_method('_parse_file') do |method|
    method.define_argument('file')
    method.define_argument('entity')
  end

  klass.define_method('backend')

  klass.define_method('backend=') do |method|
    method.define_argument('name')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('parse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('rename_key') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_method('to_tag') do |method|
    method.define_argument('key')
    method.define_argument('value')
    method.define_argument('options')
  end

  klass.define_method('with_backend') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('_dasherize') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('_parse_binary') do |method|
    method.define_argument('bin')
    method.define_argument('entity')
  end

  klass.define_instance_method('_parse_file') do |method|
    method.define_argument('file')
    method.define_argument('entity')
  end

  klass.define_instance_method('backend')

  klass.define_instance_method('backend=') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('parse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rename_key') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_tag') do |method|
    method.define_argument('key')
    method.define_argument('value')
    method.define_argument('options')
  end

  klass.define_instance_method('with_backend') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveSupport::XmlMini_REXML') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('parse') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('parse') do |method|
    method.define_argument('data')
  end
end

