##
# Constant: Etc
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Etc') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('endgrent')

  klass.define_method('endpwent')

  klass.define_method('getgrent')

  klass.define_method('getgrgid') do |method|
    method.define_optional_argument('gid')
  end

  klass.define_method('getgrnam') do |method|
    method.define_argument('name')
  end

  klass.define_method('getlogin')

  klass.define_method('getpwent')

  klass.define_method('getpwnam') do |method|
    method.define_argument('name')
  end

  klass.define_method('getpwuid') do |method|
    method.define_optional_argument('uid')
  end

  klass.define_method('group')

  klass.define_method('passwd')

  klass.define_method('setgrent')

  klass.define_method('setpwent')
end
