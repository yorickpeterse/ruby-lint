##
# Constant: UnsupportedLibraryError
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('UnsupportedLibraryError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('StandardError'))
end