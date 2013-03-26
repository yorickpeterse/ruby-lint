##
# Constant: FileTest
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('FileTest') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('blockdev?') do |method|
    method.define_argument('path')
  end

  klass.define_method('chardev?') do |method|
    method.define_argument('path')
  end

  klass.define_method('directory?') do |method|
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

  klass.define_method('file?') do |method|
    method.define_argument('path')
  end

  klass.define_method('grpowned?') do |method|
    method.define_argument('path')
  end

  klass.define_method('identical?') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('owned?') do |method|
    method.define_argument('path')
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

  klass.define_method('setgid?') do |method|
    method.define_argument('path')
  end

  klass.define_method('setuid?') do |method|
    method.define_argument('path')
  end

  klass.define_method('size') do |method|
    method.define_argument('path')
  end

  klass.define_method('size?') do |method|
    method.define_argument('path')
  end

  klass.define_method('socket?') do |method|
    method.define_argument('path')
  end

  klass.define_method('sticky?') do |method|
    method.define_argument('path')
  end

  klass.define_method('symlink?') do |method|
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
end
