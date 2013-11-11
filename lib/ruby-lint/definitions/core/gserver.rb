# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('GServer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('in_service?') do |method|
    method.define_argument('port')
    method.define_optional_argument('host')
  end

  klass.define_method('stop') do |method|
    method.define_argument('port')
    method.define_optional_argument('host')
  end

  klass.define_instance_method('audit')

  klass.define_instance_method('audit=')

  klass.define_instance_method('connecting') do |method|
    method.define_argument('client')
  end

  klass.define_instance_method('connections')

  klass.define_instance_method('debug')

  klass.define_instance_method('debug=')

  klass.define_instance_method('disconnecting') do |method|
    method.define_argument('clientPort')
  end

  klass.define_instance_method('error') do |method|
    method.define_argument('detail')
  end

  klass.define_instance_method('host')

  klass.define_instance_method('join')

  klass.define_instance_method('log') do |method|
    method.define_argument('msg')
  end

  klass.define_instance_method('maxConnections')

  klass.define_instance_method('port')

  klass.define_instance_method('serve') do |method|
    method.define_argument('io')
  end

  klass.define_instance_method('shutdown')

  klass.define_instance_method('start') do |method|
    method.define_optional_argument('maxConnections')
  end

  klass.define_instance_method('starting')

  klass.define_instance_method('stdlog')

  klass.define_instance_method('stdlog=')

  klass.define_instance_method('stop')

  klass.define_instance_method('stopped?')

  klass.define_instance_method('stopping')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'GServer').deep_freeze
