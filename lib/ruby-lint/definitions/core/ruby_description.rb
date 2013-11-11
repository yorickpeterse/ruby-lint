##
# Constant: RUBY_DESCRIPTION
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('RUBY_DESCRIPTION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('String'))
  klass.instance!
end

RubyLint::GlobalScope.definitions.lookup(:const, 'RUBY_DESCRIPTION').deep_freeze
