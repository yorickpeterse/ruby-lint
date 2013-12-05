##
# Constant: ENV
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ENV') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Hash'))

  klass.instance!
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ENV').deep_freeze
