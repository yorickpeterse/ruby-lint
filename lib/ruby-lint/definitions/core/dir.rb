# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('Dir') do |defs|
  defs.define_constant('Dir') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('patterns')
    end

    klass.define_method('allocate')

    klass.define_method('chdir') do |method|
      method.define_optional_argument('path')
    end

    klass.define_method('chroot') do |method|
      method.define_argument('path')
    end

    klass.define_method('delete') do |method|
      method.define_argument('path')
    end

    klass.define_method('entries') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_method('exist?') do |method|
      method.define_argument('path')
    end

    klass.define_method('exists?') do |method|
      method.define_argument('path')
    end

    klass.define_method('foreach') do |method|
      method.define_argument('path')
    end

    klass.define_method('getwd')

    klass.define_method('glob') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('flags')
    end

    klass.define_method('glob_split') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('home') do |method|
      method.define_optional_argument('user')
    end

    klass.define_method('join_path') do |method|
      method.define_argument('p1')
      method.define_argument('p2')
      method.define_argument('dirsep')
    end

    klass.define_method('mkdir') do |method|
      method.define_argument('path')
      method.define_optional_argument('mode')
    end

    klass.define_method('mktmpdir') do |method|
      method.define_optional_argument('prefix_suffix')
      method.define_rest_argument('rest')
    end

    klass.define_method('open') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_method('pwd')

    klass.define_method('rmdir') do |method|
      method.define_argument('path')
    end

    klass.define_method('tmpdir')

    klass.define_method('unlink') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('close')

    klass.define_instance_method('closed?')

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
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

    klass.define_instance_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_instance_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('find_all')

    klass.define_instance_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_instance_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('lazy')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('min')

    klass.define_instance_method('min_by')

    klass.define_instance_method('minmax')

    klass.define_instance_method('minmax_by')

    klass.define_instance_method('none?')

    klass.define_instance_method('one?')

    klass.define_instance_method('partition')

    klass.define_instance_method('path')

    klass.define_instance_method('pos')

    klass.define_instance_method('pos=') do |method|
      method.define_argument('position')
    end

    klass.define_instance_method('read')

    klass.define_instance_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('reject')

    klass.define_instance_method('reverse_each')

    klass.define_instance_method('rewind')

    klass.define_instance_method('seek') do |method|
      method.define_argument('position')
    end

    klass.define_instance_method('select')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('tell')

    klass.define_instance_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('to_path')

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Dir::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_instance_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('drop_while')

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_instance_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('find_all')

    klass.define_instance_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_instance_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('lazy')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('min')

    klass.define_instance_method('min_by')

    klass.define_instance_method('minmax')

    klass.define_instance_method('minmax_by')

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('none?')

    klass.define_instance_method('one?')

    klass.define_instance_method('partition')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('reject')

    klass.define_instance_method('reverse_each')

    klass.define_instance_method('rewind')

    klass.define_instance_method('select')

    klass.define_instance_method('size')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Dir::FFI') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('initialize')

    klass.define_method('size_to_type') do |method|
      method.define_argument('size')
    end

    klass.define_method('type_size') do |method|
      method.define_argument('type')
    end
  end

  defs.define_constant('Dir::Glob') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('compile') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('flags')
      method.define_optional_argument('patterns')
    end

    klass.define_method('glob') do |method|
      method.define_argument('pattern')
      method.define_argument('flags')
      method.define_optional_argument('matches')
    end

    klass.define_method('glob_cache')

    klass.define_method('initialize')

    klass.define_method('path_split') do |method|
      method.define_argument('str')
    end

    klass.define_method('run') do |method|
      method.define_argument('node')
      method.define_optional_argument('matches')
    end

    klass.define_method('single_compile') do |method|
      method.define_argument('glob')
      method.define_optional_argument('flags')
    end
  end

  defs.define_constant('Dir::Glob::ConstantDirectory') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('path')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('nxt')
      method.define_argument('flags')
      method.define_argument('dir')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Dir::Glob::ConstantEntry') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('parent')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('nxt')
      method.define_argument('flags')
      method.define_argument('name')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Dir::Glob::DirectoriesOnly') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('path')
    end
  end

  defs.define_constant('Dir::Glob::DirectoryMatch') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Match'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('path')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('nxt')
      method.define_argument('flags')
      method.define_argument('glob')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Dir::Glob::EntryMatch') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Match'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('path')
    end
  end

  defs.define_constant('Dir::Glob::Environment') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('matches')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('matches')
  end

  defs.define_constant('Dir::Glob::Match') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('nxt')
      method.define_argument('flags')
      method.define_argument('glob')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('match?') do |method|
      method.define_argument('str')
    end
  end

  defs.define_constant('Dir::Glob::Node') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('nxt')
      method.define_argument('flags')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('path_join') do |method|
      method.define_argument('parent')
      method.define_argument('ent')
    end

    klass.define_instance_method('separator')

    klass.define_instance_method('separator=')
  end

  defs.define_constant('Dir::Glob::RecursiveDirectories') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('start')
    end
  end

  defs.define_constant('Dir::Glob::RootDirectory') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('path')
    end
  end

  defs.define_constant('Dir::Glob::StartRecursiveDirectories') do |klass|
    klass.inherits(defs.constant_proxy('Dir::Glob::Node'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
      method.define_argument('start')
    end
  end

  defs.define_constant('Dir::PrivateFile') do |klass|
    klass.inherits(defs.constant_proxy('IO'))

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

    klass.define_method('realdirpath') do |method|
      method.define_argument('path')
      method.define_optional_argument('basedir')
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

    klass.define_instance_method('initialize') do |method|
      method.define_argument('path_or_fd')
      method.define_optional_argument('mode')
      method.define_optional_argument('perm')
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
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

  defs.define_constant('Dir::RewindKind') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Dir::SeekKind') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Dir::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('val')
      method.define_argument('sort_id')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('sort_id')

    klass.define_instance_method('value')
  end

  defs.define_constant('Dir::TellKind') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Dir::Tmpname') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('create') do |method|
      method.define_argument('basename')
      method.define_rest_argument('rest')
    end

    klass.define_method('initialize')

    klass.define_method('make_tmpname') do |method|
      method.define_argument('prefix_suffix')
      method.define_argument('n')
    end

    klass.define_method('tmpdir')
  end
end
