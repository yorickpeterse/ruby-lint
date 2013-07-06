##
# Constant: Rails
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails') do |klass|

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

  klass.define_method('initialize!')

  klass.define_method('initialized?')

  klass.define_method('logger')

  klass.define_method('logger=')

  klass.define_method('public_path')

  klass.define_method('root')

  klass.define_method('version')
end

##
# Constant: Rails::Application
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Application') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Engine'))

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('add_lib_to_load_path!')

  klass.define_instance_method('allow_concurrency?')

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

  klass.define_instance_method('env_config')

  klass.define_instance_method('helpers_paths')

  klass.define_instance_method('initialize!') do |method|
    method.define_optional_argument('group')
  end

  klass.define_instance_method('initialized?')

  klass.define_instance_method('initializers')

  klass.define_instance_method('key_generator')

  klass.define_instance_method('load_rack_cache')

  klass.define_instance_method('ordered_railties')

  klass.define_instance_method('railties_initializers') do |method|
    method.define_argument('current')
  end

  klass.define_instance_method('reload_dependencies?')

  klass.define_instance_method('reload_routes!')

  klass.define_instance_method('reloaders')

  klass.define_instance_method('require_environment!')

  klass.define_instance_method('routes_reloader')

  klass.define_instance_method('run_console_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_generators_blocks') do |method|
    method.define_argument('app')
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

##
# Constant: Rails::Configuration
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Configuration') do |klass|
end

##
# Constant: Rails::DeprecatedConstant
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::DeprecatedConstant') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::Deprecation::DeprecatedConstantProxy'))

  klass.define_method('deprecate') do |method|
    method.define_argument('old')
    method.define_argument('current')
  end
end

##
# Constant: Rails::Engine
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Engine') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Railtie'))

  klass.define_method('called_from')

  klass.define_method('called_from=')

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

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('isolate_namespace') do |method|
    method.define_argument('mod')
  end

  klass.define_method('isolated')

  klass.define_method('isolated=')

  klass.define_method('isolated?')

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

  klass.define_instance_method('railties')

  klass.define_instance_method('root') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('routes')

  klass.define_instance_method('routes?')

  klass.define_instance_method('run_tasks_blocks') do |method|
    method.define_rest_argument('')
  end
end

##
# Constant: Rails::Info
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Info') do |klass|

  klass.define_method('framework_version') do |method|
    method.define_argument('framework')
  end

  klass.define_method('frameworks')

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

##
# Constant: Rails::InfoController
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::InfoController') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::Base'))

  klass.define_method('_helpers')

  klass.define_method('_layout')

  klass.define_method('_layout_conditions')

  klass.define_method('_process_action_callbacks')

  klass.define_method('_view_paths')

  klass.define_method('middleware_stack')

  klass.define_instance_method('_layout_from_proc')

  klass.define_instance_method('index')

  klass.define_instance_method('local_request?')

  klass.define_instance_method('properties')

  klass.define_instance_method('require_local!')

  klass.define_instance_method('routes')
end

##
# Constant: Rails::Initializable
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Initializable') do |klass|

  klass.define_method('included') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('initializers')

  klass.define_instance_method('run_initializers') do |method|
    method.define_optional_argument('group')
    method.define_rest_argument('args')
  end
end

##
# Constant: Rails::Paths
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Paths') do |klass|
end

##
# Constant: Rails::Rack
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Rack') do |klass|
end

##
# Constant: Rails::Railtie
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

  klass.define_instance_method('run_runner_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_tasks_blocks') do |method|
    method.define_argument('app')
  end
end

##
# Constant: Rails::TestUnitRailtie
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::TestUnitRailtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Railtie'))
end

##
# Constant: Rails::VERSION
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::VERSION') do |klass|
end

##
# Constant: Rails::WelcomeController
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rails::WelcomeController') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::Base'))

  klass.define_method('_helpers')

  klass.define_method('_layout')

  klass.define_method('_layout_conditions')

  klass.define_method('_view_paths')

  klass.define_method('middleware_stack')

  klass.define_instance_method('index')
end