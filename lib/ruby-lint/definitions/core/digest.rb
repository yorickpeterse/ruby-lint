##
# Constant: Digest
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('const_missing') do |method|
    method.define_argument('name')
  end

  klass.define_method('hexencode')
end

##
# Constant: Digest::Base
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Digest::Class'))

  klass.define_method('allocate')

  klass.define_instance_method('<<')

  klass.define_instance_method('block_length')

  klass.define_instance_method('digest_length')

  klass.define_instance_method('initialize_copy')

  klass.define_instance_method('reset')

  klass.define_instance_method('update')
end

##
# Constant: Digest::Class
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::Class') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('base64digest') do |method|
    method.define_argument('str')
    method.define_rest_argument('args')
  end

  klass.define_method('digest')

  klass.define_method('file') do |method|
    method.define_argument('name')
  end

  klass.define_method('hexdigest')
end

##
# Constant: Digest::Instance
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::Instance') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('<<')

  klass.define_instance_method('==')

  klass.define_instance_method('base64digest') do |method|
    method.define_optional_argument('str')
  end

  klass.define_instance_method('base64digest!')

  klass.define_instance_method('block_length')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest!')

  klass.define_instance_method('digest_length')

  klass.define_instance_method('file') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('hexdigest')

  klass.define_instance_method('hexdigest!')

  klass.define_instance_method('inspect')

  klass.define_instance_method('length')

  klass.define_instance_method('new')

  klass.define_instance_method('reset')

  klass.define_instance_method('size')

  klass.define_instance_method('to_s')

  klass.define_instance_method('update')
end

##
# Constant: Digest::SHA2
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::SHA2') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Digest::Class'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('block_length')

  klass.define_instance_method('digest_length')

  klass.define_instance_method('inspect')

  klass.define_instance_method('reset')

  klass.define_instance_method('update') do |method|
    method.define_argument('str')
  end
end

##
# Constant: Digest::SHA256
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::SHA256') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Digest::Base'))
end

##
# Constant: Digest::SHA384
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::SHA384') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Digest::Base'))
end

##
# Constant: Digest::SHA512
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Digest::SHA512') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Digest::Base'))
end