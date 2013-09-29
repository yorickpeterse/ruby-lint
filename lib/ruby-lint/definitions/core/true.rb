##
# Constant: TRUE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('TRUE') do |klass|
end

RubyLint::GlobalScope.definitions.lookup(:const, 'TRUE').deep_freeze