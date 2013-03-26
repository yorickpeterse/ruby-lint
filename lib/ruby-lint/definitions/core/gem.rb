##
# Constant: Gem
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Gem') do |klass|

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
