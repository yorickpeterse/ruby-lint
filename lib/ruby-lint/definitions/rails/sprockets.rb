# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:54:05 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('Sprockets') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('append_path') do |method|
    method.define_argument('path')
  end

  klass.define_method('bundle_processors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_method('clear_paths')

  klass.define_method('compressors')

  klass.define_method('css_compressor')

  klass.define_method('css_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_method('encoding_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_method('engine_extensions')

  klass.define_method('engines') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_method('extension_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_method('extensions')

  klass.define_method('format_extensions')

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('js_compressor')

  klass.define_method('js_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_method('mime_types') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_method('paths')

  klass.define_method('postprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_method('prepend_path') do |method|
    method.define_argument('path')
  end

  klass.define_method('preprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_method('processors') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('register_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_method('register_compressor') do |method|
    method.define_argument('mime_type')
    method.define_argument('sym')
    method.define_argument('klass')
  end

  klass.define_method('register_engine') do |method|
    method.define_argument('ext')
    method.define_argument('klass')
  end

  klass.define_method('register_mime_type') do |method|
    method.define_argument('mime_type')
    method.define_argument('ext')
  end

  klass.define_method('register_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_method('register_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_method('register_processor') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('registered_mime_types')

  klass.define_method('root')

  klass.define_method('trail')

  klass.define_method('unregister_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_method('unregister_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_method('unregister_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_method('unregister_processor') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::ArgumentError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Error'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Asset') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('from_hash') do |method|
    method.define_argument('environment')
    method.define_argument('hash')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('content_type')

  klass.define_instance_method('dependencies')

  klass.define_instance_method('dependency_fresh?') do |method|
    method.define_argument('environment')
    method.define_argument('dep')
  end

  klass.define_instance_method('dependency_paths')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_path')

  klass.define_instance_method('each')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('expand_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('fresh?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('hash')

  klass.define_instance_method('init_with') do |method|
    method.define_argument('environment')
    method.define_argument('coder')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('length')

  klass.define_instance_method('logical_path')

  klass.define_instance_method('mtime')

  klass.define_instance_method('pathname')

  klass.define_instance_method('relative_pathname')

  klass.define_instance_method('relativize_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('required_assets')

  klass.define_instance_method('stale?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')

  klass.define_instance_method('write_to') do |method|
    method.define_argument('filename')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::AssetAttributes') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('content_type')

  klass.define_instance_method('engine_extensions')

  klass.define_instance_method('engines')

  klass.define_instance_method('environment')

  klass.define_instance_method('extensions')

  klass.define_instance_method('format_extension')

  klass.define_instance_method('logical_path')

  klass.define_instance_method('pathname')

  klass.define_instance_method('processors')

  klass.define_instance_method('search_paths')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Base') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('append_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('attributes_for') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('build_asset') do |method|
    method.define_argument('logical_path')
    method.define_argument('pathname')
    method.define_argument('options')
  end

  klass.define_instance_method('bundle_processors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('cache')

  klass.define_instance_method('cache=') do |method|
    method.define_argument('cache')
  end

  klass.define_instance_method('cache_asset') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('cache_get') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('cache_key_for') do |method|
    method.define_argument('path')
    method.define_argument('options')
  end

  klass.define_instance_method('cache_set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('circular_call_protection') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('clear_paths')

  klass.define_instance_method('compressors')

  klass.define_instance_method('content_type_of') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('context_class')

  klass.define_instance_method('css_compressor')

  klass.define_instance_method('css_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('default_external_encoding')

  klass.define_instance_method('default_external_encoding=')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_class')

  klass.define_instance_method('digest_class=') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_argument('root')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_file')

  klass.define_instance_method('each_logical_path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('encoding_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('engine_extensions')

  klass.define_instance_method('engines') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('entries') do |method|
    method.define_argument('pathname')
  end

  klass.define_instance_method('expire_index!')

  klass.define_instance_method('extension_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('extensions')

  klass.define_instance_method('file_digest') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('find_asset') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('format_extensions')

  klass.define_instance_method('index')

  klass.define_instance_method('inspect')

  klass.define_instance_method('js_compressor')

  klass.define_instance_method('js_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('json_decode') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=')

  klass.define_instance_method('logical_path_for_filename') do |method|
    method.define_argument('filename')
    method.define_argument('filters')
  end

  klass.define_instance_method('matches_filter') do |method|
    method.define_argument('filters')
    method.define_argument('logical_path')
    method.define_argument('filename')
  end

  klass.define_instance_method('mime_types') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('paths')

  klass.define_instance_method('postprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('prepend_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('preprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('processors') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('register_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_compressor') do |method|
    method.define_argument('mime_type')
    method.define_argument('sym')
    method.define_argument('klass')
  end

  klass.define_instance_method('register_engine') do |method|
    method.define_argument('ext')
    method.define_argument('klass')
  end

  klass.define_instance_method('register_mime_type') do |method|
    method.define_argument('mime_type')
    method.define_argument('ext')
  end

  klass.define_instance_method('register_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_processor') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('registered_mime_types')

  klass.define_instance_method('resolve') do |method|
    method.define_argument('logical_path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('root')

  klass.define_instance_method('stat') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('trail')

  klass.define_instance_method('unregister_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_processor') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=') do |method|
    method.define_argument('version')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::BundledAsset') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Asset'))

  klass.define_method('from_hash') do |method|
    method.define_argument('environment')
    method.define_argument('hash')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('content_type')

  klass.define_instance_method('dependencies')

  klass.define_instance_method('dependency_fresh?') do |method|
    method.define_argument('environment')
    method.define_argument('dep')
  end

  klass.define_instance_method('dependency_paths')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_path')

  klass.define_instance_method('each')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('expand_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('fresh?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('init_with') do |method|
    method.define_argument('environment')
    method.define_argument('coder')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('logical_path')

  klass.define_instance_method('mtime')

  klass.define_instance_method('pathname')

  klass.define_instance_method('relative_pathname')

  klass.define_instance_method('relativize_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('required_assets')

  klass.define_instance_method('source')

  klass.define_instance_method('stale?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('write_to') do |method|
    method.define_argument('filename')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Cache') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::CharsetNormalizer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::CircularDependencyError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Error'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::ClosureCompressor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Compressing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('compressors')

  klass.define_instance_method('css_compressor')

  klass.define_instance_method('css_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('js_compressor')

  klass.define_instance_method('js_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('register_compressor') do |method|
    method.define_argument('mime_type')
    method.define_argument('sym')
    method.define_argument('klass')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::ContentTypeMismatch') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Error'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Context') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('__LINE__=')

  klass.define_instance_method('_dependency_assets')

  klass.define_instance_method('_dependency_paths')

  klass.define_instance_method('_required_paths')

  klass.define_instance_method('_stubbed_assets')

  klass.define_instance_method('asset_data_uri') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('asset_path') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('asset_requirable?') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('audio_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('content_type')

  klass.define_instance_method('depend_on') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('depend_on_asset') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('environment')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('font_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('image_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('javascript_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('logical_path')

  klass.define_instance_method('pathname')

  klass.define_instance_method('require_asset') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('resolve') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('root_path')

  klass.define_instance_method('stub_asset') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('stylesheet_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('video_path') do |method|
    method.define_argument('path')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::DirectiveProcessor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('compat?')

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('constants')

  klass.define_instance_method('context')

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('directives')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('header')

  klass.define_instance_method('included_pathnames')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('pathname')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('process_compat_directive')

  klass.define_instance_method('process_depend_on_asset_directive') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('process_depend_on_directive') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('process_directives')

  klass.define_instance_method('process_include_directive') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('process_provide_directive') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('process_require_directive') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('process_require_directory_directive') do |method|
    method.define_optional_argument('path')
  end

  klass.define_instance_method('process_require_self_directive')

  klass.define_instance_method('process_require_tree_directive') do |method|
    method.define_optional_argument('path')
  end

  klass.define_instance_method('process_source')

  klass.define_instance_method('process_stub_directive') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('processed_header')

  klass.define_instance_method('processed_source')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::EcoTemplate') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('scope')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::EjsTemplate') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('scope')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::EngineError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('sprockets_annotation')

  klass.define_instance_method('sprockets_annotation=')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Engines') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('engine_extensions')

  klass.define_instance_method('engines') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('register_engine') do |method|
    method.define_argument('ext')
    method.define_argument('klass')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Environment') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Base'))

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('append_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('attributes_for') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('build_asset') do |method|
    method.define_argument('logical_path')
    method.define_argument('pathname')
    method.define_argument('options')
  end

  klass.define_instance_method('bundle_processors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('cache')

  klass.define_instance_method('cache=') do |method|
    method.define_argument('cache')
  end

  klass.define_instance_method('cache_asset') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('cache_get') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('cache_key_for') do |method|
    method.define_argument('path')
    method.define_argument('options')
  end

  klass.define_instance_method('cache_set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('circular_call_protection') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('clear_paths')

  klass.define_instance_method('compressors')

  klass.define_instance_method('content_type_of') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('context_class')

  klass.define_instance_method('css_compressor')

  klass.define_instance_method('css_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('default_external_encoding')

  klass.define_instance_method('default_external_encoding=')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_class')

  klass.define_instance_method('digest_class=') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_argument('root')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_file')

  klass.define_instance_method('each_logical_path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('encoding_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('engine_extensions')

  klass.define_instance_method('engines') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('entries') do |method|
    method.define_argument('pathname')
  end

  klass.define_instance_method('expire_index!')

  klass.define_instance_method('extension_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('extensions')

  klass.define_instance_method('file_digest') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('find_asset') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('format_extensions')

  klass.define_instance_method('index')

  klass.define_instance_method('js_compressor')

  klass.define_instance_method('js_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('json_decode') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=')

  klass.define_instance_method('logical_path_for_filename') do |method|
    method.define_argument('filename')
    method.define_argument('filters')
  end

  klass.define_instance_method('matches_filter') do |method|
    method.define_argument('filters')
    method.define_argument('logical_path')
    method.define_argument('filename')
  end

  klass.define_instance_method('mime_types') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('paths')

  klass.define_instance_method('postprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('prepend_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('preprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('processors') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('register_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_compressor') do |method|
    method.define_argument('mime_type')
    method.define_argument('sym')
    method.define_argument('klass')
  end

  klass.define_instance_method('register_engine') do |method|
    method.define_argument('ext')
    method.define_argument('klass')
  end

  klass.define_instance_method('register_mime_type') do |method|
    method.define_argument('mime_type')
    method.define_argument('ext')
  end

  klass.define_instance_method('register_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_processor') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('registered_mime_types')

  klass.define_instance_method('resolve') do |method|
    method.define_argument('logical_path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('root')

  klass.define_instance_method('stat') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('trail')

  klass.define_instance_method('unregister_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_processor') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=') do |method|
    method.define_argument('version')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Error') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('StandardError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::FileNotFound') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Error'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('awesome_backtrace')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('backtrace?')

  klass.define_instance_method('blame_file!') do |method|
    method.define_argument('file')
  end

  klass.define_instance_method('blamed_files')

  klass.define_instance_method('capture_backtrace!') do |method|
    method.define_optional_argument('offset')
  end

  klass.define_instance_method('copy_blame!') do |method|
    method.define_argument('exc')
  end

  klass.define_instance_method('describe_blame')

  klass.define_instance_method('exception') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('header')
    method.define_optional_argument('io')
    method.define_optional_argument('color')
  end

  klass.define_instance_method('set_backtrace') do |method|
    method.define_argument('bt')
  end

  klass.define_instance_method('set_context') do |method|
    method.define_argument('ctx')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Index') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Base'))

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('append_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('attributes_for') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('build_asset') do |method|
    method.define_argument('path')
    method.define_argument('pathname')
    method.define_argument('options')
  end

  klass.define_instance_method('bundle_processors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('cache')

  klass.define_instance_method('cache=') do |method|
    method.define_argument('cache')
  end

  klass.define_instance_method('cache_asset') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('cache_get') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('cache_key_for') do |method|
    method.define_argument('path')
    method.define_argument('options')
  end

  klass.define_instance_method('cache_set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('circular_call_protection') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('clear_paths')

  klass.define_instance_method('compressors')

  klass.define_instance_method('content_type_of') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('context_class')

  klass.define_instance_method('css_compressor')

  klass.define_instance_method('css_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('default_external_encoding')

  klass.define_instance_method('default_external_encoding=')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_class')

  klass.define_instance_method('digest_class=') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_argument('root')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_file')

  klass.define_instance_method('each_logical_path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('encoding_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('engine_extensions')

  klass.define_instance_method('engines') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('entries') do |method|
    method.define_argument('pathname')
  end

  klass.define_instance_method('expire_index!')

  klass.define_instance_method('extension_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('extensions')

  klass.define_instance_method('file_digest') do |method|
    method.define_argument('pathname')
  end

  klass.define_instance_method('find_asset') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('format_extensions')

  klass.define_instance_method('index')

  klass.define_instance_method('js_compressor')

  klass.define_instance_method('js_compressor=') do |method|
    method.define_argument('compressor')
  end

  klass.define_instance_method('json_decode') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=')

  klass.define_instance_method('logical_path_for_filename') do |method|
    method.define_argument('filename')
    method.define_argument('filters')
  end

  klass.define_instance_method('matches_filter') do |method|
    method.define_argument('filters')
    method.define_argument('logical_path')
    method.define_argument('filename')
  end

  klass.define_instance_method('mime_types') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('paths')

  klass.define_instance_method('postprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('prepend_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('preprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('processors') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('register_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_compressor') do |method|
    method.define_argument('mime_type')
    method.define_argument('sym')
    method.define_argument('klass')
  end

  klass.define_instance_method('register_engine') do |method|
    method.define_argument('ext')
    method.define_argument('klass')
  end

  klass.define_instance_method('register_mime_type') do |method|
    method.define_argument('mime_type')
    method.define_argument('ext')
  end

  klass.define_instance_method('register_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_processor') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('registered_mime_types')

  klass.define_instance_method('resolve') do |method|
    method.define_argument('logical_path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('root')

  klass.define_instance_method('stat') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('trail')

  klass.define_instance_method('unregister_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_processor') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=') do |method|
    method.define_argument('version')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::JstProcessor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('default_namespace')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('scope')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('namespace')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Manifest') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('assets')

  klass.define_instance_method('backups_for') do |method|
    method.define_argument('logical_path')
  end

  klass.define_instance_method('clean') do |method|
    method.define_optional_argument('keep')
  end

  klass.define_instance_method('clobber')

  klass.define_instance_method('compile') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('dir')

  klass.define_instance_method('environment')

  klass.define_instance_method('files')

  klass.define_instance_method('find_asset') do |method|
    method.define_argument('logical_path')
  end

  klass.define_instance_method('path')

  klass.define_instance_method('remove') do |method|
    method.define_argument('filename')
  end

  klass.define_instance_method('save')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Mime') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('encoding_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('extension_for_mime_type') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('mime_types') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('register_mime_type') do |method|
    method.define_argument('mime_type')
    method.define_argument('ext')
  end

  klass.define_instance_method('registered_mime_types')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Paths') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('append_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('clear_paths')

  klass.define_instance_method('extensions')

  klass.define_instance_method('paths')

  klass.define_instance_method('prepend_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('root')

  klass.define_instance_method('trail')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::ProcessedAsset') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Asset'))

  klass.define_method('from_hash') do |method|
    method.define_argument('environment')
    method.define_argument('hash')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('content_type')

  klass.define_instance_method('dependencies')

  klass.define_instance_method('dependency_digest')

  klass.define_instance_method('dependency_fresh?') do |method|
    method.define_argument('environment')
    method.define_argument('dep')
  end

  klass.define_instance_method('dependency_paths')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_path')

  klass.define_instance_method('each')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('expand_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('fresh?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('init_with') do |method|
    method.define_argument('environment')
    method.define_argument('coder')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('logical_path')

  klass.define_instance_method('mtime')

  klass.define_instance_method('pathname')

  klass.define_instance_method('relative_pathname')

  klass.define_instance_method('relativize_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('required_assets')

  klass.define_instance_method('source')

  klass.define_instance_method('stale?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('write_to') do |method|
    method.define_argument('filename')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Processing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('bundle_processors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('format_extensions')

  klass.define_instance_method('postprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('preprocessors') do |method|
    method.define_optional_argument('mime_type')
  end

  klass.define_instance_method('processors') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('register_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
  end

  klass.define_instance_method('register_processor') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unregister_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_postprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_preprocessor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
  end

  klass.define_instance_method('unregister_processor') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Processor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_method('name')

  klass.define_method('processor')

  klass.define_method('to_s')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Rails') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Railtie') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rails::Railtie'))

  klass.define_method('abstract_railtie?')

  klass.define_method('config') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('configure') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('console') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('generate_railtie_name') do |method|
    method.define_argument('class_or_module')
  end

  klass.define_method('generators') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('initializer') do |method|
    method.define_argument('name')
    method.define_optional_argument('opts')
    method.define_block_argument('blk')
  end

  klass.define_method('initializers')

  klass.define_method('initializers_chain')

  klass.define_method('initializers_for') do |method|
    method.define_argument('binding')
  end

  klass.define_method('instance')

  klass.define_method('method_missing') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('railtie_name') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('rake_tasks') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('runner') do |method|
    method.define_block_argument('blk')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('initializers')

  klass.define_instance_method('railtie_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('railtie_namespace')

  klass.define_instance_method('run_console_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_generators_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_initializers') do |method|
    method.define_optional_argument('group')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('run_runner_blocks') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('run_tasks_blocks') do |method|
    method.define_argument('app')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::SafetyColons') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::SassCompressor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::SassTemplate') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('syntax')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::ScssTemplate') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::SassTemplate'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('syntax')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::StaticAsset') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Sprockets::Asset'))

  klass.define_method('from_hash') do |method|
    method.define_argument('environment')
    method.define_argument('hash')
  end

  klass.define_instance_method('body')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('content_type')

  klass.define_instance_method('dependencies')

  klass.define_instance_method('dependency_fresh?') do |method|
    method.define_argument('environment')
    method.define_argument('dep')
  end

  klass.define_instance_method('dependency_paths')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest_path')

  klass.define_instance_method('each')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('expand_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('fresh?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('init_with') do |method|
    method.define_argument('environment')
    method.define_argument('coder')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('logical_path')

  klass.define_instance_method('mtime')

  klass.define_instance_method('pathname')

  klass.define_instance_method('relative_pathname')

  klass.define_instance_method('relativize_root_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('required_assets')

  klass.define_instance_method('source')

  klass.define_instance_method('stale?') do |method|
    method.define_argument('environment')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_path')

  klass.define_instance_method('write_to') do |method|
    method.define_argument('filename')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::UglifierCompressor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::Utils') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('normalize_extension') do |method|
    method.define_argument('extension')
  end

  klass.define_method('read_unicode') do |method|
    method.define_argument('pathname')
    method.define_optional_argument('external_encoding')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('%') do |method|
    method.define_argument('args')
  end

  klass.define_method('*') do |method|
    method.define_argument('num')
  end

  klass.define_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_method('<<') do |method|
    method.define_argument('other')
  end

  klass.define_method('[]') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('count_or_replacement')
    method.define_optional_argument('replacement')
  end

  klass.define_method('__crypt__') do |method|
    method.define_argument('other_str')
  end

  klass.define_method('__data__')

  klass.define_method('__data__=')

  klass.define_method('acts_like_string?')

  klass.define_method('append') do |method|
    method.define_argument('str')
  end

  klass.define_method('apply_and!') do |method|
    method.define_argument('other')
  end

  klass.define_method('ascii_only=')

  klass.define_method('ascii_only?')

  klass.define_method('at') do |method|
    method.define_argument('position')
  end

  klass.define_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_method('byte_append') do |method|
    method.define_argument('str')
  end

  klass.define_method('bytes')

  klass.define_method('bytesize')

  klass.define_method('byteslice') do |method|
    method.define_argument('index_or_range')
    method.define_optional_argument('length')
  end

  klass.define_method('camelcase') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_method('camelize') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_method('capitalize')

  klass.define_method('capitalize!')

  klass.define_method('casecmp') do |method|
    method.define_argument('to')
  end

  klass.define_method('center') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_method('chars')

  klass.define_method('chomp') do |method|
    method.define_optional_argument('separator')
  end

  klass.define_method('chomp!') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('chop')

  klass.define_method('chop!')

  klass.define_method('chr')

  klass.define_method('chr_at') do |method|
    method.define_argument('byte')
  end

  klass.define_method('classify')

  klass.define_method('clear')

  klass.define_method('codepoints')

  klass.define_method('column_of') do |method|
    method.define_argument('index')
  end

  klass.define_method('compare_substring') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('size')
  end

  klass.define_method('concat') do |method|
    method.define_argument('other')
  end

  klass.define_method('constantize')

  klass.define_method('convert_float')

  klass.define_method('count') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('count_table') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('crypt') do |method|
    method.define_argument('other_str')
  end

  klass.define_method('dasherize')

  klass.define_method('data')

  klass.define_method('data=')

  klass.define_method('deconstantize')

  klass.define_method('delete') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('delete!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('demodulize')

  klass.define_method('downcase')

  klass.define_method('downcase!')

  klass.define_method('dump')

  klass.define_method('each_byte')

  klass.define_method('each_char')

  klass.define_method('each_codepoint')

  klass.define_method('each_line') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('empty?')

  klass.define_method('encode') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_method('encode!') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_method('encode_json') do |method|
    method.define_argument('encoder')
  end

  klass.define_method('encoding')

  klass.define_method('encoding=')

  klass.define_method('end_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_method('ends_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_method('find_character') do |method|
    method.define_argument('offset')
  end

  klass.define_method('find_string') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_method('find_string_reverse') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_method('first') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('force_encoding') do |method|
    method.define_argument('enc')
  end

  klass.define_method('foreign_key') do |method|
    method.define_optional_argument('separate_class_name_and_id_with_underscore')
  end

  klass.define_method('from') do |method|
    method.define_argument('position')
  end

  klass.define_method('getbyte') do |method|
    method.define_argument('index')
  end

  klass.define_method('gsub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('gsub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('hex')

  klass.define_method('html_safe')

  klass.define_method('humanize')

  klass.define_method('in_time_zone') do |method|
    method.define_optional_argument('zone')
  end

  klass.define_method('indent') do |method|
    method.define_argument('n')
  end

  klass.define_method('index') do |method|
    method.define_argument('str')
    method.define_optional_argument('start')
  end

  klass.define_method('insert') do |method|
    method.define_argument('index')
    method.define_argument('other')
  end

  klass.define_method('intern')

  klass.define_method('is_utf8?')

  klass.define_method('last') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('length')

  klass.define_method('line_of') do |method|
    method.define_argument('index')
  end

  klass.define_method('lines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('ljust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_method('lstrip')

  klass.define_method('lstrip!')

  klass.define_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_method('mb_chars')

  klass.define_method('modify!')

  klass.define_method('next')

  klass.define_method('next!')

  klass.define_method('not_ascii_only?')

  klass.define_method('num_bytes')

  klass.define_method('num_bytes=') do |method|
    method.define_argument('bytes')
  end

  klass.define_method('oct')

  klass.define_method('ord')

  klass.define_method('parameterize') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_method('partition') do |method|
    method.define_optional_argument('pattern')
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

  klass.define_method('pluralize') do |method|
    method.define_optional_argument('count')
    method.define_optional_argument('locale')
  end

  klass.define_method('prefix?') do |method|
    method.define_argument('other')
  end

  klass.define_method('prepend') do |method|
    method.define_argument('other')
  end

  klass.define_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_method('reverse')

  klass.define_method('reverse!')

  klass.define_method('rindex') do |method|
    method.define_argument('sub')
    method.define_optional_argument('finish')
  end

  klass.define_method('rjust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_method('rpartition') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('rstrip')

  klass.define_method('rstrip!')

  klass.define_method('safe_constantize')

  klass.define_method('scan') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('secure_compare') do |method|
    method.define_argument('other')
  end

  klass.define_method('setbyte') do |method|
    method.define_argument('index')
    method.define_argument('byte')
  end

  klass.define_method('shared!')

  klass.define_method('shellescape')

  klass.define_method('shellsplit')

  klass.define_method('shorten!') do |method|
    method.define_argument('size')
  end

  klass.define_method('singularize') do |method|
    method.define_optional_argument('locale')
  end

  klass.define_method('size')

  klass.define_method('slice') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_method('slice!') do |method|
    method.define_argument('one')
    method.define_optional_argument('two')
  end

  klass.define_method('snake_case')

  klass.define_method('split') do |method|
    method.define_optional_argument('pattern')
    method.define_optional_argument('limit')
  end

  klass.define_method('squeeze') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('squeeze!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_method('squish')

  klass.define_method('squish!')

  klass.define_method('start_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_method('starts_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_method('strip')

  klass.define_method('strip!')

  klass.define_method('strip_heredoc')

  klass.define_method('sub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('sub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_method('substring') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_method('succ')

  klass.define_method('succ!')

  klass.define_method('suffix?') do |method|
    method.define_argument('other')
  end

  klass.define_method('sum') do |method|
    method.define_optional_argument('bits')
  end

  klass.define_method('swapcase')

  klass.define_method('swapcase!')

  klass.define_method('tableize')

  klass.define_method('tabto') do |method|
    method.define_argument('n')
  end

  klass.define_method('titlecase')

  klass.define_method('titleize')

  klass.define_method('to') do |method|
    method.define_argument('position')
  end

  klass.define_method('to_ast') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('to_c')

  klass.define_method('to_crlf')

  klass.define_method('to_d')

  klass.define_method('to_date')

  klass.define_method('to_datetime')

  klass.define_method('to_f')

  klass.define_method('to_i') do |method|
    method.define_optional_argument('base')
  end

  klass.define_method('to_inum') do |method|
    method.define_argument('base')
    method.define_argument('check')
  end

  klass.define_method('to_json_raw')

  klass.define_method('to_json_raw_object')

  klass.define_method('to_lf')

  klass.define_method('to_r')

  klass.define_method('to_sexp') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_method('to_str')

  klass.define_method('to_sub_replacement') do |method|
    method.define_argument('result')
    method.define_argument('match')
  end

  klass.define_method('to_sym')

  klass.define_method('to_time') do |method|
    method.define_optional_argument('form')
  end

  klass.define_method('tr') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr_expand!') do |method|
    method.define_argument('limit')
    method.define_argument('invalid_as_empty')
  end

  klass.define_method('tr_s') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr_s!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_method('tr_trans') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
    method.define_argument('squeeze')
  end

  klass.define_method('transform') do |method|
    method.define_argument('tbl')
    method.define_argument('respect_kcode')
  end

  klass.define_method('treetop_camelize')

  klass.define_method('truncate') do |method|
    method.define_argument('truncate_at')
    method.define_optional_argument('options')
  end

  klass.define_method('underscore')

  klass.define_method('unpack') do |method|
    method.define_argument('directives')
  end

  klass.define_method('upcase')

  klass.define_method('upcase!')

  klass.define_method('upto') do |method|
    method.define_argument('stop')
    method.define_optional_argument('exclusive')
  end

  klass.define_method('valid_encoding=')

  klass.define_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('Sprockets::YUICompressor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Tilt::Template'))

  klass.define_method('default_mime_type')

  klass.define_method('default_mime_type=')

  klass.define_method('engine_initialized')

  klass.define_method('engine_initialized=')

  klass.define_method('engine_initialized?')

  klass.define_instance_method('allows_script?')

  klass.define_instance_method('basename') do |method|
    method.define_optional_argument('suffix')
  end

  klass.define_instance_method('compiled_method') do |method|
    method.define_argument('locals_keys')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('default_encoding')

  klass.define_instance_method('eval_file')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file')

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('line')

  klass.define_instance_method('name')

  klass.define_instance_method('options')

  klass.define_instance_method('precompiled') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_postamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_preamble') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('precompiled_template') do |method|
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')

  klass.define_instance_method('read_template_file')

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('require_template_library') do |method|
    method.define_argument('name')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Sprockets').deep_freeze