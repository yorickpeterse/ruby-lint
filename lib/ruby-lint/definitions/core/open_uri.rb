# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('OpenURI') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('check_options') do |method|
    method.define_argument('options')
  end

  klass.define_method('initialize')

  klass.define_method('open_http') do |method|
    method.define_argument('buf')
    method.define_argument('target')
    method.define_argument('proxy')
    method.define_argument('options')
  end

  klass.define_method('open_loop') do |method|
    method.define_argument('uri')
    method.define_argument('options')
  end

  klass.define_method('open_uri') do |method|
    method.define_argument('name')
    method.define_rest_argument('rest')
  end

  klass.define_method('redirectable?') do |method|
    method.define_argument('uri1')
    method.define_argument('uri2')
  end

  klass.define_method('scan_open_optional_arguments') do |method|
    method.define_rest_argument('rest')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'OpenURI').deep_freeze
