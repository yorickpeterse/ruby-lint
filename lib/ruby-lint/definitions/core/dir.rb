##
# Constant: Dir
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('patterns')
  end

  klass.define_method('__class_init__')

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
    method.define_block_argument('block')
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

  klass.define_method('open') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_method('pwd')

  klass.define_method('rmdir') do |method|
    method.define_argument('path')
  end

  klass.define_method('unlink') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('close')

  klass.define_instance_method('closed?')

  klass.define_instance_method('each')

  klass.define_instance_method('inspect')

  klass.define_instance_method('path')

  klass.define_instance_method('pos')

  klass.define_instance_method('pos=') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('read')

  klass.define_instance_method('rewind')

  klass.define_instance_method('seek') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('tell')

  klass.define_instance_method('to_path')
end

##
# Constant: Dir::FFI
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::FFI') do |klass|

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
# Constant: Dir::Glob
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob') do |klass|

  klass.define_method('__module_init__')

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
    method.define_optional_argument('suffixes')
  end
end

##
# Constant: Dir::Glob::ConstantDirectory
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::ConstantDirectory') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('path')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
    method.define_argument('dir')
  end
end

##
# Constant: Dir::Glob::ConstantEntry
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::ConstantEntry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('parent')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
    method.define_argument('name')
  end
end

##
# Constant: Dir::Glob::ConstantSuffixEntry
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::ConstantSuffixEntry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('parent')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
    method.define_argument('name')
    method.define_argument('suffixes')
  end
end

##
# Constant: Dir::Glob::DirectoriesOnly
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::DirectoriesOnly') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('path')
  end
end

##
# Constant: Dir::Glob::DirectoryMatch
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::DirectoryMatch') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Match'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('path')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
    method.define_argument('glob')
  end
end

##
# Constant: Dir::Glob::EntryMatch
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::EntryMatch') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Match'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('path')
  end
end

##
# Constant: Dir::Glob::Environment
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::Environment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('matches')
  end

  klass.define_instance_method('matches')
end

##
# Constant: Dir::Glob::Match
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::Match') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
    method.define_argument('glob')
  end

  klass.define_instance_method('match?') do |method|
    method.define_argument('str')
  end
end

##
# Constant: Dir::Glob::Node
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::Node') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
  end

  klass.define_instance_method('path_join') do |method|
    method.define_argument('parent')
    method.define_argument('ent')
  end

  klass.define_instance_method('separator')

  klass.define_instance_method('separator=')
end

##
# Constant: Dir::Glob::RecursiveDirectories
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::RecursiveDirectories') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('start')
  end
end

##
# Constant: Dir::Glob::RootDirectory
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::RootDirectory') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('path')
  end
end

##
# Constant: Dir::Glob::StartRecursiveDirectories
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::StartRecursiveDirectories') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Node'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('start')
  end
end

##
# Constant: Dir::Glob::SuffixEntryMatch
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::Glob::SuffixEntryMatch') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Dir::Glob::Match'))

  klass.define_method('__class_init__')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
    method.define_argument('path')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('nxt')
    method.define_argument('flags')
    method.define_argument('glob')
    method.define_argument('suffixes')
  end
end

##
# Constant: Dir::RewindKind
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::RewindKind') do |klass|
end

##
# Constant: Dir::SortedElement
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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
# Constant: Dir::TellKind
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Dir::TellKind') do |klass|
end