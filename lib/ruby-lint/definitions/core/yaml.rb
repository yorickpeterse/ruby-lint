# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-08-21 09:43:25 +0200
# Platform: ruby 2.0.0

RubyLint::GlobalScope.definitions.define_constant('YAML') do |klass|
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

  klass.define_method('domain_types=') do |method|
    method.define_argument('')
  end

  klass.define_method('dump') do |method|
    method.define_argument('o')
    method.define_optional_argument('io')
    method.define_optional_argument('options')
  end

  klass.define_method('dump_stream') do |method|
    method.define_rest_argument('objects')
  end

  klass.define_method('dump_tags')

  klass.define_method('dump_tags=') do |method|
    method.define_argument('')
  end

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

  klass.define_method('load_tags=') do |method|
    method.define_argument('')
  end

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

  klass.define_method('tagurize') do |method|
    method.define_argument('thing')
  end

  klass.define_method('to_json') do |method|
    method.define_argument('o')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::BadAlias') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('YAML::Exception'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('backtrace')

  klass.define_instance_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Coder') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('k')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('k')
    method.define_argument('v')
  end

  klass.define_instance_method('add') do |method|
    method.define_argument('k')
    method.define_argument('v')
  end

  klass.define_instance_method('implicit')

  klass.define_instance_method('implicit=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('map') do |method|
    method.define_optional_argument('tag')
    method.define_optional_argument('style')
  end

  klass.define_instance_method('map=') do |method|
    method.define_argument('map')
  end

  klass.define_instance_method('object')

  klass.define_instance_method('object=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('represent_map') do |method|
    method.define_argument('tag')
    method.define_argument('map')
  end

  klass.define_instance_method('represent_object') do |method|
    method.define_argument('tag')
    method.define_argument('obj')
  end

  klass.define_instance_method('represent_scalar') do |method|
    method.define_argument('tag')
    method.define_argument('value')
  end

  klass.define_instance_method('represent_seq') do |method|
    method.define_argument('tag')
    method.define_argument('list')
  end

  klass.define_instance_method('scalar') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('scalar=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('seq')

  klass.define_instance_method('seq=') do |method|
    method.define_argument('list')
  end

  klass.define_instance_method('style')

  klass.define_instance_method('style=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('tag')

  klass.define_instance_method('tag=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('type')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::DEPRECATED') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('%') do |method|
    method.define_argument('')
  end

  klass.define_method('*') do |method|
    method.define_argument('')
  end

  klass.define_method('+') do |method|
    method.define_argument('')
  end

  klass.define_method('<<') do |method|
    method.define_argument('')
  end

  klass.define_method('[]') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('[]=') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ascii_only?')

  klass.define_method('b')

  klass.define_method('between?') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('bytes')

  klass.define_method('bytesize')

  klass.define_method('byteslice') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('capitalize')

  klass.define_method('capitalize!')

  klass.define_method('casecmp') do |method|
    method.define_argument('')
  end

  klass.define_method('center') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chars')

  klass.define_method('chomp') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chomp!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chop')

  klass.define_method('chop!')

  klass.define_method('chr')

  klass.define_method('clear')

  klass.define_method('codepoints')

  klass.define_method('concat') do |method|
    method.define_argument('')
  end

  klass.define_method('count') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('crypt') do |method|
    method.define_argument('')
  end

  klass.define_method('delete') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('delete!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('downcase')

  klass.define_method('downcase!')

  klass.define_method('dump')

  klass.define_method('each_byte')

  klass.define_method('each_char')

  klass.define_method('each_codepoint')

  klass.define_method('each_line') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('empty?')

  klass.define_method('encode') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('encode!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('encoding')

  klass.define_method('end_with?') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_method('force_encoding') do |method|
    method.define_argument('')
  end

  klass.define_method('getbyte') do |method|
    method.define_argument('')
  end

  klass.define_method('gsub') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('gsub!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('hex')

  klass.define_method('index') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('insert') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('intern')

  klass.define_method('length')

  klass.define_method('lines') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ljust') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('lstrip')

  klass.define_method('lstrip!')

  klass.define_method('match') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('next')

  klass.define_method('next!')

  klass.define_method('oct')

  klass.define_method('ord')

  klass.define_method('partition') do |method|
    method.define_argument('')
  end

  klass.define_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_method('pathmap_explode')

  klass.define_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_method('prepend') do |method|
    method.define_argument('')
  end

  klass.define_method('replace') do |method|
    method.define_argument('')
  end

  klass.define_method('reverse')

  klass.define_method('reverse!')

  klass.define_method('rindex') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('rjust') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('rpartition') do |method|
    method.define_argument('')
  end

  klass.define_method('rstrip')

  klass.define_method('rstrip!')

  klass.define_method('scan') do |method|
    method.define_argument('')
  end

  klass.define_method('setbyte') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('shellescape')

  klass.define_method('shellsplit')

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('slice!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('snake_case')

  klass.define_method('split') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('squeeze') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('squeeze!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('start_with?') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('strip')

  klass.define_method('strip!')

  klass.define_method('sub') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('sub!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('succ')

  klass.define_method('succ!')

  klass.define_method('sum') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('swapcase')

  klass.define_method('swapcase!')

  klass.define_method('to_c')

  klass.define_method('to_f')

  klass.define_method('to_i') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('to_r')

  klass.define_method('to_str')

  klass.define_method('to_sym')

  klass.define_method('tr') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr!') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr_s') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr_s!') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('unpack') do |method|
    method.define_argument('')
  end

  klass.define_method('upcase')

  klass.define_method('upcase!')

  klass.define_method('upto') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::DeprecatedMethods') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('taguri')

  klass.define_instance_method('taguri=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('to_yaml_style')

  klass.define_instance_method('to_yaml_style=') do |method|
    method.define_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::ENGINE') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('syck?')

  klass.define_method('yamler')

  klass.define_method('yamler=') do |method|
    method.define_argument('engine')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Emitter') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('YAML::Handler'))

  klass.define_instance_method('alias') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('canonical')

  klass.define_instance_method('canonical=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('empty')

  klass.define_instance_method('end_document') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('end_mapping')

  klass.define_instance_method('end_sequence')

  klass.define_instance_method('end_stream')

  klass.define_instance_method('indentation')

  klass.define_instance_method('indentation=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('line_width')

  klass.define_instance_method('line_width=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('scalar') do |method|
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('start_mapping') do |method|
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('start_sequence') do |method|
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('start_stream') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('streaming?')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::EngineManager') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('syck?')

  klass.define_instance_method('yamler')

  klass.define_instance_method('yamler=') do |method|
    method.define_argument('engine')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Error') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('RuntimeError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('backtrace')

  klass.define_instance_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Exception') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('RuntimeError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('backtrace')

  klass.define_instance_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Handler') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('alias') do |method|
    method.define_argument('anchor')
  end

  klass.define_instance_method('empty')

  klass.define_instance_method('end_document') do |method|
    method.define_argument('implicit')
  end

  klass.define_instance_method('end_mapping')

  klass.define_instance_method('end_sequence')

  klass.define_instance_method('end_stream')

  klass.define_instance_method('scalar') do |method|
    method.define_argument('value')
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('plain')
    method.define_argument('quoted')
    method.define_argument('style')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('version')
    method.define_argument('tag_directives')
    method.define_argument('implicit')
  end

  klass.define_instance_method('start_mapping') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_sequence') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_stream') do |method|
    method.define_argument('encoding')
  end

  klass.define_instance_method('streaming?')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Handlers') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))
end

RubyLint::GlobalScope.definitions.define_constant('YAML::JSON') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))
end

RubyLint::GlobalScope.definitions.define_constant('YAML::LIBYAML_VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('%') do |method|
    method.define_argument('')
  end

  klass.define_method('*') do |method|
    method.define_argument('')
  end

  klass.define_method('+') do |method|
    method.define_argument('')
  end

  klass.define_method('<<') do |method|
    method.define_argument('')
  end

  klass.define_method('[]') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('[]=') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ascii_only?')

  klass.define_method('b')

  klass.define_method('between?') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('bytes')

  klass.define_method('bytesize')

  klass.define_method('byteslice') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('capitalize')

  klass.define_method('capitalize!')

  klass.define_method('casecmp') do |method|
    method.define_argument('')
  end

  klass.define_method('center') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chars')

  klass.define_method('chomp') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chomp!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chop')

  klass.define_method('chop!')

  klass.define_method('chr')

  klass.define_method('clear')

  klass.define_method('codepoints')

  klass.define_method('concat') do |method|
    method.define_argument('')
  end

  klass.define_method('count') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('crypt') do |method|
    method.define_argument('')
  end

  klass.define_method('delete') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('delete!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('downcase')

  klass.define_method('downcase!')

  klass.define_method('dump')

  klass.define_method('each_byte')

  klass.define_method('each_char')

  klass.define_method('each_codepoint')

  klass.define_method('each_line') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('empty?')

  klass.define_method('encode') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('encode!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('encoding')

  klass.define_method('end_with?') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_method('force_encoding') do |method|
    method.define_argument('')
  end

  klass.define_method('getbyte') do |method|
    method.define_argument('')
  end

  klass.define_method('gsub') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('gsub!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('hex')

  klass.define_method('index') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('insert') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('intern')

  klass.define_method('length')

  klass.define_method('lines') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ljust') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('lstrip')

  klass.define_method('lstrip!')

  klass.define_method('match') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('next')

  klass.define_method('next!')

  klass.define_method('oct')

  klass.define_method('ord')

  klass.define_method('partition') do |method|
    method.define_argument('')
  end

  klass.define_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_method('pathmap_explode')

  klass.define_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_method('prepend') do |method|
    method.define_argument('')
  end

  klass.define_method('replace') do |method|
    method.define_argument('')
  end

  klass.define_method('reverse')

  klass.define_method('reverse!')

  klass.define_method('rindex') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('rjust') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('rpartition') do |method|
    method.define_argument('')
  end

  klass.define_method('rstrip')

  klass.define_method('rstrip!')

  klass.define_method('scan') do |method|
    method.define_argument('')
  end

  klass.define_method('setbyte') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('shellescape')

  klass.define_method('shellsplit')

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('slice!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('snake_case')

  klass.define_method('split') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('squeeze') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('squeeze!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('start_with?') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('strip')

  klass.define_method('strip!')

  klass.define_method('sub') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('sub!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('succ')

  klass.define_method('succ!')

  klass.define_method('sum') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('swapcase')

  klass.define_method('swapcase!')

  klass.define_method('to_c')

  klass.define_method('to_f')

  klass.define_method('to_i') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('to_r')

  klass.define_method('to_str')

  klass.define_method('to_sym')

  klass.define_method('tr') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr!') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr_s') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr_s!') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('unpack') do |method|
    method.define_argument('')
  end

  klass.define_method('upcase')

  klass.define_method('upcase!')

  klass.define_method('upto') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Nodes') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Omap') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Hash'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('assoc') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('compare_by_identity')

  klass.define_instance_method('compare_by_identity?')

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('default') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('default=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('default_proc')

  klass.define_instance_method('default_proc=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('delete_if')

  klass.define_instance_method('detect') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('drop_while')

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('each_key')

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('each_value')

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('find_all')

  klass.define_instance_method('find_index') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('first') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('flat_map')

  klass.define_instance_method('flatten') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('has_value?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('inject') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('invert')

  klass.define_instance_method('keep_if')

  klass.define_instance_method('key') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('lazy')

  klass.define_instance_method('length')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('rassoc') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject')

  klass.define_instance_method('reject!')

  klass.define_instance_method('replace') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('reverse_each') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('select!')

  klass.define_instance_method('shift')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('store') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('take') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Parser') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('external_encoding=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('handler')

  klass.define_instance_method('handler=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('mark')

  klass.define_instance_method('parse') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::ScalarScanner') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('parse_int') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('parse_time') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('tokenize') do |method|
    method.define_argument('string')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Set') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Hash'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('assoc') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('compare_by_identity')

  klass.define_instance_method('compare_by_identity?')

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('default') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('default=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('default_proc')

  klass.define_instance_method('default_proc=') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('delete_if')

  klass.define_instance_method('detect') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('drop_while')

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('each_key')

  klass.define_instance_method('each_pair')

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('each_value')

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('find_all')

  klass.define_instance_method('find_index') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('first') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('flat_map')

  klass.define_instance_method('flatten') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('has_value?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('inject') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('invert')

  klass.define_instance_method('keep_if')

  klass.define_instance_method('key') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('lazy')

  klass.define_instance_method('length')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('rassoc') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('rehash')

  klass.define_instance_method('reject')

  klass.define_instance_method('reject!')

  klass.define_instance_method('replace') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('reverse_each') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('select!')

  klass.define_instance_method('shift')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('store') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_instance_method('take') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('value?') do |method|
    method.define_argument('')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Stream') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('YAML::Visitors::YAMLTree'))

  klass.define_instance_method('<<') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('accept') do |method|
    method.define_argument('target')
  end

  klass.define_instance_method('finish')

  klass.define_instance_method('finished')

  klass.define_instance_method('finished?')

  klass.define_instance_method('push') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('start') do |method|
    method.define_optional_argument('encoding')
  end

  klass.define_instance_method('started')

  klass.define_instance_method('started?')

  klass.define_instance_method('tree')

  klass.define_instance_method('visit_Array') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_BigDecimal') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Class') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Complex') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Date') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_DateTime') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Exception') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_FalseClass') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Float') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Hash') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Integer') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Module') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_NilClass') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Object') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_YAML_Omap') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_YAML_Set') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Range') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Rational') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Regexp') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_String') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Struct') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Symbol') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_Time') do |method|
    method.define_argument('o')
  end

  klass.define_instance_method('visit_TrueClass') do |method|
    method.define_argument('o')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Streaming') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('start') do |method|
    method.define_optional_argument('encoding')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::SyntaxError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('YAML::Error'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('backtrace')

  klass.define_instance_method('column')

  klass.define_instance_method('context')

  klass.define_instance_method('exception') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('line')

  klass.define_instance_method('message')

  klass.define_instance_method('offset')

  klass.define_instance_method('problem')

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('YAML::TreeBuilder') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('YAML::Handler'))

  klass.define_instance_method('alias') do |method|
    method.define_argument('anchor')
  end

  klass.define_instance_method('empty')

  klass.define_instance_method('end_document') do |method|
    method.define_optional_argument('implicit_end')
  end

  klass.define_instance_method('end_mapping')

  klass.define_instance_method('end_sequence')

  klass.define_instance_method('end_stream')

  klass.define_instance_method('root')

  klass.define_instance_method('scalar') do |method|
    method.define_argument('value')
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('plain')
    method.define_argument('quoted')
    method.define_argument('style')
  end

  klass.define_instance_method('start_document') do |method|
    method.define_argument('version')
    method.define_argument('tag_directives')
    method.define_argument('implicit')
  end

  klass.define_instance_method('start_mapping') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_sequence') do |method|
    method.define_argument('anchor')
    method.define_argument('tag')
    method.define_argument('implicit')
    method.define_argument('style')
  end

  klass.define_instance_method('start_stream') do |method|
    method.define_argument('encoding')
  end

  klass.define_instance_method('streaming?')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('%') do |method|
    method.define_argument('')
  end

  klass.define_method('*') do |method|
    method.define_argument('')
  end

  klass.define_method('+') do |method|
    method.define_argument('')
  end

  klass.define_method('<<') do |method|
    method.define_argument('')
  end

  klass.define_method('[]') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('[]=') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ascii_only?')

  klass.define_method('b')

  klass.define_method('between?') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('bytes')

  klass.define_method('bytesize')

  klass.define_method('byteslice') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('capitalize')

  klass.define_method('capitalize!')

  klass.define_method('casecmp') do |method|
    method.define_argument('')
  end

  klass.define_method('center') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chars')

  klass.define_method('chomp') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chomp!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('chop')

  klass.define_method('chop!')

  klass.define_method('chr')

  klass.define_method('clear')

  klass.define_method('codepoints')

  klass.define_method('concat') do |method|
    method.define_argument('')
  end

  klass.define_method('count') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('crypt') do |method|
    method.define_argument('')
  end

  klass.define_method('delete') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('delete!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('downcase')

  klass.define_method('downcase!')

  klass.define_method('dump')

  klass.define_method('each_byte')

  klass.define_method('each_char')

  klass.define_method('each_codepoint')

  klass.define_method('each_line') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('empty?')

  klass.define_method('encode') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('encode!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('encoding')

  klass.define_method('end_with?') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_method('force_encoding') do |method|
    method.define_argument('')
  end

  klass.define_method('getbyte') do |method|
    method.define_argument('')
  end

  klass.define_method('gsub') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('gsub!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('hex')

  klass.define_method('index') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('insert') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('intern')

  klass.define_method('length')

  klass.define_method('lines') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('ljust') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('lstrip')

  klass.define_method('lstrip!')

  klass.define_method('match') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('next')

  klass.define_method('next!')

  klass.define_method('oct')

  klass.define_method('ord')

  klass.define_method('partition') do |method|
    method.define_argument('')
  end

  klass.define_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_method('pathmap_explode')

  klass.define_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_method('prepend') do |method|
    method.define_argument('')
  end

  klass.define_method('replace') do |method|
    method.define_argument('')
  end

  klass.define_method('reverse')

  klass.define_method('reverse!')

  klass.define_method('rindex') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('rjust') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('rpartition') do |method|
    method.define_argument('')
  end

  klass.define_method('rstrip')

  klass.define_method('rstrip!')

  klass.define_method('scan') do |method|
    method.define_argument('')
  end

  klass.define_method('setbyte') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('shellescape')

  klass.define_method('shellsplit')

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('slice!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('snake_case')

  klass.define_method('split') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('squeeze') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('squeeze!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('start_with?') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('strip')

  klass.define_method('strip!')

  klass.define_method('sub') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('sub!') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('succ')

  klass.define_method('succ!')

  klass.define_method('sum') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('swapcase')

  klass.define_method('swapcase!')

  klass.define_method('to_c')

  klass.define_method('to_f')

  klass.define_method('to_i') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('to_r')

  klass.define_method('to_str')

  klass.define_method('to_sym')

  klass.define_method('tr') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr!') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr_s') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('tr_s!') do |method|
    method.define_argument('')
    method.define_argument('')
  end

  klass.define_method('unpack') do |method|
    method.define_argument('')
  end

  klass.define_method('upcase')

  klass.define_method('upcase!')

  klass.define_method('upto') do |method|
    method.define_rest_argument('')
  end

  klass.define_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('YAML::Visitors') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))
end

