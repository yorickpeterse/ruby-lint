# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('DRb') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('config')

  klass.define_method('current_server')

  klass.define_method('fetch_server') do |method|
    method.define_argument('uri')
  end

  klass.define_method('front')

  klass.define_method('here?') do |method|
    method.define_argument('uri')
  end

  klass.define_method('initialize')

  klass.define_method('install_acl') do |method|
    method.define_argument('acl')
  end

  klass.define_method('install_id_conv') do |method|
    method.define_argument('idconv')
  end

  klass.define_method('mutex')

  klass.define_method('primary_server')

  klass.define_method('primary_server=')

  klass.define_method('regist_server') do |method|
    method.define_argument('server')
  end

  klass.define_method('remove_server') do |method|
    method.define_argument('server')
  end

  klass.define_method('start_service') do |method|
    method.define_optional_argument('uri')
    method.define_optional_argument('front')
    method.define_optional_argument('config')
  end

  klass.define_method('stop_service')

  klass.define_method('thread')

  klass.define_method('to_id') do |method|
    method.define_argument('obj')
  end

  klass.define_method('to_obj') do |method|
    method.define_argument('ref')
  end

  klass.define_method('uri')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'DRb').deep_freeze
