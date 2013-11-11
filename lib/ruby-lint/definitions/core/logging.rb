# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Logging') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize')

  klass.define_method('log_close')

  klass.define_method('log_open')

  klass.define_method('logfile') do |method|
    method.define_argument('file')
  end

  klass.define_method('message') do |method|
    method.define_rest_argument('s')
  end

  klass.define_method('open')

  klass.define_method('postpone')

  klass.define_method('quiet')

  klass.define_method('quiet=')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Logging').deep_freeze
