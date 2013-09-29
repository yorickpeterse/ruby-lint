##
# Constant: Continuation
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Continuation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Continuation').deep_freeze