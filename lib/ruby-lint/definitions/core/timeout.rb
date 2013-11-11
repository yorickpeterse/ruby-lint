# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Timeout') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('add_timeout') do |method|
    method.define_argument('time')
    method.define_argument('exc')
  end

  klass.define_method('initialize')

  klass.define_method('timeout') do |method|
    method.define_argument('sec')
    method.define_optional_argument('exception')
  end

  klass.define_method('watch_channel')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Timeout').deep_freeze
