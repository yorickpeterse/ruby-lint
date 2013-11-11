# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Base64') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('decode64') do |method|
    method.define_argument('str')
  end

  klass.define_method('encode64') do |method|
    method.define_argument('bin')
  end

  klass.define_method('initialize')

  klass.define_method('strict_decode64') do |method|
    method.define_argument('str')
  end

  klass.define_method('strict_encode64') do |method|
    method.define_argument('bin')
  end

  klass.define_method('urlsafe_decode64') do |method|
    method.define_argument('str')
  end

  klass.define_method('urlsafe_encode64') do |method|
    method.define_argument('bin')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Base64').deep_freeze
