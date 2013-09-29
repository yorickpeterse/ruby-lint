##
# Constant: NotImplementedError
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('NotImplementedError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ScriptError'))
end

RubyLint::GlobalScope.definitions.lookup(:const, 'NotImplementedError').deep_freeze