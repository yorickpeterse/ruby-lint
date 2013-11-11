# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('GetoptLong') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('each')

  klass.define_instance_method('each_option')

  klass.define_instance_method('error')

  klass.define_instance_method('error?')

  klass.define_instance_method('error_message')

  klass.define_instance_method('get')

  klass.define_instance_method('get_option')

  klass.define_instance_method('ordering')

  klass.define_instance_method('ordering=') do |method|
    method.define_argument('ordering')
  end

  klass.define_instance_method('quiet')

  klass.define_instance_method('quiet=')

  klass.define_instance_method('quiet?')

  klass.define_instance_method('set_error') do |method|
    method.define_argument('type')
    method.define_argument('message')
  end

  klass.define_instance_method('set_options') do |method|
    method.define_rest_argument('arguments')
  end

  klass.define_instance_method('terminate')

  klass.define_instance_method('terminated?')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'GetoptLong').deep_freeze
