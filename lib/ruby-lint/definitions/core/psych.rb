# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:10:55 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Psych') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('add_builtin_type') do |method|
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_domain_type') do |method|
    method.define_argument('domain')
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_private_type') do |method|
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_ruby_type') do |method|
    method.define_argument('type_tag')
    method.define_block_argument('block')
  end

  klass.define_method('add_tag') do |method|
    method.define_argument('tag')
    method.define_argument('klass')
  end

  klass.define_method('detect_implicit') do |method|
    method.define_argument('thing')
  end

  klass.define_method('domain_types')

  klass.define_method('domain_types=')

  klass.define_method('dump') do |method|
    method.define_argument('o')
    method.define_optional_argument('io')
    method.define_optional_argument('options')
  end

  klass.define_method('dump_stream') do |method|
    method.define_rest_argument('objects')
  end

  klass.define_method('dump_tags')

  klass.define_method('dump_tags=')

  klass.define_method('initialize')

  klass.define_method('libyaml_version')

  klass.define_method('load') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
  end

  klass.define_method('load_documents') do |method|
    method.define_argument('yaml')
    method.define_block_argument('block')
  end

  klass.define_method('load_file') do |method|
    method.define_argument('filename')
  end

  klass.define_method('load_stream') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
  end

  klass.define_method('load_tags')

  klass.define_method('load_tags=')

  klass.define_method('object_maker') do |method|
    method.define_argument('klass')
    method.define_argument('hash')
  end

  klass.define_method('parse') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
  end

  klass.define_method('parse_file') do |method|
    method.define_argument('filename')
  end

  klass.define_method('parse_stream') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('filename')
    method.define_block_argument('block')
  end

  klass.define_method('parser')

  klass.define_method('quick_emit') do |method|
    method.define_argument('thing')
    method.define_optional_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_method('read_type_class') do |method|
    method.define_argument('type')
    method.define_argument('reference')
  end

  klass.define_method('remove_type') do |method|
    method.define_argument('type_tag')
  end

  klass.define_method('safe_load') do |method|
    method.define_argument('yaml')
    method.define_optional_argument('whitelist_classes')
    method.define_optional_argument('whitelist_symbols')
    method.define_optional_argument('aliases')
    method.define_optional_argument('filename')
  end

  klass.define_method('tagurize') do |method|
    method.define_argument('thing')
  end

  klass.define_method('to_json') do |method|
    method.define_argument('object')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Psych').deep_freeze
