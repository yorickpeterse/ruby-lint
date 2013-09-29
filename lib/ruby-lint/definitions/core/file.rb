##
# Constant: File
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('IO'))

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

##
# Constant: File::APPEND
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::APPEND') do |klass|
end

##
# Constant: File::BINARY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::BINARY') do |klass|
end

##
# Constant: File::BidirectionalPipe
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::BidirectionalPipe') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('IO'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('close')

  klass.define_instance_method('close_read')

  klass.define_instance_method('close_write')

  klass.define_instance_method('closed?')

  klass.define_instance_method('print') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('printf') do |method|
    method.define_argument('fmt')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('putc') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('puts') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('set_pipe_info') do |method|
    method.define_argument('write')
  end

  klass.define_instance_method('syswrite') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('write') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('write_nonblock') do |method|
    method.define_argument('data')
  end
end

##
# Constant: File::CREAT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::CREAT') do |klass|
end

##
# Constant: File::Constants
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Constants') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: File::EAGAINWaitReadable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::EAGAINWaitReadable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Errno::EAGAIN'))

  klass.define_method('__class_init__')
end

##
# Constant: File::EAGAINWaitWritable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::EAGAINWaitWritable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Errno::EAGAIN'))

  klass.define_method('__class_init__')
end

##
# Constant: File::EXCL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::EXCL') do |klass|
end

##
# Constant: File::EachReader
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::EachReader') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('io')
    method.define_argument('buffer')
    method.define_argument('separator')
    method.define_argument('limit')
  end

  klass.define_instance_method('read_all')

  klass.define_instance_method('read_to_limit')

  klass.define_instance_method('read_to_separator')

  klass.define_instance_method('read_to_separator_with_limit')
end

##
# Constant: File::FFI
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::FFI') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_typedef') do |method|
    method.define_argument('current')
    method.define_argument('add')
  end

  klass.define_method('config') do |method|
    method.define_argument('name')
  end

  klass.define_method('config_hash') do |method|
    method.define_argument('name')
  end

  klass.define_method('errno')

  klass.define_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_method('generate_function') do |method|
    method.define_argument('ptr')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('generate_trampoline') do |method|
    method.define_argument('obj')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('size_to_type') do |method|
    method.define_argument('size')
  end

  klass.define_method('type_size') do |method|
    method.define_argument('type')
  end
end

##
# Constant: File::F_GETFL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::F_GETFL') do |klass|
end

##
# Constant: File::FileError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::FileError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Exception'))
end

##
# Constant: File::InternalBuffer
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::InternalBuffer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('allocate')

  klass.define_instance_method('channel')

  klass.define_instance_method('discard') do |method|
    method.define_argument('skip')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('empty_to') do |method|
    method.define_argument('io')
  end

  klass.define_instance_method('exhausted?')

  klass.define_instance_method('fill') do |method|
    method.define_argument('io')
  end

  klass.define_instance_method('fill_from') do |method|
    method.define_argument('io')
    method.define_optional_argument('skip')
  end

  klass.define_instance_method('find') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('discard')
  end

  klass.define_instance_method('full?')

  klass.define_instance_method('getbyte') do |method|
    method.define_argument('io')
  end

  klass.define_instance_method('getchar') do |method|
    method.define_argument('io')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('put_back') do |method|
    method.define_argument('chr')
  end

  klass.define_instance_method('reset!')

  klass.define_instance_method('shift') do |method|
    method.define_optional_argument('count')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('start')

  klass.define_instance_method('total')

  klass.define_instance_method('unseek!') do |method|
    method.define_argument('io')
  end

  klass.define_instance_method('unshift') do |method|
    method.define_argument('str')
    method.define_argument('start_pos')
  end

  klass.define_instance_method('unused')

  klass.define_instance_method('used')

  klass.define_instance_method('write_synced?')
end

##
# Constant: File::LOCK_UN
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::LOCK_UN') do |klass|
end

##
# Constant: File::NOCTTY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::NOCTTY') do |klass|
end

##
# Constant: File::NONBLOCK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::NONBLOCK') do |klass|
end

##
# Constant: File::NULL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::NULL') do |klass|
end

##
# Constant: File::NoFileError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::NoFileError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('File::FileError'))
end

##
# Constant: File::PATH_SEPARATOR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::PATH_SEPARATOR') do |klass|
end

##
# Constant: File::POSIX
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::POSIX') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('access')

  klass.define_method('chdir')

  klass.define_method('chmod')

  klass.define_method('chown')

  klass.define_method('chroot')

  klass.define_method('dup')

  klass.define_method('endgrent')

  klass.define_method('endpwent')

  klass.define_method('errno')

  klass.define_method('errno=')

  klass.define_method('fchmod')

  klass.define_method('fchown')

  klass.define_method('fcntl')

  klass.define_method('flock')

  klass.define_method('free')

  klass.define_method('fstat')

  klass.define_method('fsync')

  klass.define_method('ftruncate')

  klass.define_method('getcwd')

  klass.define_method('getegid')

  klass.define_method('geteuid')

  klass.define_method('getgid')

  klass.define_method('getgrent')

  klass.define_method('getgrgid')

  klass.define_method('getgrnam')

  klass.define_method('getgroups')

  klass.define_method('getpgid')

  klass.define_method('getpgrp')

  klass.define_method('getpid')

  klass.define_method('getppid')

  klass.define_method('getpriority')

  klass.define_method('getpwent')

  klass.define_method('getpwnam')

  klass.define_method('getpwuid')

  klass.define_method('getrlimit')

  klass.define_method('getuid')

  klass.define_method('initgroups')

  klass.define_method('ioctl')

  klass.define_method('isatty')

  klass.define_method('kill')

  klass.define_method('lchmod')

  klass.define_method('lchown')

  klass.define_method('link')

  klass.define_method('lstat')

  klass.define_method('major')

  klass.define_method('malloc')

  klass.define_method('memcpy')

  klass.define_method('memset')

  klass.define_method('minor')

  klass.define_method('mkdir')

  klass.define_method('perror')

  klass.define_method('readlink')

  klass.define_method('realloc')

  klass.define_method('rename')

  klass.define_method('rmdir')

  klass.define_method('setegid')

  klass.define_method('seteuid')

  klass.define_method('setgid')

  klass.define_method('setgrent')

  klass.define_method('setgroups')

  klass.define_method('setpgid')

  klass.define_method('setpriority')

  klass.define_method('setpwent')

  klass.define_method('setregid')

  klass.define_method('setresgid')

  klass.define_method('setresuid')

  klass.define_method('setreuid')

  klass.define_method('setrlimit')

  klass.define_method('setsid')

  klass.define_method('setuid')

  klass.define_method('stat')

  klass.define_method('strerror')

  klass.define_method('symlink')

  klass.define_method('truncate')

  klass.define_method('umask')

  klass.define_method('unlink')

  klass.define_method('utimes')
end

##
# Constant: File::PermissionError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::PermissionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('File::FileError'))
end

##
# Constant: File::SEEK_CUR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::SEEK_CUR') do |klass|
end

##
# Constant: File::SEEK_END
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::SEEK_END') do |klass|
end

##
# Constant: File::SEPARATOR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::SEPARATOR') do |klass|
end

##
# Constant: File::SYNC
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::SYNC') do |klass|
end

##
# Constant: File::Socketable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Socketable') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('accept')
end

##
# Constant: File::SortedElement
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::SortedElement') do |klass|
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
# Constant: File::Stat
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('create') do |method|
    method.define_argument('path')
  end

  klass.define_method('from_fd') do |method|
    method.define_argument('descriptor')
  end

  klass.define_method('lstat') do |method|
    method.define_argument('path')
  end

  klass.define_method('stat') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('atime')

  klass.define_instance_method('blksize')

  klass.define_instance_method('blockdev?')

  klass.define_instance_method('blocks')

  klass.define_instance_method('chardev?')

  klass.define_instance_method('ctime')

  klass.define_instance_method('dev')

  klass.define_instance_method('dev_major')

  klass.define_instance_method('dev_minor')

  klass.define_instance_method('directory?')

  klass.define_instance_method('executable?')

  klass.define_instance_method('executable_real?')

  klass.define_instance_method('file?')

  klass.define_instance_method('ftype')

  klass.define_instance_method('gid')

  klass.define_instance_method('grpowned?')

  klass.define_instance_method('ino')

  klass.define_instance_method('inspect')

  klass.define_instance_method('mode')

  klass.define_instance_method('mtime')

  klass.define_instance_method('nlink')

  klass.define_instance_method('owned?')

  klass.define_instance_method('path')

  klass.define_instance_method('pipe?')

  klass.define_instance_method('pointer')

  klass.define_instance_method('rdev')

  klass.define_instance_method('rdev_major')

  klass.define_instance_method('rdev_minor')

  klass.define_instance_method('readable?')

  klass.define_instance_method('readable_real?')

  klass.define_instance_method('setgid?')

  klass.define_instance_method('setuid?')

  klass.define_instance_method('size')

  klass.define_instance_method('size?')

  klass.define_instance_method('socket?')

  klass.define_instance_method('sticky?')

  klass.define_instance_method('symlink?')

  klass.define_instance_method('uid')

  klass.define_instance_method('world_readable?')

  klass.define_instance_method('world_writable?')

  klass.define_instance_method('writable?')

  klass.define_instance_method('writable_real?')

  klass.define_instance_method('zero?')
end

##
# Constant: File::Stat::EXISTS_STRUCT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::EXISTS_STRUCT') do |klass|
end

##
# Constant: File::Stat::S_IFBLK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFBLK') do |klass|
end

##
# Constant: File::Stat::S_IFCHR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFCHR') do |klass|
end

##
# Constant: File::Stat::S_IFDIR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFDIR') do |klass|
end

##
# Constant: File::Stat::S_IFIFO
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFIFO') do |klass|
end

##
# Constant: File::Stat::S_IFLNK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFLNK') do |klass|
end

##
# Constant: File::Stat::S_IFMT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFMT') do |klass|
end

##
# Constant: File::Stat::S_IFREG
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFREG') do |klass|
end

##
# Constant: File::Stat::S_IFSOCK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IFSOCK') do |klass|
end

##
# Constant: File::Stat::S_IRGRP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IRGRP') do |klass|
end

##
# Constant: File::Stat::S_IRUGO
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IRUGO') do |klass|
end

##
# Constant: File::Stat::S_IWGRP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IWGRP') do |klass|
end

##
# Constant: File::Stat::S_IWUGO
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IWUGO') do |klass|
end

##
# Constant: File::Stat::S_IXUGO
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::S_IXUGO') do |klass|
end

##
# Constant: File::Stat::Struct
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::Struct') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')
end

##
# Constant: File::Stat::Struct::InlineArray
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::Struct::InlineArray') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('idx')
    method.define_argument('val')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('type')
    method.define_argument('ptr')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ptr')
end

##
# Constant: File::Stat::Struct::InlineCharArray
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::Stat::Struct::InlineCharArray') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rubinius::FFI::Struct::InlineArray'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_str')
end

##
# Constant: File::StreamCopier
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::StreamCopier') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('from')
    method.define_argument('to')
    method.define_argument('length')
    method.define_argument('offset')
  end

  klass.define_instance_method('read_method') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('run')

  klass.define_instance_method('to_io') do |method|
    method.define_argument('obj')
    method.define_argument('mode')
  end
end

##
# Constant: File::TRUNC
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::TRUNC') do |klass|
end

##
# Constant: File::TransferIO
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::TransferIO') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('recv_fd')

  klass.define_instance_method('send_io')
end

##
# Constant: File::UnableToStat
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::UnableToStat') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('File::FileError'))
end

##
# Constant: File::WaitReadable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::WaitReadable') do |klass|
end

##
# Constant: File::WaitWritable
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('File::WaitWritable') do |klass|
end

RubyLint::GlobalScope.definitions.lookup(:const, 'File').deep_freeze