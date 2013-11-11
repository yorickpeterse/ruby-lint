# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('URI') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('decode') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_method('decode_www_form') do |method|
    method.define_argument('str')
    method.define_optional_argument('enc')
  end

  klass.define_method('decode_www_form_component') do |method|
    method.define_argument('str')
    method.define_optional_argument('enc')
  end

  klass.define_method('encode') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_method('encode_www_form') do |method|
    method.define_argument('enum')
  end

  klass.define_method('encode_www_form_component') do |method|
    method.define_argument('str')
  end

  klass.define_method('escape') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_method('extract') do |method|
    method.define_argument('str')
    method.define_optional_argument('schemes')
    method.define_block_argument('block')
  end

  klass.define_method('initialize')

  klass.define_method('join') do |method|
    method.define_rest_argument('str')
  end

  klass.define_method('parse') do |method|
    method.define_argument('uri')
  end

  klass.define_method('regexp') do |method|
    method.define_optional_argument('schemes')
  end

  klass.define_method('scheme_list')

  klass.define_method('split') do |method|
    method.define_argument('uri')
  end

  klass.define_method('unescape') do |method|
    method.define_rest_argument('arg')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'URI').deep_freeze
