##
# Constant: ARGV
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ARGV') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Array'))
  klass.instance!
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ARGV').deep_freeze
