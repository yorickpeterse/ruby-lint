##
# Constant: Etc
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Etc') do |klass|

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

##
# Constant: Etc::FFI
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Etc::FFI') do |klass|

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
# Constant: Etc::Group
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Etc::Group') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')

  klass.define_instance_method('gid')

  klass.define_instance_method('mem')

  klass.define_instance_method('name')

  klass.define_instance_method('passwd')
end

##
# Constant: Etc::Passwd
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Etc::Passwd') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')

  klass.define_instance_method('dir')

  klass.define_instance_method('gecos')

  klass.define_instance_method('gid')

  klass.define_instance_method('name')

  klass.define_instance_method('passwd')

  klass.define_instance_method('shell')

  klass.define_instance_method('uid')
end