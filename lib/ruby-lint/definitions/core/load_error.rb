##
# Constant: LoadError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('LoadError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ScriptError'))

  klass.define_method('__class_init__')
end

##
# Constant: LoadError::InvalidExtensionError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('LoadError::InvalidExtensionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('LoadError'))
end

##
# Constant: LoadError::MRIExtensionError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('LoadError::MRIExtensionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('LoadError::InvalidExtensionError'))
end