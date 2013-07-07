##
# Constant: Marshal
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('dump') do |method|
    method.define_argument('obj')
    method.define_optional_argument('an_io')
    method.define_optional_argument('limit')
  end

  klass.define_method('load') do |method|
    method.define_argument('obj')
    method.define_optional_argument('prc')
  end

  klass.define_method('restore') do |method|
    method.define_argument('obj')
    method.define_optional_argument('prc')
  end
end

##
# Constant: Marshal::IOState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::IOState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Marshal::State'))

  klass.define_method('__class_init__')

  klass.define_instance_method('consume') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('consume_byte')
end

##
# Constant: Marshal::MAJOR_VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::MAJOR_VERSION') do |klass|
end

##
# Constant: Marshal::MINOR_VERSION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::MINOR_VERSION') do |klass|
end

##
# Constant: Marshal::State
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::State') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('add_object') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('add_symlink') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('call') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('const_lookup') do |method|
    method.define_argument('name')
    method.define_optional_argument('type')
  end

  klass.define_instance_method('construct') do |method|
    method.define_optional_argument('ivar_index')
    method.define_optional_argument('call_proc')
  end

  klass.define_instance_method('construct_array')

  klass.define_instance_method('construct_bignum')

  klass.define_instance_method('construct_class')

  klass.define_instance_method('construct_data')

  klass.define_instance_method('construct_float')

  klass.define_instance_method('construct_hash')

  klass.define_instance_method('construct_hash_def')

  klass.define_instance_method('construct_integer')

  klass.define_instance_method('construct_module')

  klass.define_instance_method('construct_object')

  klass.define_instance_method('construct_old_module')

  klass.define_instance_method('construct_regexp')

  klass.define_instance_method('construct_string')

  klass.define_instance_method('construct_struct')

  klass.define_instance_method('construct_symbol')

  klass.define_instance_method('construct_user_defined') do |method|
    method.define_argument('ivar_index')
  end

  klass.define_instance_method('construct_user_marshal')

  klass.define_instance_method('extend_object') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('find_link') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('find_symlink') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('get_byte_sequence')

  klass.define_instance_method('get_symbol')

  klass.define_instance_method('get_user_class')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('stream')
    method.define_argument('depth')
    method.define_argument('proc')
  end

  klass.define_instance_method('prepare_ivar') do |method|
    method.define_argument('ivar')
  end

  klass.define_instance_method('serializable_instance_variables') do |method|
    method.define_argument('obj')
    method.define_argument('exclude_ivars')
  end

  klass.define_instance_method('serialize') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('serialize_bignum') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('serialize_encoding') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('serialize_encoding?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('serialize_extended_object') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('serialize_fixnum') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('serialize_instance_variables_prefix') do |method|
    method.define_argument('obj')
    method.define_optional_argument('exclude_ivars')
  end

  klass.define_instance_method('serialize_instance_variables_suffix') do |method|
    method.define_argument('obj')
    method.define_optional_argument('force')
    method.define_optional_argument('strip_ivars')
    method.define_optional_argument('exclude_ivars')
  end

  klass.define_instance_method('serialize_integer') do |method|
    method.define_argument('n')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('serialize_string') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('serialize_symbol') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('serialize_user_class') do |method|
    method.define_argument('obj')
    method.define_argument('cls')
  end

  klass.define_instance_method('serialize_user_defined') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('serialize_user_marshal') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('set_instance_variables') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('set_object_encoding') do |method|
    method.define_argument('obj')
    method.define_argument('enc')
  end

  klass.define_instance_method('store_unique_object') do |method|
    method.define_argument('obj')
  end
end

##
# Constant: Marshal::StringState
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::StringState') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Marshal::State'))

  klass.define_method('__class_init__')

  klass.define_instance_method('consume') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('consume_byte')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('stream')
    method.define_argument('depth')
    method.define_argument('prc')
  end
end

##
# Constant: Marshal::TYPE_ARRAY
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_ARRAY') do |klass|
end

##
# Constant: Marshal::TYPE_BIGNUM
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_BIGNUM') do |klass|
end

##
# Constant: Marshal::TYPE_CLASS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_CLASS') do |klass|
end

##
# Constant: Marshal::TYPE_DATA
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_DATA') do |klass|
end

##
# Constant: Marshal::TYPE_EXTENDED
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_EXTENDED') do |klass|
end

##
# Constant: Marshal::TYPE_FALSE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_FALSE') do |klass|
end

##
# Constant: Marshal::TYPE_FIXNUM
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_FIXNUM') do |klass|
end

##
# Constant: Marshal::TYPE_FLOAT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_FLOAT') do |klass|
end

##
# Constant: Marshal::TYPE_HASH
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_HASH') do |klass|
end

##
# Constant: Marshal::TYPE_HASH_DEF
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_HASH_DEF') do |klass|
end

##
# Constant: Marshal::TYPE_IVAR
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_IVAR') do |klass|
end

##
# Constant: Marshal::TYPE_LINK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_LINK') do |klass|
end

##
# Constant: Marshal::TYPE_MODULE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_MODULE') do |klass|
end

##
# Constant: Marshal::TYPE_MODULE_OLD
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_MODULE_OLD') do |klass|
end

##
# Constant: Marshal::TYPE_NIL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_NIL') do |klass|
end

##
# Constant: Marshal::TYPE_OBJECT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_OBJECT') do |klass|
end

##
# Constant: Marshal::TYPE_REGEXP
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_REGEXP') do |klass|
end

##
# Constant: Marshal::TYPE_STRING
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_STRING') do |klass|
end

##
# Constant: Marshal::TYPE_STRUCT
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_STRUCT') do |klass|
end

##
# Constant: Marshal::TYPE_SYMBOL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_SYMBOL') do |klass|
end

##
# Constant: Marshal::TYPE_SYMLINK
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_SYMLINK') do |klass|
end

##
# Constant: Marshal::TYPE_TRUE
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_TRUE') do |klass|
end

##
# Constant: Marshal::TYPE_UCLASS
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_UCLASS') do |klass|
end

##
# Constant: Marshal::TYPE_USERDEF
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_USERDEF') do |klass|
end

##
# Constant: Marshal::TYPE_USRMARSHAL
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::TYPE_USRMARSHAL') do |klass|
end

##
# Constant: Marshal::VERSION_STRING
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Marshal::VERSION_STRING') do |klass|
end