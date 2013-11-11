# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('SecureRandom') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('base64') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('hex') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('initialize')

  klass.define_method('lastWin32ErrorMessage')

  klass.define_method('random_bytes') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('random_number') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('urlsafe_base64') do |method|
    method.define_optional_argument('n')
    method.define_optional_argument('padding')
  end

  klass.define_method('uuid')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'SecureRandom').deep_freeze
