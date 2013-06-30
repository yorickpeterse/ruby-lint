##
# Constant: Continuation
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Continuation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))
end