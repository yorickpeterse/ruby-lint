##
# Constant: FileUtils
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('FileUtils') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('cd') do |method|
    method.define_argument('dir')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('chdir') do |method|
    method.define_argument('dir')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('chmod') do |method|
    method.define_argument('mode')
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('chmod_R') do |method|
    method.define_argument('mode')
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('chown') do |method|
    method.define_argument('user')
    method.define_argument('group')
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('chown_R') do |method|
    method.define_argument('user')
    method.define_argument('group')
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('cmp') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('collect_method') do |method|
    method.define_argument('opt')
  end

  klass.define_method('commands')

  klass.define_method('compare_file') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('compare_stream') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('copy') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
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
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('cp_r') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('getwd')

  klass.define_method('have_option?') do |method|
    method.define_argument('mid')
    method.define_argument('opt')
  end

  klass.define_method('identical?') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('install') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('link') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('ln') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('ln_s') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('ln_sf') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('makedirs') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('mkdir') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('mkdir_p') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('mkpath') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('move') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('mv') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('options')

  klass.define_method('options_of') do |method|
    method.define_argument('mid')
  end

  klass.define_method('private_module_function') do |method|
    method.define_argument('name')
  end

  klass.define_method('pwd')

  klass.define_method('remove') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
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
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('rm_f') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('rm_r') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('rm_rf') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('rmdir') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('rmtree') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('safe_unlink') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('symlink') do |method|
    method.define_argument('src')
    method.define_argument('dest')
    method.define_optional_argument('options')
  end

  klass.define_method('touch') do |method|
    method.define_argument('list')
    method.define_optional_argument('options')
  end

  klass.define_method('uptodate?') do |method|
    method.define_argument('new')
    method.define_argument('old_list')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('ruby') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('safe_ln') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('sh') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_instance_method('split_all') do |method|
    method.define_argument('path')
  end
end
