# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('OpenSSL') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('Digest') do |method|
    method.define_argument('name')
  end

  klass.define_method('debug')

  klass.define_method('debug=')

  klass.define_method('errors')

  klass.define_method('fips_mode=')

  klass.define_method('initialize')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'OpenSSL').deep_freeze
