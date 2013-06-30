##
# Constant: KeyError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('KeyError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('IndexError'))
end