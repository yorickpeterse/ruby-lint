##
# Constant: Dir
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Dir') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

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
