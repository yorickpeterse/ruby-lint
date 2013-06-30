##
# Constant: Rake
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('application')

  klass.define_method('application=') do |method|
    method.define_argument('app')
  end

  klass.define_method('each_dir_parent') do |method|
    method.define_argument('dir')
  end

  klass.define_method('load_rakefile') do |method|
    method.define_argument('path')
  end

  klass.define_method('original_dir')
end

##
# Constant: Rake::AltSystem
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::AltSystem') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('`')

  klass.define_method('backticks')

  klass.define_method('define_module_function') do |method|
    method.define_argument('name')
    method.define_block_argument('block')
  end

  klass.define_method('system')
end

##
# Constant: Rake::Application
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Application') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add_import') do |method|
    method.define_argument('fn')
  end

  klass.define_instance_method('add_loader') do |method|
    method.define_argument('ext')
    method.define_argument('loader')
  end

  klass.define_instance_method('collect_tasks')

  klass.define_instance_method('const_warning') do |method|
    method.define_argument('const_name')
  end

  klass.define_instance_method('deprecate') do |method|
    method.define_argument('old_usage')
    method.define_argument('new_usage')
    method.define_argument('call_site')
  end

  klass.define_instance_method('display_error_message') do |method|
    method.define_argument('ex')
  end

  klass.define_instance_method('display_prerequisites')

  klass.define_instance_method('display_tasks_and_comments')

  klass.define_instance_method('dynamic_width')

  klass.define_instance_method('dynamic_width_stty')

  klass.define_instance_method('dynamic_width_tput')

  klass.define_instance_method('find_rakefile_location')

  klass.define_instance_method('handle_options')

  klass.define_instance_method('have_rakefile')

  klass.define_instance_method('init') do |method|
    method.define_optional_argument('app_name')
  end

  klass.define_instance_method('invoke_task') do |method|
    method.define_argument('task_string')
  end

  klass.define_instance_method('load_imports')

  klass.define_instance_method('load_rakefile')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('original_dir')

  klass.define_instance_method('parse_task_string') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('print_rakefile_directory') do |method|
    method.define_argument('location')
  end

  klass.define_instance_method('rake_require') do |method|
    method.define_argument('file_name')
    method.define_optional_argument('paths')
    method.define_optional_argument('loaded')
  end

  klass.define_instance_method('rakefile')

  klass.define_instance_method('rakefile_location') do |method|
    method.define_optional_argument('backtrace')
  end

  klass.define_instance_method('raw_load_rakefile')

  klass.define_instance_method('run')

  klass.define_instance_method('standard_exception_handling')

  klass.define_instance_method('standard_rake_options')

  klass.define_instance_method('system_dir')

  klass.define_instance_method('terminal_columns')

  klass.define_instance_method('terminal_columns=')

  klass.define_instance_method('terminal_width')

  klass.define_instance_method('top_level')

  klass.define_instance_method('top_level_tasks')

  klass.define_instance_method('truncate') do |method|
    method.define_argument('string')
    method.define_argument('width')
  end

  klass.define_instance_method('truncate_output?')

  klass.define_instance_method('tty_output=') do |method|
    method.define_argument('tty_output_state')
  end

  klass.define_instance_method('tty_output?')

  klass.define_instance_method('unix?')

  klass.define_instance_method('windows?')
end

##
# Constant: Rake::Application::DEFAULT_RAKEFILES
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Application::DEFAULT_RAKEFILES') do |klass|
end

##
# Constant: Rake::Cloneable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Cloneable') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('clone')

  klass.define_instance_method('dup')
end

##
# Constant: Rake::DSL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::DSL::DEFAULT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::DEFAULT') do |klass|
end

##
# Constant: Rake::DSL::DryRun
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::DryRun') do |klass|

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
# Constant: Rake::DSL::Entry_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::Entry_') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Rake::DSL::LN_SUPPORTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::LN_SUPPORTED') do |klass|
end

##
# Constant: Rake::DSL::LOW_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::LOW_METHODS') do |klass|
end

##
# Constant: Rake::DSL::LowMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::LowMethods') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::DSL::METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::METHODS') do |klass|
end

##
# Constant: Rake::DSL::NoWrite
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::NoWrite') do |klass|

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
# Constant: Rake::DSL::OPT_TABLE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::OPT_TABLE') do |klass|
end

##
# Constant: Rake::DSL::RUBY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::RUBY') do |klass|
end

##
# Constant: Rake::DSL::StreamUtils_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::StreamUtils_') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::DSL::Verbose
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DSL::Verbose') do |klass|

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
# Constant: Rake::DefaultLoader
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DefaultLoader') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('load') do |method|
    method.define_argument('fn')
  end
end

##
# Constant: Rake::DeprecatedCommands
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DeprecatedCommands') do |klass|
end

##
# Constant: Rake::DeprecatedObjectDSL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::DeprecatedObjectDSL') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::EARLY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::EARLY') do |klass|
end

##
# Constant: Rake::EMPTY_TASK_ARGS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::EMPTY_TASK_ARGS') do |klass|
end

##
# Constant: Rake::EarlyTime
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::EarlyTime') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('instance')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('to_s')
end

##
# Constant: Rake::EarlyTime::SingletonClassMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::EarlyTime::SingletonClassMethods') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('_load') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('clone')
end

##
# Constant: Rake::FileCreationTask
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileCreationTask') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rake::FileTask'))

  klass.define_method('__class_init__')

  klass.define_instance_method('needed?')

  klass.define_instance_method('timestamp')
end

##
# Constant: Rake::FileList
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('__class_init__')

  klass.define_instance_method('&') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('-') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('<<') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('__append__') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('__rescue_match__') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('add') do |method|
    method.define_rest_argument('filenames')
  end

  klass.define_instance_method('all?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assoc') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('at') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_exclude')

  klass.define_instance_method('collect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect_concat') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('combination') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('compact') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('compact!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('concat') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete_at') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete_if') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('detect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('drop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('drop_while') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_cons') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_slice') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('egrep') do |method|
    method.define_argument('pattern')
    method.define_rest_argument('options')
  end

  klass.define_instance_method('empty?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('exclude') do |method|
    method.define_rest_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('fn')
  end

  klass.define_instance_method('existing')

  klass.define_instance_method('existing!')

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fill') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flat_map') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flatten') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flatten!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('group_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gsub') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('import') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('include') do |method|
    method.define_rest_argument('filenames')
  end

  klass.define_instance_method('include?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('inject') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('insert') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('inspect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('is_a?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('join') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('keep_if') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('kind_of?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('last') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('length') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('map') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('map!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('max') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('max_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('member?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('new_range') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('new_reserved') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('nitems') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('none?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('one?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pack') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('partition') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('pathmap') do |method|
    method.define_optional_argument('spec')
  end

  klass.define_instance_method('permutation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('product') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('push') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rassoc') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('repeated_combination') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('repeated_permutation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('resolve')

  klass.define_instance_method('reverse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse_each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rindex') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rotate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rotate!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sample') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('select!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shelljoin') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shift') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shuffle') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shuffle!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('size') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice_before') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_inplace') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('start') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('start=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sub') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('take') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('take_while') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_generator') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_tuple') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('total') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('total=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('transpose') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tuple') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tuple=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('uniq') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('uniq!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('|') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

##
# Constant: Rake::FileList::ARRAY_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::ARRAY_METHODS') do |klass|
end

##
# Constant: Rake::FileList::DEFAULT_IGNORE_PATTERNS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::DEFAULT_IGNORE_PATTERNS') do |klass|
end

##
# Constant: Rake::FileList::DEFAULT_IGNORE_PROCS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::DEFAULT_IGNORE_PROCS') do |klass|
end

##
# Constant: Rake::FileList::DELEGATING_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::DELEGATING_METHODS') do |klass|
end

##
# Constant: Rake::FileList::MUST_DEFINE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::MUST_DEFINE') do |klass|
end

##
# Constant: Rake::FileList::MUST_NOT_DEFINE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::MUST_NOT_DEFINE') do |klass|
end

##
# Constant: Rake::FileList::SPECIAL_RETURN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileList::SPECIAL_RETURN') do |klass|
end

##
# Constant: Rake::FileTask
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileTask') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rake::Task'))

  klass.define_method('__class_init__')

  klass.define_method('scope_name') do |method|
    method.define_argument('scope')
    method.define_argument('task_name')
  end

  klass.define_instance_method('needed?')

  klass.define_instance_method('timestamp')
end

##
# Constant: Rake::FileUtilsExt
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('nowrite_flag')

  klass.define_method('nowrite_flag=')

  klass.define_method('verbose_flag')

  klass.define_method('verbose_flag=')

  klass.define_instance_method('cd') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chdir') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chmod') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chmod_R') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chown') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chown_R') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('copy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cp') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cp_r') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('install') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ln') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ln_s') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ln_sf') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('makedirs') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mkdir') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mkdir_p') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mkpath') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('move') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mv') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('nowrite') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('rake_check_options') do |method|
    method.define_argument('options')
    method.define_rest_argument('optdecl')
  end

  klass.define_instance_method('rake_merge_option') do |method|
    method.define_argument('args')
    method.define_argument('defaults')
  end

  klass.define_instance_method('rake_output_message') do |method|
    method.define_argument('message')
  end

  klass.define_instance_method('remove') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rm') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rm_f') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rm_r') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rm_rf') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rmdir') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rmtree') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ruby') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('safe_unlink') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sh') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('symlink') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('touch') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('verbose') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('when_writing') do |method|
    method.define_optional_argument('msg')
  end
end

##
# Constant: Rake::FileUtilsExt::DEFAULT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::DEFAULT') do |klass|
end

##
# Constant: Rake::FileUtilsExt::DryRun
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::DryRun') do |klass|

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
# Constant: Rake::FileUtilsExt::Entry_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::Entry_') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Rake::FileUtilsExt::LN_SUPPORTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::LN_SUPPORTED') do |klass|
end

##
# Constant: Rake::FileUtilsExt::LOW_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::LOW_METHODS') do |klass|
end

##
# Constant: Rake::FileUtilsExt::LowMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::LowMethods') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::FileUtilsExt::METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::METHODS') do |klass|
end

##
# Constant: Rake::FileUtilsExt::NoWrite
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::NoWrite') do |klass|

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
# Constant: Rake::FileUtilsExt::OPT_TABLE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::OPT_TABLE') do |klass|
end

##
# Constant: Rake::FileUtilsExt::RUBY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::RUBY') do |klass|
end

##
# Constant: Rake::FileUtilsExt::StreamUtils_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::StreamUtils_') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::FileUtilsExt::Verbose
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::FileUtilsExt::Verbose') do |klass|

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
# Constant: Rake::InvocationChain
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::InvocationChain') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('append') do |method|
    method.define_argument('value')
    method.define_argument('chain')
  end

  klass.define_instance_method('append') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('to_s')
end

##
# Constant: Rake::InvocationChain::EMPTY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::InvocationChain::EMPTY') do |klass|
end

##
# Constant: Rake::InvocationChain::EmptyInvocationChain
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::InvocationChain::EmptyInvocationChain') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('append') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('to_s')
end

##
# Constant: Rake::InvocationExceptionMixin
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::InvocationExceptionMixin') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('chain')

  klass.define_instance_method('chain=') do |method|
    method.define_argument('value')
  end
end

##
# Constant: Rake::MultiTask
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::MultiTask') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rake::Task'))

  klass.define_method('__class_init__')
end

##
# Constant: Rake::NameSpace
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::NameSpace') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('tasks')
end

##
# Constant: Rake::PackageTask
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rake::TaskLib'))

  klass.define_method('__class_init__')

  klass.define_instance_method('define')

  klass.define_instance_method('init') do |method|
    method.define_argument('name')
    method.define_argument('version')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('need_tar')

  klass.define_instance_method('need_tar=')

  klass.define_instance_method('need_tar_bz2')

  klass.define_instance_method('need_tar_bz2=')

  klass.define_instance_method('need_tar_gz')

  klass.define_instance_method('need_tar_gz=')

  klass.define_instance_method('need_zip')

  klass.define_instance_method('need_zip=')

  klass.define_instance_method('package_dir')

  klass.define_instance_method('package_dir=')

  klass.define_instance_method('package_dir_path')

  klass.define_instance_method('package_files')

  klass.define_instance_method('package_files=')

  klass.define_instance_method('package_name')

  klass.define_instance_method('tar_bz2_file')

  klass.define_instance_method('tar_command')

  klass.define_instance_method('tar_command=')

  klass.define_instance_method('tar_gz_file')

  klass.define_instance_method('tgz_file')

  klass.define_instance_method('version')

  klass.define_instance_method('version=')

  klass.define_instance_method('zip_command')

  klass.define_instance_method('zip_command=')

  klass.define_instance_method('zip_file')
end

##
# Constant: Rake::PackageTask::DEFAULT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::DEFAULT') do |klass|
end

##
# Constant: Rake::PackageTask::DryRun
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::DryRun') do |klass|

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
# Constant: Rake::PackageTask::Entry_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::Entry_') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Rake::PackageTask::LN_SUPPORTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::LN_SUPPORTED') do |klass|
end

##
# Constant: Rake::PackageTask::LOW_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::LOW_METHODS') do |klass|
end

##
# Constant: Rake::PackageTask::LowMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::LowMethods') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::PackageTask::METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::METHODS') do |klass|
end

##
# Constant: Rake::PackageTask::NoWrite
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::NoWrite') do |klass|

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
# Constant: Rake::PackageTask::OPT_TABLE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::OPT_TABLE') do |klass|
end

##
# Constant: Rake::PackageTask::RUBY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::RUBY') do |klass|
end

##
# Constant: Rake::PackageTask::StreamUtils_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::StreamUtils_') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::PackageTask::Verbose
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PackageTask::Verbose') do |klass|

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
# Constant: Rake::PseudoStatus
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::PseudoStatus') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('>>') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('exited?')

  klass.define_instance_method('exitstatus')

  klass.define_instance_method('stopped?')

  klass.define_instance_method('to_i')
end

##
# Constant: Rake::RuleRecursionOverflowError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::RuleRecursionOverflowError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add_target') do |method|
    method.define_argument('target')
  end

  klass.define_instance_method('message')
end

##
# Constant: Rake::Task
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Task') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('task_name')
  end

  klass.define_method('__class_init__')

  klass.define_method('clear')

  klass.define_method('create_rule') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('define_task') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('scope_name') do |method|
    method.define_argument('scope')
    method.define_argument('task_name')
  end

  klass.define_method('task_defined?') do |method|
    method.define_argument('task_name')
  end

  klass.define_method('tasks')

  klass.define_instance_method('actions')

  klass.define_instance_method('add_description') do |method|
    method.define_argument('description')
  end

  klass.define_instance_method('application')

  klass.define_instance_method('application=')

  klass.define_instance_method('arg_description')

  klass.define_instance_method('arg_names')

  klass.define_instance_method('clear')

  klass.define_instance_method('clear_actions')

  klass.define_instance_method('clear_prerequisites')

  klass.define_instance_method('comment')

  klass.define_instance_method('comment=') do |method|
    method.define_argument('description')
  end

  klass.define_instance_method('enhance') do |method|
    method.define_optional_argument('deps')
    method.define_block_argument('block')
  end

  klass.define_instance_method('execute') do |method|
    method.define_optional_argument('args')
  end

  klass.define_instance_method('full_comment')

  klass.define_instance_method('inspect')

  klass.define_instance_method('investigation')

  klass.define_instance_method('invoke') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('invoke_prerequisites') do |method|
    method.define_argument('task_args')
    method.define_argument('invocation_chain')
  end

  klass.define_instance_method('invoke_with_call_chain') do |method|
    method.define_argument('task_args')
    method.define_argument('invocation_chain')
  end

  klass.define_instance_method('locations')

  klass.define_instance_method('name')

  klass.define_instance_method('name_with_args')

  klass.define_instance_method('needed?')

  klass.define_instance_method('prerequisite_tasks')

  klass.define_instance_method('prerequisites')

  klass.define_instance_method('reenable')

  klass.define_instance_method('scope')

  klass.define_instance_method('set_arg_names') do |method|
    method.define_argument('args')
  end

  klass.define_instance_method('source')

  klass.define_instance_method('sources')

  klass.define_instance_method('sources=')

  klass.define_instance_method('timestamp')

  klass.define_instance_method('to_s')
end

##
# Constant: Rake::TaskArgumentError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskArgumentError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ArgumentError'))
end

##
# Constant: Rake::TaskArguments
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskArguments') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('lookup') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('sym')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('names')

  klass.define_instance_method('new_scope') do |method|
    method.define_argument('names')
  end

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_s')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('with_defaults') do |method|
    method.define_argument('defaults')
  end
end

##
# Constant: Rake::TaskArguments::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskArguments::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Rake::TaskLib
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('paste') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end
end

##
# Constant: Rake::TaskLib::DEFAULT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::DEFAULT') do |klass|
end

##
# Constant: Rake::TaskLib::DryRun
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::DryRun') do |klass|

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
# Constant: Rake::TaskLib::Entry_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::Entry_') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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
# Constant: Rake::TaskLib::LN_SUPPORTED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::LN_SUPPORTED') do |klass|
end

##
# Constant: Rake::TaskLib::LOW_METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::LOW_METHODS') do |klass|
end

##
# Constant: Rake::TaskLib::LowMethods
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::LowMethods') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::TaskLib::METHODS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::METHODS') do |klass|
end

##
# Constant: Rake::TaskLib::NoWrite
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::NoWrite') do |klass|

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
# Constant: Rake::TaskLib::OPT_TABLE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::OPT_TABLE') do |klass|
end

##
# Constant: Rake::TaskLib::RUBY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::RUBY') do |klass|
end

##
# Constant: Rake::TaskLib::StreamUtils_
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::StreamUtils_') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::TaskLib::Verbose
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskLib::Verbose') do |klass|

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
# Constant: Rake::TaskManager
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::TaskManager') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('record_task_metadata')

  klass.define_method('record_task_metadata=')

  klass.define_instance_method('[]') do |method|
    method.define_argument('task_name')
    method.define_optional_argument('scopes')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('create_rule') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('current_scope')

  klass.define_instance_method('define_task') do |method|
    method.define_argument('task_class')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('enhance_with_matching_rule') do |method|
    method.define_argument('task_name')
    method.define_optional_argument('level')
  end

  klass.define_instance_method('in_namespace') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('intern') do |method|
    method.define_argument('task_class')
    method.define_argument('task_name')
  end

  klass.define_instance_method('last_comment')

  klass.define_instance_method('last_description')

  klass.define_instance_method('last_description=')

  klass.define_instance_method('lookup') do |method|
    method.define_argument('task_name')
    method.define_optional_argument('initial_scope')
  end

  klass.define_instance_method('resolve_args') do |method|
    method.define_argument('args')
  end

  klass.define_instance_method('synthesize_file_task') do |method|
    method.define_argument('task_name')
  end

  klass.define_instance_method('tasks')

  klass.define_instance_method('tasks_in_scope') do |method|
    method.define_argument('scope')
  end
end

##
# Constant: Rake::Version
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Version') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Rake::Version::BUILD
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Version::BUILD') do |klass|
end

##
# Constant: Rake::Version::MAJOR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Version::MAJOR') do |klass|
end

##
# Constant: Rake::Version::MINOR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Version::MINOR') do |klass|
end

##
# Constant: Rake::Version::NUMBERS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Version::NUMBERS') do |klass|
end

##
# Constant: Rake::Win32
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Win32') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('normalize') do |method|
    method.define_argument('path')
  end

  klass.define_method('rake_system') do |method|
    method.define_rest_argument('cmd')
  end

  klass.define_method('win32_system_dir')

  klass.define_method('windows?')
end

##
# Constant: Rake::Win32::Win32HomeError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Rake::Win32::Win32HomeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('RuntimeError'))
end