# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:10:54 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('CGI') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('accept_charset')

  klass.define_method('accept_charset=') do |method|
    method.define_argument('accept_charset')
  end

  klass.define_method('escape') do |method|
    method.define_argument('string')
  end

  klass.define_method('escapeElement') do |method|
    method.define_argument('string')
    method.define_rest_argument('elements')
  end

  klass.define_method('escapeHTML') do |method|
    method.define_argument('string')
  end

  klass.define_method('escape_element') do |method|
    method.define_argument('str')
  end

  klass.define_method('escape_html') do |method|
    method.define_argument('str')
  end

  klass.define_method('parse') do |method|
    method.define_argument('query')
  end

  klass.define_method('pretty') do |method|
    method.define_argument('string')
    method.define_optional_argument('shift')
  end

  klass.define_method('rfc1123_date') do |method|
    method.define_argument('time')
  end

  klass.define_method('unescape') do |method|
    method.define_argument('string')
    method.define_optional_argument('encoding')
  end

  klass.define_method('unescapeElement') do |method|
    method.define_argument('string')
    method.define_rest_argument('elements')
  end

  klass.define_method('unescapeHTML') do |method|
    method.define_argument('string')
  end

  klass.define_method('unescape_element') do |method|
    method.define_argument('str')
  end

  klass.define_method('unescape_html') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('accept_charset')

  klass.define_instance_method('header') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('http_header') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('nph?')

  klass.define_instance_method('out') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('print') do |method|
    method.define_rest_argument('options')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'CGI').deep_freeze
