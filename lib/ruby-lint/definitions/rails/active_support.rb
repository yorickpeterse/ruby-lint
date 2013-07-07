# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-07 17:54:58 +0200
# Platform: rbx 2.0.0.rc1

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Autoload') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('extended') do |method|
    method.define_argument('base')
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::BacktraceCleaner') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::BasicObject') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::ProxyObject'))

  klass.define_method('inherited') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Benchmarkable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('silence')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Cache') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('expand_cache_key') do |method|
    method.define_argument('key')
    method.define_optional_argument('namespace')
  end

  klass.define_method('lookup_store') do |method|
    method.define_rest_argument('store_option')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::CachingKeyGenerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('generate_key') do |method|
    method.define_argument('salt')
    method.define_optional_argument('key_size')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Callbacks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Concern') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('extended') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Configurable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('config')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Dependencies') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('autoload_once_paths')

  klass.define_method('autoload_once_paths=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('autoload_paths')

  klass.define_method('autoload_paths=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('autoloaded_constants')

  klass.define_method('autoloaded_constants=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('constant_watch_stack')

  klass.define_method('constant_watch_stack=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('explicitly_unloadable_constants')

  klass.define_method('explicitly_unloadable_constants=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('history')

  klass.define_method('history=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('loaded')

  klass.define_method('loaded=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('log_activity')

  klass.define_method('log_activity=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('mechanism')

  klass.define_method('mechanism=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('warnings_on_first_load')

  klass.define_method('warnings_on_first_load=') do |method|
    method.define_argument('obj')
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Deprecation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

  klass.define_method('initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('instance')

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

  klass.define_instance_method('deprecation_horizon')

  klass.define_instance_method('deprecation_horizon=')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::DescendantsTracker') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('clear')

  klass.define_method('descendants') do |method|
    method.define_argument('klass')
  end

  klass.define_method('direct_descendants') do |method|
    method.define_argument('klass')
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Duration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::ProxyObject'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::FileUpdateChecker') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('execute')

  klass.define_instance_method('execute_if_updated')

  klass.define_instance_method('updated?')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Gzip') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('compress') do |method|
    method.define_argument('source')
    method.define_optional_argument('level')
    method.define_optional_argument('strategy')
  end

  klass.define_method('decompress') do |method|
    method.define_argument('source')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::HashWithIndifferentAccess') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Hash'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('new_from_hash_copying_default') do |method|
    method.define_argument('hash')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('convert_key') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('convert_value') do |method|
    method.define_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('deep_stringify_keys')

  klass.define_instance_method('deep_stringify_keys!')

  klass.define_instance_method('deep_symbolize_keys')

  klass.define_instance_method('default') do |method|
    method.define_optional_argument('key')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('dup')

  klass.define_instance_method('extractable_options?')

  klass.define_instance_method('fetch') do |method|
    method.define_argument('key')
    method.define_rest_argument('extras')
  end

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

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

  klass.define_instance_method('nested_under_indifferent_access')

  klass.define_instance_method('regular_update') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('regular_writer') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('reverse_merge') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('reverse_merge!') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('store') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('stringify_keys')

  klass.define_instance_method('stringify_keys!')

  klass.define_instance_method('symbolize_keys')

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_options!')

  klass.define_instance_method('update') do |method|
    method.define_argument('other_hash')
  end

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('indices')
  end

  klass.define_instance_method('with_indifferent_access')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Inflector') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::InheritableOptions') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::OrderedOptions'))

  klass.define_instance_method('inheritable_copy')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::JSON') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

  klass.define_method('parse_error')

  klass.define_method('with_backend') do |method|
    method.define_argument('name')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::KeyGenerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('generate_key') do |method|
    method.define_argument('salt')
    method.define_optional_argument('key_size')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::LegacyKeyGenerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('generate_key') do |method|
    method.define_argument('salt')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::LogSubscriber') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::Subscriber'))

  klass.define_method('colorize_logging')

  klass.define_method('colorize_logging=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('flush_all!')

  klass.define_method('log_subscribers')

  klass.define_method('logger')

  klass.define_method('logger=')

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Logger') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Logger'))

  klass.define_method('broadcast') do |method|
    method.define_argument('logger')
  end

  klass.define_method('silencer')

  klass.define_method('silencer=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('silencer')

  klass.define_instance_method('silencer=') do |method|
    method.define_argument('obj')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::MessageEncryptor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('decrypt_and_verify') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('encrypt_and_sign') do |method|
    method.define_argument('value')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::MessageVerifier') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('generate') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('verify') do |method|
    method.define_argument('signed_message')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Multibyte') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('clean') do |method|
    method.define_argument('string')
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Notifications') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::NumberHelper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::OptionMerger') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::OrderedHash') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Hash'))

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('extractable_options?')

  klass.define_instance_method('nested_under_indifferent_access')

  klass.define_instance_method('to_yaml_type')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::OrderedOptions') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Hash'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('_get') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('respond_to_missing?') do |method|
    method.define_argument('name')
    method.define_argument('include_private')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::PerThreadRegistry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::ProxyObject') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('BasicObject'))

  klass.define_instance_method('raise') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Railtie'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Rescuable') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('handler_for_rescue') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('rescue_with_handler') do |method|
    method.define_argument('exception')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::SafeBuffer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('String'))

  klass.define_instance_method('%') do |method|
    method.define_argument('args')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('capitalize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('capitalize!') do |method|
    method.define_rest_argument('args')
  end

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

  klass.define_instance_method('clone_empty')

  klass.define_instance_method('concat') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('downcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('downcase!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('gsub') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('html_safe?')

  klass.define_instance_method('lstrip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('lstrip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('next') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('next!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('prepend') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prepend!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('reverse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse!') do |method|
    method.define_rest_argument('args')
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

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('squeeze') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('squeeze!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('strip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('strip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('sub') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('succ') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('succ!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('swapcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('swapcase!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('to_param')

  klass.define_instance_method('to_s')

  klass.define_instance_method('tr') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tr!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('tr_s') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tr_s!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('upcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('upcase!') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::StringInquirer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('String'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Subscriber') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::SubscriberQueueRegistry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('get_queue') do |method|
    method.define_argument('queue_key')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::TaggedLogging') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('MiniTest::Unit::TestCase'))

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

  klass.define_method('describe') do |method|
    method.define_argument('text')
  end

  klass.define_method('for_tag') do |method|
    method.define_argument('tag')
  end

  klass.define_method('test_order')

  klass.define_instance_method('_setup_callbacks')

  klass.define_instance_method('_setup_callbacks=')

  klass.define_instance_method('_setup_callbacks?')

  klass.define_instance_method('_teardown_callbacks')

  klass.define_instance_method('_teardown_callbacks=')

  klass.define_instance_method('_teardown_callbacks?')

  klass.define_instance_method('assert_no_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
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

  klass.define_instance_method('assert_raise') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('method_name')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::Testing') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::TimeWithZone') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('name')

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::TimeZone') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

  klass.define_instance_method('<=>') do |method|
    method.define_argument('zone')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('re')
  end

  klass.define_instance_method('at') do |method|
    method.define_argument('secs')
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::XMLConverter') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('to_h')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::XmlMini') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveSupport::XmlMini_REXML') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('parse') do |method|
    method.define_argument('data')
  end
end

