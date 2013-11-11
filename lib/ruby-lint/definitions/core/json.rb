# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('JSON') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('object')
    method.define_optional_argument('opts')
  end

  klass.define_method('const_defined_in?') do |method|
    method.define_argument('modul')
    method.define_argument('constant')
  end

  klass.define_method('create_id')

  klass.define_method('create_id=')

  klass.define_method('deep_const_get') do |method|
    method.define_argument('path')
  end

  klass.define_method('dump') do |method|
    method.define_argument('obj')
    method.define_optional_argument('anIO')
    method.define_optional_argument('limit')
  end

  klass.define_method('dump_default_options')

  klass.define_method('dump_default_options=')

  klass.define_method('fast_generate') do |method|
    method.define_argument('obj')
    method.define_optional_argument('opts')
  end

  klass.define_method('fast_unparse') do |method|
    method.define_argument('obj')
    method.define_optional_argument('opts')
  end

  klass.define_method('generate') do |method|
    method.define_argument('obj')
    method.define_optional_argument('opts')
  end

  klass.define_method('generator')

  klass.define_method('generator=') do |method|
    method.define_argument('generator')
  end

  klass.define_method('iconv') do |method|
    method.define_argument('to')
    method.define_argument('from')
    method.define_argument('string')
  end

  klass.define_method('initialize')

  klass.define_method('load') do |method|
    method.define_argument('source')
    method.define_optional_argument('proc')
    method.define_optional_argument('options')
  end

  klass.define_method('load_default_options')

  klass.define_method('load_default_options=')

  klass.define_method('parse') do |method|
    method.define_argument('source')
    method.define_optional_argument('opts')
  end

  klass.define_method('parse!') do |method|
    method.define_argument('source')
    method.define_optional_argument('opts')
  end

  klass.define_method('parser')

  klass.define_method('parser=') do |method|
    method.define_argument('parser')
  end

  klass.define_method('pretty_generate') do |method|
    method.define_argument('obj')
    method.define_optional_argument('opts')
  end

  klass.define_method('pretty_unparse') do |method|
    method.define_argument('obj')
    method.define_optional_argument('opts')
  end

  klass.define_method('recurse_proc') do |method|
    method.define_argument('result')
    method.define_block_argument('proc')
  end

  klass.define_method('restore') do |method|
    method.define_argument('source')
    method.define_optional_argument('proc')
    method.define_optional_argument('options')
  end

  klass.define_method('state')

  klass.define_method('state=')

  klass.define_method('swap!') do |method|
    method.define_argument('string')
  end

  klass.define_method('unparse') do |method|
    method.define_argument('obj')
    method.define_optional_argument('opts')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'JSON').deep_freeze
