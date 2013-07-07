##
# Constant: Struct
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_specialize') do |method|
    method.define_argument('attrs')
  end

  klass.define_method('length')

  klass.define_method('make_struct') do |method|
    method.define_argument('name')
    method.define_argument('attrs')
  end

  klass.define_method('members')

  klass.define_method('new') do |method|
    method.define_argument('klass_name')
    method.define_rest_argument('attrs')
    method.define_block_argument('block')
  end

  klass.define_method('subclass_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('var')
    method.define_argument('obj')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_pair')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('inspect')

  klass.define_instance_method('instance_variables')

  klass.define_instance_method('length')

  klass.define_instance_method('members')

  klass.define_instance_method('select') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Struct::Group
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Group') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct'))

  klass.define_method('__class_init__')

  klass.define_instance_method('gid')

  klass.define_instance_method('mem')

  klass.define_instance_method('name')

  klass.define_instance_method('passwd')
end

##
# Constant: Struct::Group::FFI
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Group::FFI') do |klass|

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
# Constant: Struct::Group::InlineArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Group::InlineArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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
# Constant: Struct::Group::InlineCharArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Group::InlineCharArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct::InlineArray'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_str')
end

##
# Constant: Struct::Passwd
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Passwd') do |klass|
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

##
# Constant: Struct::Passwd::InlineArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Passwd::InlineArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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
# Constant: Struct::Passwd::InlineCharArray
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Passwd::InlineCharArray') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rubinius::FFI::Struct::InlineArray'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_str')
end

##
# Constant: Struct::SortedElement
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::SortedElement') do |klass|
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
# Constant: Struct::Tms
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Tms') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Struct'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('__class_init__')

  klass.define_method('new') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cstime')

  klass.define_instance_method('cstime=')

  klass.define_instance_method('cutime')

  klass.define_instance_method('cutime=')

  klass.define_instance_method('stime')

  klass.define_instance_method('stime=')

  klass.define_instance_method('tstime')

  klass.define_instance_method('tstime=')

  klass.define_instance_method('tutime')

  klass.define_instance_method('tutime=')

  klass.define_instance_method('utime')

  klass.define_instance_method('utime=')
end

##
# Constant: Struct::Tms::STRUCT_ATTRS
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Struct::Tms::STRUCT_ATTRS') do |klass|
end