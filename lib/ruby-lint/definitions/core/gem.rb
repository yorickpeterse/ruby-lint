##
# Constant: Gem
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('_deprecated_activate') do |method|
    method.define_argument('dep')
    method.define_rest_argument('requirements')
  end

  klass.define_method('_deprecated_activate_dep') do |method|
    method.define_argument('dep')
    method.define_rest_argument('requirements')
  end

  klass.define_method('_deprecated_activate_spec') do |method|
    method.define_argument('spec')
  end

  klass.define_method('_deprecated_all_load_paths')

  klass.define_method('_deprecated_available?') do |method|
    method.define_argument('dep')
    method.define_rest_argument('requirements')
  end

  klass.define_method('_deprecated_cache')

  klass.define_method('_deprecated_cache_dir') do |method|
    method.define_optional_argument('custom_dir')
  end

  klass.define_method('_deprecated_cache_gem') do |method|
    method.define_argument('filename')
    method.define_optional_argument('user_dir')
  end

  klass.define_method('_deprecated_default_system_source_cache_dir')

  klass.define_method('_deprecated_default_user_source_cache_dir')

  klass.define_method('_deprecated_latest_load_paths')

  klass.define_method('_deprecated_promote_load_path') do |method|
    method.define_argument('gem_name')
    method.define_argument('over_name')
  end

  klass.define_method('_deprecated_required_location') do |method|
    method.define_argument('gemname')
    method.define_argument('libfile')
    method.define_rest_argument('requirements')
  end

  klass.define_method('_deprecated_searcher')

  klass.define_method('_deprecated_source_index')

  klass.define_method('activate') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('activate_dep') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('activate_spec') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('all_load_paths') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('all_partials') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('available?') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('bin_path') do |method|
    method.define_argument('name')
    method.define_optional_argument('exec_name')
    method.define_rest_argument('requirements')
  end

  klass.define_method('binary_mode')

  klass.define_method('bindir') do |method|
    method.define_optional_argument('install_dir')
  end

  klass.define_method('cache') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cache_dir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cache_gem') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('clear_paths')

  klass.define_method('config_file')

  klass.define_method('configuration')

  klass.define_method('configuration=') do |method|
    method.define_argument('config')
  end

  klass.define_method('datadir') do |method|
    method.define_argument('gem_name')
  end

  klass.define_method('default_bindir')

  klass.define_method('default_dir')

  klass.define_method('default_exec_format')

  klass.define_method('default_path')

  klass.define_method('default_rubygems_dirs')

  klass.define_method('default_sources')

  klass.define_method('default_system_source_cache_dir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('default_user_source_cache_dir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('deflate') do |method|
    method.define_argument('data')
  end

  klass.define_method('dir')

  klass.define_method('ensure_gem_subdirectories') do |method|
    method.define_optional_argument('dir')
  end

  klass.define_method('find_files') do |method|
    method.define_argument('glob')
    method.define_optional_argument('check_load_path')
  end

  klass.define_method('gunzip') do |method|
    method.define_argument('data')
  end

  klass.define_method('gzip') do |method|
    method.define_argument('data')
  end

  klass.define_method('host')

  klass.define_method('host=') do |method|
    method.define_argument('host')
  end

  klass.define_method('inflate') do |method|
    method.define_argument('data')
  end

  klass.define_method('latest_load_paths') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('latest_rubygems_version')

  klass.define_method('latest_spec_for') do |method|
    method.define_argument('name')
  end

  klass.define_method('latest_version_for') do |method|
    method.define_argument('name')
  end

  klass.define_method('load_env_plugins')

  klass.define_method('load_path_insert_index')

  klass.define_method('load_plugin_files') do |method|
    method.define_argument('plugins')
  end

  klass.define_method('load_plugins')

  klass.define_method('load_yaml')

  klass.define_method('loaded_path?') do |method|
    method.define_argument('path')
  end

  klass.define_method('loaded_specs')

  klass.define_method('location_of_caller')

  klass.define_method('marshal_version')

  klass.define_method('path')

  klass.define_method('paths')

  klass.define_method('paths=') do |method|
    method.define_argument('env')
  end

  klass.define_method('platforms')

  klass.define_method('platforms=') do |method|
    method.define_argument('platforms')
  end

  klass.define_method('post_build') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('post_build_hooks')

  klass.define_method('post_install') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('post_install_hooks')

  klass.define_method('post_reset') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('post_reset_hooks')

  klass.define_method('post_uninstall') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('post_uninstall_hooks')

  klass.define_method('pre_install') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('pre_install_hooks')

  klass.define_method('pre_reset') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('pre_reset_hooks')

  klass.define_method('pre_uninstall') do |method|
    method.define_block_argument('hook')
  end

  klass.define_method('pre_uninstall_hooks')

  klass.define_method('prefix')

  klass.define_method('promote_load_path') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('read_binary') do |method|
    method.define_argument('path')
  end

  klass.define_method('refresh')

  klass.define_method('report_activate_error') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('required_location') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ruby')

  klass.define_method('ruby_engine')

  klass.define_method('ruby_version')

  klass.define_method('searcher') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('source_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('sources')

  klass.define_method('sources=') do |method|
    method.define_argument('new_sources')
  end

  klass.define_method('suffix_pattern')

  klass.define_method('suffixes')

  klass.define_method('time') do |method|
    method.define_argument('msg')
    method.define_optional_argument('width')
    method.define_optional_argument('display')
  end

  klass.define_method('try_activate') do |method|
    method.define_argument('path')
  end

  klass.define_method('ui')

  klass.define_method('unresolved_deps')

  klass.define_method('use_paths') do |method|
    method.define_argument('home')
    method.define_rest_argument('paths')
  end

  klass.define_method('user_dir')

  klass.define_method('user_home')

  klass.define_method('win_platform?')
end

##
# Constant: Gem::Builder
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Builder') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('build') do |method|
    method.define_optional_argument('skip_validation')
  end

  klass.define_instance_method('success')
end

##
# Constant: Gem::Cache
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Cache') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_deprecated_from_gems_in') do |method|
    method.define_rest_argument('spec_dirs')
  end

  klass.define_method('_deprecated_from_installed_gems') do |method|
    method.define_rest_argument('deprecated')
  end

  klass.define_method('_deprecated_installed_spec_directories')

  klass.define_method('_deprecated_load_specification') do |method|
    method.define_argument('file_name')
  end

  klass.define_method('from_gems_in') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('from_installed_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('installed_spec_directories') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('load_specification') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('==') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('_deprecated_==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('_deprecated_add_spec') do |method|
    method.define_argument('gem_spec')
    method.define_optional_argument('name')
  end

  klass.define_instance_method('_deprecated_add_specs') do |method|
    method.define_rest_argument('gem_specs')
  end

  klass.define_instance_method('_deprecated_all_gems')

  klass.define_instance_method('_deprecated_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_deprecated_find_name') do |method|
    method.define_argument('gem_name')
    method.define_optional_argument('requirement')
  end

  klass.define_instance_method('_deprecated_gem_signature') do |method|
    method.define_argument('gem_full_name')
  end

  klass.define_instance_method('_deprecated_gems')

  klass.define_instance_method('_deprecated_index_signature')

  klass.define_instance_method('_deprecated_latest_specs') do |method|
    method.define_optional_argument('include_prerelease')
  end

  klass.define_instance_method('_deprecated_length')

  klass.define_instance_method('_deprecated_load_gems_in') do |method|
    method.define_rest_argument('spec_dirs')
  end

  klass.define_instance_method('_deprecated_outdated')

  klass.define_instance_method('_deprecated_prerelease_gems')

  klass.define_instance_method('_deprecated_prerelease_specs')

  klass.define_instance_method('_deprecated_refresh!')

  klass.define_instance_method('_deprecated_released_gems')

  klass.define_instance_method('_deprecated_released_specs')

  klass.define_instance_method('_deprecated_remove_spec') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('_deprecated_search') do |method|
    method.define_argument('gem_pattern')
    method.define_optional_argument('platform_or_requirement')
  end

  klass.define_instance_method('_deprecated_size')

  klass.define_instance_method('_deprecated_spec_dirs')

  klass.define_instance_method('_deprecated_spec_dirs=')

  klass.define_instance_method('_deprecated_specification') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('add_spec') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('add_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('all_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('dump')

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_name') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('gem_signature') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('index_signature') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('latest_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('length') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('load_gems_in') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('outdated') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('prerelease_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('prerelease_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('refresh!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('released_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('released_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('remove_spec') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('search') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('size') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('spec_dirs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('spec_dirs=') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('specification') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Gem::CommandLineError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::CommandLineError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::ConfigFile
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::ConfigFile') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('api_keys')

  klass.define_instance_method('args')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace=')

  klass.define_instance_method('benchmark')

  klass.define_instance_method('benchmark=')

  klass.define_instance_method('bulk_threshold')

  klass.define_instance_method('bulk_threshold=')

  klass.define_instance_method('config_file_name')

  klass.define_instance_method('credentials_path')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('handle_arguments') do |method|
    method.define_argument('arg_list')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('home')

  klass.define_instance_method('home=')

  klass.define_instance_method('load_api_keys')

  klass.define_instance_method('load_file') do |method|
    method.define_argument('filename')
  end

  klass.define_instance_method('path')

  klass.define_instance_method('path=')

  klass.define_instance_method('really_verbose')

  klass.define_instance_method('rubygems_api_key')

  klass.define_instance_method('rubygems_api_key=') do |method|
    method.define_argument('api_key')
  end

  klass.define_instance_method('ssl_ca_cert')

  klass.define_instance_method('ssl_verify_mode')

  klass.define_instance_method('to_yaml')

  klass.define_instance_method('update_sources')

  klass.define_instance_method('update_sources=')

  klass.define_instance_method('verbose')

  klass.define_instance_method('verbose=')

  klass.define_instance_method('write')
end

##
# Constant: Gem::ConfigFile::DEFAULT_BULK_THRESHOLD
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::ConfigFile::DEFAULT_BULK_THRESHOLD') do |klass|
end

##
# Constant: Gem::ConfigFile::OPERATING_SYSTEM_DEFAULTS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::ConfigFile::OPERATING_SYSTEM_DEFAULTS') do |klass|
end

##
# Constant: Gem::ConfigFile::SYSTEM_WIDE_CONFIG_FILE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::ConfigFile::SYSTEM_WIDE_CONFIG_FILE') do |klass|
end

##
# Constant: Gem::ConfigMap
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::ConfigMap') do |klass|
end

##
# Constant: Gem::Dependency
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Dependency') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('inspect')

  klass.define_instance_method('match?') do |method|
    method.define_argument('name')
    method.define_argument('version')
  end

  klass.define_instance_method('matches_spec?') do |method|
    method.define_argument('spec')
  end

  klass.define_instance_method('matching_specs') do |method|
    method.define_optional_argument('platform_only')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('prerelease=')

  klass.define_instance_method('prerelease?')

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('q')
  end

  klass.define_instance_method('requirement')

  klass.define_instance_method('requirements_list')

  klass.define_instance_method('specific?')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_spec')

  klass.define_instance_method('to_specs')

  klass.define_instance_method('type')
end

##
# Constant: Gem::Dependency::TYPES
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Dependency::TYPES') do |klass|
end

##
# Constant: Gem::DependencyError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::DependencyError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::DependencyList
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::DependencyList') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_deprecated_from_source_index') do |method|
    method.define_optional_argument('ignored')
  end

  klass.define_method('from_source_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('from_specs')

  klass.define_instance_method('add') do |method|
    method.define_rest_argument('gemspecs')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('dependency_order')

  klass.define_instance_method('development')

  klass.define_instance_method('development=')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_name') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('ok?')

  klass.define_instance_method('ok_to_remove?') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('remove_by_name') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('remove_specs_unsatisfied_by') do |method|
    method.define_argument('dependencies')
  end

  klass.define_instance_method('spec_predecessors')

  klass.define_instance_method('specs')

  klass.define_instance_method('tsort_each_child') do |method|
    method.define_argument('node')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tsort_each_node') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('why_not_ok?') do |method|
    method.define_optional_argument('quick')
  end
end

##
# Constant: Gem::DependencyList::Cyclic
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::DependencyList::Cyclic') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('StandardError'))
end

##
# Constant: Gem::DependencyList::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::DependencyList::SortedElement') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

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

##
# Constant: Gem::DependencyRemovalException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::DependencyRemovalException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::Deprecate
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Deprecate') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('deprecate') do |method|
    method.define_argument('name')
    method.define_argument('repl')
    method.define_argument('year')
    method.define_argument('month')
  end

  klass.define_method('skip')

  klass.define_method('skip=') do |method|
    method.define_argument('v')
  end

  klass.define_method('skip_during')
end

##
# Constant: Gem::DocumentError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::DocumentError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::EndOfYAMLException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::EndOfYAMLException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::Exception
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Exception') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('RuntimeError'))
end

##
# Constant: Gem::FilePermissionError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::FilePermissionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))

  klass.define_method('__class_init__')
end

##
# Constant: Gem::FormatException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::FormatException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))

  klass.define_method('__class_init__')

  klass.define_instance_method('file_path')

  klass.define_instance_method('file_path=')
end

##
# Constant: Gem::GemNotFoundException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::GemNotFoundException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))

  klass.define_method('__class_init__')

  klass.define_instance_method('errors')

  klass.define_instance_method('name')

  klass.define_instance_method('version')
end

##
# Constant: Gem::GemNotInHomeException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::GemNotInHomeException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))

  klass.define_method('__class_init__')

  klass.define_instance_method('spec')

  klass.define_instance_method('spec=')
end

##
# Constant: Gem::GemPathSearcher
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::GemPathSearcher') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('_deprecated_find') do |method|
    method.define_argument('glob')
  end

  klass.define_instance_method('_deprecated_find_active') do |method|
    method.define_argument('glob')
  end

  klass.define_instance_method('_deprecated_find_all') do |method|
    method.define_argument('glob')
  end

  klass.define_instance_method('_deprecated_find_in_unresolved') do |method|
    method.define_argument('glob')
  end

  klass.define_instance_method('_deprecated_find_in_unresolved_tree') do |method|
    method.define_argument('glob')
  end

  klass.define_instance_method('_deprecated_find_spec_for_file') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_active') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_in_unresolved') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_in_unresolved_tree') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_spec_for_file') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('init_gemspecs')

  klass.define_instance_method('lib_dirs_for') do |method|
    method.define_argument('spec')
  end

  klass.define_instance_method('matching_file?') do |method|
    method.define_argument('spec')
    method.define_argument('path')
  end

  klass.define_instance_method('matching_files') do |method|
    method.define_argument('spec')
    method.define_argument('path')
  end

  klass.define_instance_method('matching_paths') do |method|
    method.define_argument('spec')
    method.define_argument('path')
  end
end

##
# Constant: Gem::InstallError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::InstallError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::InvalidSpecificationException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::InvalidSpecificationException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::LoadError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::LoadError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('LoadError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('requirement')

  klass.define_instance_method('requirement=')
end

##
# Constant: Gem::LoadError::InvalidExtensionError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::LoadError::InvalidExtensionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('LoadError'))
end

##
# Constant: Gem::LoadError::MRIExtensionError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::LoadError::MRIExtensionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('LoadError::InvalidExtensionError'))
end

##
# Constant: Gem::MARSHAL_SPEC_DIR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::MARSHAL_SPEC_DIR') do |klass|
end

##
# Constant: Gem::NoAliasYAMLTree
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::NoAliasYAMLTree') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Psych::Visitors::YAMLTree'))

  klass.define_method('__class_init__')

  klass.define_instance_method('register') do |method|
    method.define_argument('target')
    method.define_argument('obj')
  end

  klass.define_instance_method('visit_String') do |method|
    method.define_argument('str')
  end
end

##
# Constant: Gem::NoAliasYAMLTree::DISPATCH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::NoAliasYAMLTree::DISPATCH') do |klass|
end

##
# Constant: Gem::OperationNotSupportedError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::OperationNotSupportedError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::PackageTask
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rake::PackageTask'))

  klass.define_method('__class_init__')

  klass.define_instance_method('define')

  klass.define_instance_method('gem_spec')

  klass.define_instance_method('gem_spec=')

  klass.define_instance_method('init') do |method|
    method.define_argument('gem')
  end
end

##
# Constant: Gem::PackageTask::DEFAULT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::DEFAULT') do |klass|
end

##
# Constant: Gem::PackageTask::DryRun
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::DryRun') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('cd') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('chdir') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('chmod') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chmod_R') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chown') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chown_R') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cmp') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('compare_file') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('compare_stream') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('copy') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('copy_entry') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('copy_file') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('copy_stream') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('cp') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cp_r') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('getwd') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('identical?') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('install') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('link') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln_s') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln_sf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('makedirs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkdir_p') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkpath') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('move') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mv') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('pwd') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('remove_dir') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove_entry') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove_entry_secure') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove_file') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('rm') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_f') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_r') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_rf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rmdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rmtree') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('safe_unlink') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('symlink') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('touch') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('uptodate?') do |method|
    method.define_rest_argument('@unnamed_splat')
  end
end

##
# Constant: Gem::PackageTask::Entry_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::Entry_') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('blockdev?')

  klass.define_instance_method('chardev?')

  klass.define_instance_method('chmod') do |method|
    method.define_argument('mode')
  end

  klass.define_instance_method('chown') do |method|
    method.define_argument('uid')
    method.define_argument('gid')
  end

  klass.define_instance_method('copy') do |method|
    method.define_argument('dest')
  end

  klass.define_instance_method('copy_file') do |method|
    method.define_argument('dest')
  end

  klass.define_instance_method('copy_metadata') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('dereference?')

  klass.define_instance_method('directory?')

  klass.define_instance_method('door?')

  klass.define_instance_method('entries')

  klass.define_instance_method('exist?')

  klass.define_instance_method('file?')

  klass.define_instance_method('inspect')

  klass.define_instance_method('lstat')

  klass.define_instance_method('lstat!')

  klass.define_instance_method('path')

  klass.define_instance_method('pipe?')

  klass.define_instance_method('platform_support')

  klass.define_instance_method('postorder_traverse')

  klass.define_instance_method('prefix')

  klass.define_instance_method('preorder_traverse')

  klass.define_instance_method('rel')

  klass.define_instance_method('remove')

  klass.define_instance_method('remove_dir1')

  klass.define_instance_method('remove_file')

  klass.define_instance_method('socket?')

  klass.define_instance_method('stat')

  klass.define_instance_method('stat!')

  klass.define_instance_method('symlink?')

  klass.define_instance_method('traverse')
end

##
# Constant: Gem::PackageTask::LN_SUPPORTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::LN_SUPPORTED') do |klass|
end

##
# Constant: Gem::PackageTask::LOW_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::LOW_METHODS') do |klass|
end

##
# Constant: Gem::PackageTask::LowMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::LowMethods') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Gem::PackageTask::METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::METHODS') do |klass|
end

##
# Constant: Gem::PackageTask::NoWrite
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::NoWrite') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('cd') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('chdir') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('chmod') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chmod_R') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chown') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chown_R') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cmp') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('compare_file') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('compare_stream') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('copy') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('copy_entry') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('copy_file') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('copy_stream') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('cp') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cp_r') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('getwd') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('identical?') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('install') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('link') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln_s') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln_sf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('makedirs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkdir_p') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkpath') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('move') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mv') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('pwd') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('remove_dir') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove_entry') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove_entry_secure') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('remove_file') do |method|
    method.define_rest_argument('@unnamed_splat')
  end

  klass.define_method('rm') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_f') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_r') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_rf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rmdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rmtree') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('safe_unlink') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('symlink') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('touch') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('uptodate?') do |method|
    method.define_rest_argument('@unnamed_splat')
  end
end

##
# Constant: Gem::PackageTask::OPT_TABLE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::OPT_TABLE') do |klass|
end

##
# Constant: Gem::PackageTask::RUBY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::RUBY') do |klass|
end

##
# Constant: Gem::PackageTask::StreamUtils_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::StreamUtils_') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Gem::PackageTask::Verbose
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PackageTask::Verbose') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('cd') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chmod') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chmod_R') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chown') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('chown_R') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cmp') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('compare_file') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('compare_stream') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('copy') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('copy_entry') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('preserve')
    method.define_optional_argument('dereference_root')
    method.define_optional_argument('remove_destination')
  end

  klass.define_method('copy_file') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('preserve')
    method.define_optional_argument('dereference')
  end

  klass.define_method('copy_stream') do |method|
    method.define_argument('src')
    method.define_argument('dest')
  end

  klass.define_method('cp') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('cp_r') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('getwd')

  klass.define_method('identical?') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('install') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('link') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln_s') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('ln_sf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('makedirs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkdir_p') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mkpath') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('move') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('mv') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('pwd')

  klass.define_method('remove') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('remove_dir') do |method|
    method.define_argument('path')
    method.define_optional_argument('force')
  end

  klass.define_method('remove_entry') do |method|
    method.define_argument('path')
    method.define_optional_argument('force')
  end

  klass.define_method('remove_entry_secure') do |method|
    method.define_argument('path')
    method.define_optional_argument('force')
  end

  klass.define_method('remove_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('force')
  end

  klass.define_method('rm') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_f') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_r') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rm_rf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rmdir') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('rmtree') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('safe_unlink') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('symlink') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('touch') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('uptodate?') do |method|
    method.define_argument('new')
    method.define_argument('old_list')
    method.define_optional_argument('options')
  end
end

##
# Constant: Gem::PathSupport
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::PathSupport') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('home')

  klass.define_instance_method('path')
end

##
# Constant: Gem::Platform
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Platform') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('local')

  klass.define_method('match') do |method|
    method.define_argument('platform')
  end

  klass.define_method('new') do |method|
    method.define_argument('arch')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('_deprecated_empty?')

  klass.define_instance_method('cpu')

  klass.define_instance_method('cpu=')

  klass.define_instance_method('empty?') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('inspect')

  klass.define_instance_method('os')

  klass.define_instance_method('os=')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')

  klass.define_instance_method('version')

  klass.define_instance_method('version=')
end

##
# Constant: Gem::Platform::CURRENT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Platform::CURRENT') do |klass|
end

##
# Constant: Gem::Platform::RUBY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Platform::RUBY') do |klass|
end

##
# Constant: Gem::RUBYGEMS_DIR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::RUBYGEMS_DIR') do |klass|
end

##
# Constant: Gem::RbConfigPriorities
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::RbConfigPriorities') do |klass|
end

##
# Constant: Gem::RemoteError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::RemoteError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::RemoteInstallationCancelled
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::RemoteInstallationCancelled') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::RemoteInstallationSkipped
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::RemoteInstallationSkipped') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::RemoteSourceException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::RemoteSourceException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::Requirement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Requirement') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('create') do |method|
    method.define_argument('input')
  end

  klass.define_method('default')

  klass.define_method('parse') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('version')
  end

  klass.define_instance_method('=~') do |method|
    method.define_argument('version')
  end

  klass.define_instance_method('as_list')

  klass.define_instance_method('hash')

  klass.define_instance_method('init_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('none?')

  klass.define_instance_method('prerelease?')

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('q')
  end

  klass.define_instance_method('requirements')

  klass.define_instance_method('satisfied_by?') do |method|
    method.define_argument('version')
  end

  klass.define_instance_method('specific?')

  klass.define_instance_method('to_s')

  klass.define_instance_method('yaml_initialize') do |method|
    method.define_argument('tag')
    method.define_argument('vals')
  end
end

##
# Constant: Gem::Requirement::OPS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Requirement::OPS') do |klass|
end

##
# Constant: Gem::Requirement::PATTERN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Requirement::PATTERN') do |klass|
end

##
# Constant: Gem::SourceIndex
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::SourceIndex') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_deprecated_from_gems_in') do |method|
    method.define_rest_argument('spec_dirs')
  end

  klass.define_method('_deprecated_from_installed_gems') do |method|
    method.define_rest_argument('deprecated')
  end

  klass.define_method('_deprecated_installed_spec_directories')

  klass.define_method('_deprecated_load_specification') do |method|
    method.define_argument('file_name')
  end

  klass.define_method('from_gems_in') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('from_installed_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('installed_spec_directories') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('load_specification') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('==') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('_deprecated_==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('_deprecated_add_spec') do |method|
    method.define_argument('gem_spec')
    method.define_optional_argument('name')
  end

  klass.define_instance_method('_deprecated_add_specs') do |method|
    method.define_rest_argument('gem_specs')
  end

  klass.define_instance_method('_deprecated_all_gems')

  klass.define_instance_method('_deprecated_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_deprecated_find_name') do |method|
    method.define_argument('gem_name')
    method.define_optional_argument('requirement')
  end

  klass.define_instance_method('_deprecated_gem_signature') do |method|
    method.define_argument('gem_full_name')
  end

  klass.define_instance_method('_deprecated_gems')

  klass.define_instance_method('_deprecated_index_signature')

  klass.define_instance_method('_deprecated_latest_specs') do |method|
    method.define_optional_argument('include_prerelease')
  end

  klass.define_instance_method('_deprecated_length')

  klass.define_instance_method('_deprecated_load_gems_in') do |method|
    method.define_rest_argument('spec_dirs')
  end

  klass.define_instance_method('_deprecated_outdated')

  klass.define_instance_method('_deprecated_prerelease_gems')

  klass.define_instance_method('_deprecated_prerelease_specs')

  klass.define_instance_method('_deprecated_refresh!')

  klass.define_instance_method('_deprecated_released_gems')

  klass.define_instance_method('_deprecated_released_specs')

  klass.define_instance_method('_deprecated_remove_spec') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('_deprecated_search') do |method|
    method.define_argument('gem_pattern')
    method.define_optional_argument('platform_or_requirement')
  end

  klass.define_instance_method('_deprecated_size')

  klass.define_instance_method('_deprecated_spec_dirs')

  klass.define_instance_method('_deprecated_spec_dirs=')

  klass.define_instance_method('_deprecated_specification') do |method|
    method.define_argument('full_name')
  end

  klass.define_instance_method('add_spec') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('add_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('all_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('dump')

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_name') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('gem_signature') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('index_signature') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('latest_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('length') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('load_gems_in') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('outdated') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('prerelease_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('prerelease_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('refresh!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('released_gems') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('released_specs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('remove_spec') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('search') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('size') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('spec_dirs') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('spec_dirs=') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('specification') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Gem::SourceIndex::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::SourceIndex::SortedElement') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

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

##
# Constant: Gem::SpecFetcher
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::SpecFetcher') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('fetcher')

  klass.define_method('fetcher=') do |method|
    method.define_argument('fetcher')
  end

  klass.define_instance_method('cache_dir') do |method|
    method.define_argument('uri')
  end

  klass.define_instance_method('dir')

  klass.define_instance_method('fetch') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('fetch_spec') do |method|
    method.define_argument('spec')
    method.define_argument('source_uri')
  end

  klass.define_instance_method('fetch_with_errors') do |method|
    method.define_argument('dependency')
    method.define_optional_argument('all')
    method.define_optional_argument('matching_platform')
    method.define_optional_argument('prerelease')
  end

  klass.define_instance_method('find_matching') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_matching_with_errors') do |method|
    method.define_argument('dependency')
    method.define_optional_argument('all')
    method.define_optional_argument('matching_platform')
    method.define_optional_argument('prerelease')
  end

  klass.define_instance_method('latest_specs')

  klass.define_instance_method('list') do |method|
    method.define_optional_argument('all')
    method.define_optional_argument('prerelease')
  end

  klass.define_instance_method('load_specs') do |method|
    method.define_argument('source_uri')
    method.define_argument('file')
  end

  klass.define_instance_method('prerelease_specs')

  klass.define_instance_method('specs')

  klass.define_instance_method('suggest_gems_from_name') do |method|
    method.define_argument('gem_name')
  end
end

##
# Constant: Gem::SpecFetcher::FILES
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::SpecFetcher::FILES') do |klass|
end

##
# Constant: Gem::Specification
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Specification') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_all')

  klass.define_method('_load') do |method|
    method.define_argument('str')
  end

  klass.define_method('_resort!')

  klass.define_method('add_spec') do |method|
    method.define_argument('spec')
  end

  klass.define_method('add_specs') do |method|
    method.define_rest_argument('specs')
  end

  klass.define_method('all')

  klass.define_method('all=') do |method|
    method.define_argument('specs')
  end

  klass.define_method('all_names')

  klass.define_method('array_attributes')

  klass.define_method('attribute_names')

  klass.define_method('dirs')

  klass.define_method('dirs=') do |method|
    method.define_argument('dirs')
  end

  klass.define_method('each')

  klass.define_method('find_all_by_name') do |method|
    method.define_argument('name')
    method.define_rest_argument('requirements')
  end

  klass.define_method('find_by_name') do |method|
    method.define_argument('name')
    method.define_rest_argument('requirements')
  end

  klass.define_method('find_by_path') do |method|
    method.define_argument('path')
  end

  klass.define_method('find_in_unresolved') do |method|
    method.define_argument('path')
  end

  klass.define_method('find_in_unresolved_tree') do |method|
    method.define_argument('path')
  end

  klass.define_method('from_yaml') do |method|
    method.define_argument('input')
  end

  klass.define_method('latest_specs') do |method|
    method.define_optional_argument('prerelease')
  end

  klass.define_method('load') do |method|
    method.define_argument('file')
  end

  klass.define_method('non_nil_attributes')

  klass.define_method('normalize_yaml_input') do |method|
    method.define_argument('input')
  end

  klass.define_method('outdated')

  klass.define_method('remove_spec') do |method|
    method.define_argument('spec')
  end

  klass.define_method('required_attribute?') do |method|
    method.define_argument('name')
  end

  klass.define_method('required_attributes')

  klass.define_method('reset')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('_deprecated_cache_gem')

  klass.define_instance_method('_deprecated_installation_path')

  klass.define_instance_method('_deprecated_loaded')

  klass.define_instance_method('_deprecated_loaded=')

  klass.define_instance_method('_deprecated_loaded?')

  klass.define_instance_method('_deprecated_test_suite_file')

  klass.define_instance_method('_deprecated_test_suite_file=') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('_dump') do |method|
    method.define_argument('limit')
  end

  klass.define_instance_method('activate')

  klass.define_instance_method('activate_dependencies')

  klass.define_instance_method('activated')

  klass.define_instance_method('activated=')

  klass.define_instance_method('activated?')

  klass.define_instance_method('add_bindir') do |method|
    method.define_argument('executables')
  end

  klass.define_instance_method('add_dependency') do |method|
    method.define_argument('gem')
    method.define_rest_argument('requirements')
  end

  klass.define_instance_method('add_development_dependency') do |method|
    method.define_argument('gem')
    method.define_rest_argument('requirements')
  end

  klass.define_instance_method('add_runtime_dependency') do |method|
    method.define_argument('gem')
    method.define_rest_argument('requirements')
  end

  klass.define_instance_method('add_self_to_load_path')

  klass.define_instance_method('author')

  klass.define_instance_method('author=') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('authors')

  klass.define_instance_method('authors=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('autorequire')

  klass.define_instance_method('autorequire=')

  klass.define_instance_method('base_dir')

  klass.define_instance_method('bin_dir')

  klass.define_instance_method('bin_file') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('bindir')

  klass.define_instance_method('bindir=')

  klass.define_instance_method('cache_dir')

  klass.define_instance_method('cache_file')

  klass.define_instance_method('cache_gem') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('cert_chain')

  klass.define_instance_method('cert_chain=')

  klass.define_instance_method('conflicts')

  klass.define_instance_method('contains_requirable_file?') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('date')

  klass.define_instance_method('date=') do |method|
    method.define_argument('date')
  end

  klass.define_instance_method('default_executable')

  klass.define_instance_method('default_executable=')

  klass.define_instance_method('default_value') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('dependencies')

  klass.define_instance_method('dependent_gems')

  klass.define_instance_method('dependent_specs')

  klass.define_instance_method('description')

  klass.define_instance_method('description=') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('development_dependencies')

  klass.define_instance_method('doc_dir')

  klass.define_instance_method('email')

  klass.define_instance_method('email=')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('executable')

  klass.define_instance_method('executable=') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('executables')

  klass.define_instance_method('executables=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('extensions')

  klass.define_instance_method('extensions=') do |method|
    method.define_argument('extensions')
  end

  klass.define_instance_method('extra_rdoc_files')

  klass.define_instance_method('extra_rdoc_files=') do |method|
    method.define_argument('files')
  end

  klass.define_instance_method('file_name')

  klass.define_instance_method('files')

  klass.define_instance_method('files=') do |method|
    method.define_argument('files')
  end

  klass.define_instance_method('for_cache')

  klass.define_instance_method('full_gem_path')

  klass.define_instance_method('full_name')

  klass.define_instance_method('gem_dir')

  klass.define_instance_method('gems_dir')

  klass.define_instance_method('has_rdoc')

  klass.define_instance_method('has_rdoc=') do |method|
    method.define_argument('ignored')
  end

  klass.define_instance_method('has_rdoc?')

  klass.define_instance_method('has_test_suite?')

  klass.define_instance_method('has_unit_tests?')

  klass.define_instance_method('hash')

  klass.define_instance_method('homepage')

  klass.define_instance_method('homepage=')

  klass.define_instance_method('init_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('installation_path') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('lib_dirs_glob')

  klass.define_instance_method('lib_files')

  klass.define_instance_method('license')

  klass.define_instance_method('license=') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('licenses')

  klass.define_instance_method('licenses=') do |method|
    method.define_argument('licenses')
  end

  klass.define_instance_method('loaded') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('loaded=') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('loaded?') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('loaded_from')

  klass.define_instance_method('loaded_from=') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('mark_version')

  klass.define_instance_method('matches_for_glob') do |method|
    method.define_argument('glob')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('sym')
    method.define_rest_argument('a')
    method.define_block_argument('b')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('normalize')

  klass.define_instance_method('original_name')

  klass.define_instance_method('original_platform')

  klass.define_instance_method('original_platform=')

  klass.define_instance_method('platform')

  klass.define_instance_method('platform=') do |method|
    method.define_argument('platform')
  end

  klass.define_instance_method('post_install_message')

  klass.define_instance_method('post_install_message=')

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('q')
  end

  klass.define_instance_method('raise_if_conflicts')

  klass.define_instance_method('rdoc_options')

  klass.define_instance_method('rdoc_options=') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('require_path')

  klass.define_instance_method('require_path=') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('require_paths')

  klass.define_instance_method('require_paths=')

  klass.define_instance_method('required_ruby_version')

  klass.define_instance_method('required_ruby_version=') do |method|
    method.define_argument('req')
  end

  klass.define_instance_method('required_rubygems_version')

  klass.define_instance_method('required_rubygems_version=') do |method|
    method.define_argument('req')
  end

  klass.define_instance_method('requirements')

  klass.define_instance_method('requirements=') do |method|
    method.define_argument('req')
  end

  klass.define_instance_method('ri_dir')

  klass.define_instance_method('rubyforge_project')

  klass.define_instance_method('rubyforge_project=')

  klass.define_instance_method('rubygems_version')

  klass.define_instance_method('rubygems_version=')

  klass.define_instance_method('runtime_dependencies')

  klass.define_instance_method('satisfies_requirement?') do |method|
    method.define_argument('dependency')
  end

  klass.define_instance_method('signing_key')

  klass.define_instance_method('signing_key=')

  klass.define_instance_method('sort_obj')

  klass.define_instance_method('spec_dir')

  klass.define_instance_method('spec_file')

  klass.define_instance_method('spec_name')

  klass.define_instance_method('specification_version')

  klass.define_instance_method('specification_version=')

  klass.define_instance_method('summary')

  klass.define_instance_method('summary=') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('test_file')

  klass.define_instance_method('test_file=') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('test_files')

  klass.define_instance_method('test_files=') do |method|
    method.define_argument('files')
  end

  klass.define_instance_method('test_suite_file') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('test_suite_file=') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('to_ruby')

  klass.define_instance_method('to_ruby_for_cache')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_yaml') do |method|
    method.define_optional_argument('opts')
  end

  klass.define_instance_method('traverse') do |method|
    method.define_optional_argument('trail')
    method.define_block_argument('block')
  end

  klass.define_instance_method('validate') do |method|
    method.define_optional_argument('packaging')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=') do |method|
    method.define_argument('version')
  end

  klass.define_instance_method('yaml_initialize') do |method|
    method.define_argument('tag')
    method.define_argument('vals')
  end
end

##
# Constant: Gem::Specification::CURRENT_SPECIFICATION_VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Specification::CURRENT_SPECIFICATION_VERSION') do |klass|
end

##
# Constant: Gem::Specification::MARSHAL_FIELDS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Specification::MARSHAL_FIELDS') do |klass|
end

##
# Constant: Gem::Specification::NONEXISTENT_SPECIFICATION_VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Specification::NONEXISTENT_SPECIFICATION_VERSION') do |klass|
end

##
# Constant: Gem::Specification::TODAY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Specification::TODAY') do |klass|
end

##
# Constant: Gem::SyckDefaultKey
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::SyckDefaultKey') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('to_s')
end

##
# Constant: Gem::SystemExitException
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::SystemExitException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('SystemExit'))

  klass.define_method('__class_init__')

  klass.define_instance_method('exit_code')

  klass.define_instance_method('exit_code=')
end

##
# Constant: Gem::VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::VERSION') do |klass|
end

##
# Constant: Gem::VerificationError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::VerificationError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Gem::Exception'))
end

##
# Constant: Gem::Version
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Version') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('correct?') do |method|
    method.define_argument('version')
  end

  klass.define_method('create') do |method|
    method.define_argument('input')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('bump')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('init_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('prerelease?')

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('q')
  end

  klass.define_instance_method('release')

  klass.define_instance_method('segments')

  klass.define_instance_method('spermy_recommendation')

  klass.define_instance_method('to_s')

  klass.define_instance_method('version')

  klass.define_instance_method('yaml_initialize') do |method|
    method.define_argument('tag')
    method.define_argument('map')
  end
end

##
# Constant: Gem::Version::ANCHORED_VERSION_PATTERN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Version::ANCHORED_VERSION_PATTERN') do |klass|
end

##
# Constant: Gem::Version::VERSION_PATTERN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::Version::VERSION_PATTERN') do |klass|
end

##
# Constant: Gem::WIN_PATTERNS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Gem::WIN_PATTERNS') do |klass|
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Gem').deep_freeze