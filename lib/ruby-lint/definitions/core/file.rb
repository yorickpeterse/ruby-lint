##
# Constant: File
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('File') do |klass|
  klass.inherits(RubyLint.global_constant('IO'))

  klass.define_method('__class_init__')

  klass.define_method('absolute_path') do |method|
    method.define_argument('obj')
    method.define_optional_argument('dir')
  end

  klass.define_method('atime') do |method|
    method.define_argument('path')
  end

  klass.define_method('basename') do |method|
    method.define_argument('path')
    method.define_optional_argument('ext')
  end

  klass.define_method('blockdev?') do |method|
    method.define_argument('path')
  end

  klass.define_method('chardev?') do |method|
    method.define_argument('path')
  end

  klass.define_method('chmod') do |method|
    method.define_argument('mode')
    method.define_rest_argument('paths')
  end

  klass.define_method('chown') do |method|
    method.define_argument('owner')
    method.define_argument('group')
    method.define_rest_argument('paths')
  end

  klass.define_method('clamp_short') do |method|
    method.define_argument('value')
  end

  klass.define_method('ctime') do |method|
    method.define_argument('path')
  end

  klass.define_method('delete') do |method|
    method.define_rest_argument('paths')
  end

  klass.define_method('directory?') do |method|
    method.define_argument('io_or_path')
  end

  klass.define_method('dirname') do |method|
    method.define_argument('path')
  end

  klass.define_method('executable?') do |method|
    method.define_argument('path')
  end

  klass.define_method('executable_real?') do |method|
    method.define_argument('path')
  end

  klass.define_method('exist?') do |method|
    method.define_argument('path')
  end

  klass.define_method('exists?') do |method|
    method.define_argument('path')
  end

  klass.define_method('expand_path') do |method|
    method.define_argument('path')
    method.define_optional_argument('dir')
  end

  klass.define_method('extname') do |method|
    method.define_argument('path')
  end

  klass.define_method('file?') do |method|
    method.define_argument('path')
  end

  klass.define_method('fnmatch') do |method|
    method.define_argument('pattern')
    method.define_argument('path')
    method.define_optional_argument('flags')
  end

  klass.define_method('fnmatch?') do |method|
    method.define_argument('pattern')
    method.define_argument('path')
    method.define_optional_argument('flags')
  end

  klass.define_method('ftype') do |method|
    method.define_argument('path')
  end

  klass.define_method('grpowned?') do |method|
    method.define_argument('path')
  end

  klass.define_method('identical?') do |method|
    method.define_argument('orig')
    method.define_argument('copy')
  end

  klass.define_method('join') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('last_nonslash') do |method|
    method.define_argument('path')
    method.define_optional_argument('start')
  end

  klass.define_method('lchmod') do |method|
    method.define_argument('mode')
    method.define_rest_argument('paths')
  end

  klass.define_method('lchown') do |method|
    method.define_argument('owner')
    method.define_argument('group')
    method.define_rest_argument('paths')
  end

  klass.define_method('link') do |method|
    method.define_argument('from')
    method.define_argument('to')
  end

  klass.define_method('lstat') do |method|
    method.define_argument('path')
  end

  klass.define_method('mtime') do |method|
    method.define_argument('path')
  end

  klass.define_method('owned?') do |method|
    method.define_argument('file_name')
  end

  klass.define_method('path') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pipe?') do |method|
    method.define_argument('path')
  end

  klass.define_method('readable?') do |method|
    method.define_argument('path')
  end

  klass.define_method('readable_real?') do |method|
    method.define_argument('path')
  end

  klass.define_method('readlink') do |method|
    method.define_argument('path')
  end

  klass.define_method('realpath') do |method|
    method.define_argument('path')
    method.define_optional_argument('basedir')
  end

  klass.define_method('rename') do |method|
    method.define_argument('from')
    method.define_argument('to')
  end

  klass.define_method('setgid?') do |method|
    method.define_argument('file_name')
  end

  klass.define_method('setuid?') do |method|
    method.define_argument('file_name')
  end

  klass.define_method('size') do |method|
    method.define_argument('io_or_path')
  end

  klass.define_method('size?') do |method|
    method.define_argument('io_or_path')
  end

  klass.define_method('socket?') do |method|
    method.define_argument('path')
  end

  klass.define_method('split') do |method|
    method.define_argument('path')
  end

  klass.define_method('stat') do |method|
    method.define_argument('path')
  end

  klass.define_method('sticky?') do |method|
    method.define_argument('file_name')
  end

  klass.define_method('symlink') do |method|
    method.define_argument('from')
    method.define_argument('to')
  end

  klass.define_method('symlink?') do |method|
    method.define_argument('path')
  end

  klass.define_method('syscopy') do |method|
    method.define_argument('from')
    method.define_argument('to')
  end

  klass.define_method('to_ast') do |method|
    method.define_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('to_sexp') do |method|
    method.define_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('truncate') do |method|
    method.define_argument('path')
    method.define_argument('length')
  end

  klass.define_method('umask') do |method|
    method.define_optional_argument('mask')
  end

  klass.define_method('unlink') do |method|
    method.define_rest_argument('paths')
  end

  klass.define_method('utime') do |method|
    method.define_argument('a_in')
    method.define_argument('m_in')
    method.define_rest_argument('paths')
  end

  klass.define_method('world_readable?') do |method|
    method.define_argument('path')
  end

  klass.define_method('world_writable?') do |method|
    method.define_argument('path')
  end

  klass.define_method('writable?') do |method|
    method.define_argument('path')
  end

  klass.define_method('writable_real?') do |method|
    method.define_argument('path')
  end

  klass.define_method('zero?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('atime')

  klass.define_instance_method('chmod') do |method|
    method.define_argument('mode')
  end

  klass.define_instance_method('chown') do |method|
    method.define_argument('owner')
    method.define_argument('group')
  end

  klass.define_instance_method('ctime')

  klass.define_instance_method('flock') do |method|
    method.define_argument('const')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('lstat')

  klass.define_instance_method('mtime')

  klass.define_instance_method('path')

  klass.define_instance_method('reopen') do |method|
    method.define_argument('other')
    method.define_optional_argument('mode')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('stat')

  klass.define_instance_method('to_path')

  klass.define_instance_method('truncate') do |method|
    method.define_argument('length')
  end
end
