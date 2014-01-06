# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('Sprockets') do |defs|
  defs.define_constant('Sprockets') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('initialize')

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

  defs.define_constant('Sprockets::ArgumentError') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Error'))

  end

  defs.define_constant('Sprockets::Asset') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_instance_method('initialize') do |method|
      method.define_argument('environment')
      method.define_argument('logical_path')
      method.define_argument('pathname')

      method.returns { |object| object.instance }
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

  defs.define_constant('Sprockets::AssetAttributes') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('content_type')

    klass.define_instance_method('engine_extensions')

    klass.define_instance_method('engines')

    klass.define_instance_method('environment')

    klass.define_instance_method('extensions')

    klass.define_instance_method('format_extension')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('environment')
      method.define_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('logical_path')

    klass.define_instance_method('pathname')

    klass.define_instance_method('processors')

    klass.define_instance_method('search_paths')
  end

  defs.define_constant('Sprockets::Base') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('Sprockets::BundledAsset') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Asset'))

    klass.define_instance_method('body')

    klass.define_instance_method('dependencies')

    klass.define_instance_method('encode_with') do |method|
      method.define_argument('coder')
    end

    klass.define_instance_method('fresh?') do |method|
      method.define_argument('environment')
    end

    klass.define_instance_method('init_with') do |method|
      method.define_argument('environment')
      method.define_argument('coder')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('environment')
      method.define_argument('logical_path')
      method.define_argument('pathname')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('source')

    klass.define_instance_method('to_a')
  end

  defs.define_constant('Sprockets::Cache') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('Sprockets::Cache::FileStore') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('root')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Sprockets::CharsetNormalizer') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::CircularDependencyError') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Error'))

  end

  defs.define_constant('Sprockets::ClosureCompressor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::Compressing') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

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

  defs.define_constant('Sprockets::ContentTypeMismatch') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Error'))

  end

  defs.define_constant('Sprockets::Context') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_instance_method('initialize') do |method|
      method.define_argument('environment')
      method.define_argument('logical_path')
      method.define_argument('pathname')

      method.returns { |object| object.instance }
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

  defs.define_constant('Sprockets::DirectiveProcessor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_instance_method('body')

    klass.define_instance_method('compat?')

    klass.define_instance_method('constants')

    klass.define_instance_method('context')

    klass.define_instance_method('directives')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('header')

    klass.define_instance_method('included_pathnames')

    klass.define_instance_method('pathname')

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
  end

  defs.define_constant('Sprockets::DirectiveProcessor::DIRECTIVE_PATTERN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('multiline?')

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('Sprockets::DirectiveProcessor::HEADER_PATTERN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('multiline?')

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('Sprockets::EcoTemplate') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('scope')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::EjsTemplate') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('scope')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::EngineError') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('message')

    klass.define_instance_method('sprockets_annotation')

    klass.define_instance_method('sprockets_annotation=')
  end

  defs.define_constant('Sprockets::Engines') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('engine_extensions')

    klass.define_instance_method('engines') do |method|
      method.define_optional_argument('ext')
    end

    klass.define_instance_method('register_engine') do |method|
      method.define_argument('ext')
      method.define_argument('klass')
    end
  end

  defs.define_constant('Sprockets::Environment') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Base'))

    klass.define_instance_method('expire_index!')

    klass.define_instance_method('find_asset') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('index')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('root')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Sprockets::Error') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

  end

  defs.define_constant('Sprockets::FileNotFound') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Error'))

  end

  defs.define_constant('Sprockets::Index') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Base'))

    klass.define_instance_method('build_asset') do |method|
      method.define_argument('path')
      method.define_argument('pathname')
      method.define_argument('options')
    end

    klass.define_instance_method('expire_index!')

    klass.define_instance_method('file_digest') do |method|
      method.define_argument('pathname')
    end

    klass.define_instance_method('find_asset') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('index')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('environment')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Sprockets::JstProcessor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('default_namespace')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('scope')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('namespace')

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::Manifest') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_instance_method('initialize') do |method|
      method.define_rest_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('path')

    klass.define_instance_method('remove') do |method|
      method.define_argument('filename')
    end

    klass.define_instance_method('save')
  end

  defs.define_constant('Sprockets::Mime') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

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

  defs.define_constant('Sprockets::Paths') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

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

  defs.define_constant('Sprockets::ProcessedAsset') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Asset'))

    klass.define_instance_method('dependency_digest')

    klass.define_instance_method('encode_with') do |method|
      method.define_argument('coder')
    end

    klass.define_instance_method('fresh?') do |method|
      method.define_argument('environment')
    end

    klass.define_instance_method('init_with') do |method|
      method.define_argument('environment')
      method.define_argument('coder')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('environment')
      method.define_argument('logical_path')
      method.define_argument('pathname')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('source')
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile') do |klass|
    klass.inherits(defs.constant_proxy('#<Class:0x2e9f4>'))

    klass.define_instance_method('eql?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('hash')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('pathname')
      method.define_argument('mtime')
      method.define_argument('digest')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_instance_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('drop_while')

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_instance_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_instance_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('find_all')

    klass.define_instance_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_instance_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('index_by')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('lazy')

    klass.define_instance_method('many?')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('min')

    klass.define_instance_method('min_by')

    klass.define_instance_method('minmax')

    klass.define_instance_method('minmax_by')

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('none?')

    klass.define_instance_method('one?')

    klass.define_instance_method('partition')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('reject')

    klass.define_instance_method('reverse_each')

    klass.define_instance_method('rewind')

    klass.define_instance_method('select')

    klass.define_instance_method('size')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile::Group') do |klass|
    klass.inherits(defs.constant_proxy('Rubinius::FFI::Struct'))

    klass.define_instance_method('gid')

    klass.define_instance_method('mem')

    klass.define_instance_method('name')

    klass.define_instance_method('passwd')
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Rubinius::FFI::Struct'))

    klass.define_instance_method('dir')

    klass.define_instance_method('gecos')

    klass.define_instance_method('gid')

    klass.define_instance_method('name')

    klass.define_instance_method('passwd')

    klass.define_instance_method('shell')

    klass.define_instance_method('uid')
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile::STRUCT_ATTRS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('multiplier')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('obj')
    end

    klass.define_method('[]') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('index')
      method.define_argument('ent')
      method.define_optional_argument('fin')
    end

    klass.define_method('__append__') do |method|
      method.define_argument('obj')
    end

    klass.define_method('__rescue_match__') do |method|
      method.define_argument('exception')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

    klass.define_method('assoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect!')

    klass.define_method('collect_concat')

    klass.define_method('combination') do |method|
      method.define_argument('num')
    end

    klass.define_method('compact')

    klass.define_method('compact!')

    klass.define_method('concat') do |method|
      method.define_argument('other')
    end

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('delete') do |method|
      method.define_argument('obj')
    end

    klass.define_method('delete_at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_index')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

    klass.define_method('fill') do |method|
      method.define_optional_argument('a')
      method.define_optional_argument('b')
      method.define_optional_argument('c')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('flatten!') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('insert') do |method|
      method.define_argument('idx')
      method.define_rest_argument('items')
    end

    klass.define_method('join') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('keep_if')

    klass.define_method('last') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('map!')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('new_range') do |method|
      method.define_argument('start')
      method.define_argument('count')
    end

    klass.define_method('new_reserved') do |method|
      method.define_argument('count')
    end

    klass.define_method('nitems')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('pack') do |method|
      method.define_argument('directives')
    end

    klass.define_method('partition')

    klass.define_method('permutation') do |method|
      method.define_optional_argument('num')
    end

    klass.define_method('pop') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('product') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('push') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('rassoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('repeated_combination') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('repeated_permutation') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse')

    klass.define_method('reverse!')

    klass.define_method('reverse_each')

    klass.define_method('rindex') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('rotate') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('rotate!') do |method|
      method.define_optional_argument('cnt')
    end

    klass.define_method('sample') do |method|
      method.define_optional_argument('count')
      method.define_optional_argument('options')
    end

    klass.define_method('second')

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shelljoin')

    klass.define_method('shift') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('shuffle') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('shuffle!') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('slice!') do |method|
      method.define_argument('start')
      method.define_optional_argument('length')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort!')

    klass.define_method('sort_by')

    klass.define_method('sort_by!')

    klass.define_method('sort_inplace')

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('val')
      method.define_argument('sort_id')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('sort_id')

    klass.define_instance_method('value')
  end

  defs.define_constant('Sprockets::ProcessedAsset::DependencyFile::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('new') do |method|
      method.define_rest_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=')

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('utime')
      method.define_optional_argument('stime')
      method.define_optional_argument('cutime')
      method.define_optional_argument('cstime')
      method.define_optional_argument('tutime')
      method.define_optional_argument('tstime')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=')

    klass.define_instance_method('tstime')

    klass.define_instance_method('tstime=')

    klass.define_instance_method('tutime')

    klass.define_instance_method('tutime=')

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=')
  end

  defs.define_constant('Sprockets::Processing') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

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

  defs.define_constant('Sprockets::Processor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('name')

    klass.define_method('processor')

    klass.define_method('to_s')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
    end

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::Rails') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('Sprockets::Rails::Helper') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('extended') do |method|
      method.define_argument('obj')
    end

    klass.define_method('included') do |method|
      method.define_argument('klass')
    end

    klass.define_method('initialize')

    klass.define_instance_method('asset_digest') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('asset_digest_path') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('asset_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('asset_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('audio_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('audio_tag') do |method|
      method.define_rest_argument('sources')
    end

    klass.define_instance_method('audio_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('auto_discovery_link_tag') do |method|
      method.define_optional_argument('type')
      method.define_optional_argument('url_options')
      method.define_optional_argument('tag_options')
    end

    klass.define_instance_method('cdata_section') do |method|
      method.define_argument('content')
    end

    klass.define_instance_method('compute_asset_extname') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('compute_asset_host') do |method|
      method.define_optional_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('compute_asset_path') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('content_for') do |method|
      method.define_argument('name')
      method.define_optional_argument('content')
      method.define_optional_argument('options')
      method.define_block_argument('block')
    end

    klass.define_instance_method('content_for?') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('content_tag') do |method|
      method.define_argument('name')
      method.define_optional_argument('content_or_options_with_block')
      method.define_optional_argument('options')
      method.define_optional_argument('escape')
      method.define_block_argument('block')
    end

    klass.define_instance_method('escape_once') do |method|
      method.define_argument('html')
    end

    klass.define_instance_method('favicon_link_tag') do |method|
      method.define_optional_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('flush_output_buffer')

    klass.define_instance_method('font_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('font_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('image_alt') do |method|
      method.define_argument('src')
    end

    klass.define_instance_method('image_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('image_tag') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('image_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('javascript_include_tag') do |method|
      method.define_rest_argument('sources')
    end

    klass.define_instance_method('javascript_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('javascript_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('lookup_asset_for_path') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_asset') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_audio') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_font') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_image') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_javascript') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_stylesheet') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('path_to_video') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('provide') do |method|
      method.define_argument('name')
      method.define_optional_argument('content')
      method.define_block_argument('block')
    end

    klass.define_instance_method('request_debug_assets?')

    klass.define_instance_method('stylesheet_link_tag') do |method|
      method.define_rest_argument('sources')
    end

    klass.define_instance_method('stylesheet_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('stylesheet_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('tag') do |method|
      method.define_argument('name')
      method.define_optional_argument('options')
      method.define_optional_argument('open')
      method.define_optional_argument('escape')
    end

    klass.define_instance_method('url_to_asset') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('url_to_audio') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('url_to_font') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('url_to_image') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('url_to_javascript') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('url_to_stylesheet') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('url_to_video') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('video_path') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('video_tag') do |method|
      method.define_rest_argument('sources')
    end

    klass.define_instance_method('video_url') do |method|
      method.define_argument('source')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('with_output_buffer') do |method|
      method.define_optional_argument('buf')
    end
  end

  defs.define_constant('Sprockets::Rails::Helper::ASSET_EXTENSIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('__entries__')

    klass.define_method('__store__') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('assert_valid_keys') do |method|
      method.define_rest_argument('valid_keys')
    end

    klass.define_method('assoc') do |method|
      method.define_argument('key')
    end

    klass.define_method('capacity')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect_concat')

    klass.define_method('compare_by_identity')

    klass.define_method('compare_by_identity?')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('deep_merge') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_merge!') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_stringify_keys')

    klass.define_method('deep_stringify_keys!')

    klass.define_method('deep_symbolize_keys')

    klass.define_method('deep_symbolize_keys!')

    klass.define_method('deep_transform_keys') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('deep_transform_keys!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('default') do |method|
      method.define_optional_argument('key')
    end

    klass.define_method('default=') do |method|
      method.define_argument('value')
    end

    klass.define_method('default_proc')

    klass.define_method('default_proc=') do |method|
      method.define_argument('prc')
    end

    klass.define_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_item')

    klass.define_method('each_key')

    klass.define_method('each_pair')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_value')

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('except') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('except!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('extractable_options?')

    klass.define_method('fetch') do |method|
      method.define_argument('key')
      method.define_optional_argument('default')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('find_item') do |method|
      method.define_argument('key')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('has_key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('has_value?') do |method|
      method.define_argument('value')
    end

    klass.define_method('index') do |method|
      method.define_argument('value')
    end

    klass.define_method('index_by')

    klass.define_method('indexes') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('indices') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('invert')

    klass.define_method('keep_if')

    klass.define_method('key') do |method|
      method.define_argument('value')
    end

    klass.define_method('key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('keys')

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('max_entries')

    klass.define_method('member?') do |method|
      method.define_argument('key')
    end

    klass.define_method('merge') do |method|
      method.define_argument('other')
    end

    klass.define_method('merge!') do |method|
      method.define_argument('other')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('nested_under_indifferent_access')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('rassoc') do |method|
      method.define_argument('value')
    end

    klass.define_method('redistribute') do |method|
      method.define_argument('entries')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('rehash')

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse_each')

    klass.define_method('reverse_merge') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_merge!') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_update') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shift')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('store') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('stringify_keys')

    klass.define_method('stringify_keys!')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('symbolize_keys')

    klass.define_method('symbolize_keys!')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_h')

    klass.define_method('to_hash')

    klass.define_method('to_iter')

    klass.define_method('to_options')

    klass.define_method('to_options!')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('transform_keys')

    klass.define_method('transform_keys!')

    klass.define_method('update') do |method|
      method.define_argument('other')
    end

    klass.define_method('value?') do |method|
      method.define_argument('value')
    end

    klass.define_method('values')

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_indifferent_access')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Rails::Helper::ASSET_PUBLIC_DIRECTORIES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('__entries__')

    klass.define_method('__store__') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('assert_valid_keys') do |method|
      method.define_rest_argument('valid_keys')
    end

    klass.define_method('assoc') do |method|
      method.define_argument('key')
    end

    klass.define_method('capacity')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect_concat')

    klass.define_method('compare_by_identity')

    klass.define_method('compare_by_identity?')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('deep_merge') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_merge!') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_stringify_keys')

    klass.define_method('deep_stringify_keys!')

    klass.define_method('deep_symbolize_keys')

    klass.define_method('deep_symbolize_keys!')

    klass.define_method('deep_transform_keys') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('deep_transform_keys!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('default') do |method|
      method.define_optional_argument('key')
    end

    klass.define_method('default=') do |method|
      method.define_argument('value')
    end

    klass.define_method('default_proc')

    klass.define_method('default_proc=') do |method|
      method.define_argument('prc')
    end

    klass.define_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_item')

    klass.define_method('each_key')

    klass.define_method('each_pair')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_value')

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('except') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('except!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('extractable_options?')

    klass.define_method('fetch') do |method|
      method.define_argument('key')
      method.define_optional_argument('default')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('find_item') do |method|
      method.define_argument('key')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('has_key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('has_value?') do |method|
      method.define_argument('value')
    end

    klass.define_method('index') do |method|
      method.define_argument('value')
    end

    klass.define_method('index_by')

    klass.define_method('indexes') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('indices') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('invert')

    klass.define_method('keep_if')

    klass.define_method('key') do |method|
      method.define_argument('value')
    end

    klass.define_method('key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('keys')

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('max_entries')

    klass.define_method('member?') do |method|
      method.define_argument('key')
    end

    klass.define_method('merge') do |method|
      method.define_argument('other')
    end

    klass.define_method('merge!') do |method|
      method.define_argument('other')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('nested_under_indifferent_access')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('rassoc') do |method|
      method.define_argument('value')
    end

    klass.define_method('redistribute') do |method|
      method.define_argument('entries')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('rehash')

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse_each')

    klass.define_method('reverse_merge') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_merge!') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_update') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shift')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('store') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('stringify_keys')

    klass.define_method('stringify_keys!')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('symbolize_keys')

    klass.define_method('symbolize_keys!')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_h')

    klass.define_method('to_hash')

    klass.define_method('to_iter')

    klass.define_method('to_options')

    klass.define_method('to_options!')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('transform_keys')

    klass.define_method('transform_keys!')

    klass.define_method('update') do |method|
      method.define_argument('other')
    end

    klass.define_method('value?') do |method|
      method.define_argument('value')
    end

    klass.define_method('values')

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_indifferent_access')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Rails::Helper::BOOLEAN_ATTRIBUTES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('enum')
    end

    klass.define_method('+') do |method|
      method.define_argument('enum')
    end

    klass.define_method('-') do |method|
      method.define_argument('enum')
    end

    klass.define_method('<<') do |method|
      method.define_argument('o')
    end

    klass.define_method('^') do |method|
      method.define_argument('enum')
    end

    klass.define_method('add') do |method|
      method.define_argument('o')
    end

    klass.define_method('add?') do |method|
      method.define_argument('o')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('classify')

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect!')

    klass.define_method('collect_concat')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('delete') do |method|
      method.define_argument('o')
    end

    klass.define_method('delete?') do |method|
      method.define_argument('o')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('difference') do |method|
      method.define_argument('enum')
    end

    klass.define_method('divide') do |method|
      method.define_block_argument('func')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten')

    klass.define_method('flatten!')

    klass.define_method('flatten_merge') do |method|
      method.define_argument('set')
      method.define_optional_argument('seen')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('index_by')

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('intersection') do |method|
      method.define_argument('enum')
    end

    klass.define_method('keep_if')

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('map!')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('o')
    end

    klass.define_method('merge') do |method|
      method.define_argument('enum')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('pretty_print') do |method|
      method.define_argument('pp')
    end

    klass.define_method('pretty_print_cycle') do |method|
      method.define_argument('pp')
    end

    klass.define_method('proper_subset?') do |method|
      method.define_argument('set')
    end

    klass.define_method('proper_superset?') do |method|
      method.define_argument('set')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('replace') do |method|
      method.define_argument('enum')
    end

    klass.define_method('reverse_each')

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('size')

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('subset?') do |method|
      method.define_argument('set')
    end

    klass.define_method('subtract') do |method|
      method.define_argument('enum')
    end

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('superset?') do |method|
      method.define_argument('set')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('union') do |method|
      method.define_argument('enum')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('|') do |method|
      method.define_argument('enum')
    end
  end

  defs.define_constant('Sprockets::Rails::Helper::PRE_CONTENT_STRINGS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('__entries__')

    klass.define_method('__store__') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('assert_valid_keys') do |method|
      method.define_rest_argument('valid_keys')
    end

    klass.define_method('assoc') do |method|
      method.define_argument('key')
    end

    klass.define_method('capacity')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect_concat')

    klass.define_method('compare_by_identity')

    klass.define_method('compare_by_identity?')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('deep_merge') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_merge!') do |method|
      method.define_argument('other_hash')
      method.define_block_argument('block')
    end

    klass.define_method('deep_stringify_keys')

    klass.define_method('deep_stringify_keys!')

    klass.define_method('deep_symbolize_keys')

    klass.define_method('deep_symbolize_keys!')

    klass.define_method('deep_transform_keys') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('deep_transform_keys!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('default') do |method|
      method.define_optional_argument('key')
    end

    klass.define_method('default=') do |method|
      method.define_argument('value')
    end

    klass.define_method('default_proc')

    klass.define_method('default_proc=') do |method|
      method.define_argument('prc')
    end

    klass.define_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_item')

    klass.define_method('each_key')

    klass.define_method('each_pair')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_value')

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('except') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('except!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('extractable_options?')

    klass.define_method('fetch') do |method|
      method.define_argument('key')
      method.define_optional_argument('default')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('find_item') do |method|
      method.define_argument('key')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('has_key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('has_value?') do |method|
      method.define_argument('value')
    end

    klass.define_method('index') do |method|
      method.define_argument('value')
    end

    klass.define_method('index_by')

    klass.define_method('indexes') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('indices') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('invert')

    klass.define_method('keep_if')

    klass.define_method('key') do |method|
      method.define_argument('value')
    end

    klass.define_method('key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('keys')

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('max_entries')

    klass.define_method('member?') do |method|
      method.define_argument('key')
    end

    klass.define_method('merge') do |method|
      method.define_argument('other')
    end

    klass.define_method('merge!') do |method|
      method.define_argument('other')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('nested_under_indifferent_access')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('rassoc') do |method|
      method.define_argument('value')
    end

    klass.define_method('redistribute') do |method|
      method.define_argument('entries')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('rehash')

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse_each')

    klass.define_method('reverse_merge') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_merge!') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('reverse_update') do |method|
      method.define_argument('other_hash')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shift')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice!') do |method|
      method.define_rest_argument('keys')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('store') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_method('stringify_keys')

    klass.define_method('stringify_keys!')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('symbolize_keys')

    klass.define_method('symbolize_keys!')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_h')

    klass.define_method('to_hash')

    klass.define_method('to_iter')

    klass.define_method('to_options')

    klass.define_method('to_options!')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('transform_keys')

    klass.define_method('transform_keys!')

    klass.define_method('update') do |method|
      method.define_argument('other')
    end

    klass.define_method('value?') do |method|
      method.define_argument('value')
    end

    klass.define_method('values')

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_indifferent_access')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Rails::Helper::URI_REGEXP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('multiline?')

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('Sprockets::Rails::Helper::VIEW_ACCESSORS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('multiplier')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('obj')
    end

    klass.define_method('[]') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('index')
      method.define_argument('ent')
      method.define_optional_argument('fin')
    end

    klass.define_method('__append__') do |method|
      method.define_argument('obj')
    end

    klass.define_method('__rescue_match__') do |method|
      method.define_argument('exception')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

    klass.define_method('assoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect!')

    klass.define_method('collect_concat')

    klass.define_method('combination') do |method|
      method.define_argument('num')
    end

    klass.define_method('compact')

    klass.define_method('compact!')

    klass.define_method('concat') do |method|
      method.define_argument('other')
    end

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('delete') do |method|
      method.define_argument('obj')
    end

    klass.define_method('delete_at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_index')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

    klass.define_method('fill') do |method|
      method.define_optional_argument('a')
      method.define_optional_argument('b')
      method.define_optional_argument('c')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('flatten!') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('insert') do |method|
      method.define_argument('idx')
      method.define_rest_argument('items')
    end

    klass.define_method('join') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('keep_if')

    klass.define_method('last') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('map!')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('new_range') do |method|
      method.define_argument('start')
      method.define_argument('count')
    end

    klass.define_method('new_reserved') do |method|
      method.define_argument('count')
    end

    klass.define_method('nitems')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('pack') do |method|
      method.define_argument('directives')
    end

    klass.define_method('partition')

    klass.define_method('permutation') do |method|
      method.define_optional_argument('num')
    end

    klass.define_method('pop') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('product') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('push') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('rassoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('repeated_combination') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('repeated_permutation') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse')

    klass.define_method('reverse!')

    klass.define_method('reverse_each')

    klass.define_method('rindex') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('rotate') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('rotate!') do |method|
      method.define_optional_argument('cnt')
    end

    klass.define_method('sample') do |method|
      method.define_optional_argument('count')
      method.define_optional_argument('options')
    end

    klass.define_method('second')

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shelljoin')

    klass.define_method('shift') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('shuffle') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('shuffle!') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('slice!') do |method|
      method.define_argument('start')
      method.define_optional_argument('length')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort!')

    klass.define_method('sort_by')

    klass.define_method('sort_by!')

    klass.define_method('sort_inplace')

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Sprockets::Railtie') do |klass|
    klass.inherits(defs.constant_proxy('Rails::Railtie'))

    klass.define_method('config') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('configure') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('instance')

    klass.define_method('method_missing') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('Sprockets::Railtie::ABSTRACT_RAILTIES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('multiplier')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('obj')
    end

    klass.define_method('[]') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('index')
      method.define_argument('ent')
      method.define_optional_argument('fin')
    end

    klass.define_method('__append__') do |method|
      method.define_argument('obj')
    end

    klass.define_method('__rescue_match__') do |method|
      method.define_argument('exception')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('append') do |method|
      method.define_argument('obj')
    end

    klass.define_method('assoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect!')

    klass.define_method('collect_concat')

    klass.define_method('combination') do |method|
      method.define_argument('num')
    end

    klass.define_method('compact')

    klass.define_method('compact!')

    klass.define_method('concat') do |method|
      method.define_argument('other')
    end

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('delete') do |method|
      method.define_argument('obj')
    end

    klass.define_method('delete_at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_index')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_method('extract_options!')

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fifth')

    klass.define_method('fill') do |method|
      method.define_optional_argument('a')
      method.define_optional_argument('b')
      method.define_optional_argument('c')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('flatten!') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('forty_two')

    klass.define_method('fourth')

    klass.define_method('from') do |method|
      method.define_argument('position')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('in_groups') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('in_groups_of') do |method|
      method.define_argument('number')
      method.define_optional_argument('fill_with')
    end

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('index_by')

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('insert') do |method|
      method.define_argument('idx')
      method.define_rest_argument('items')
    end

    klass.define_method('join') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('keep_if')

    klass.define_method('last') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('many?')

    klass.define_method('map')

    klass.define_method('map!')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('new_range') do |method|
      method.define_argument('start')
      method.define_argument('count')
    end

    klass.define_method('new_reserved') do |method|
      method.define_argument('count')
    end

    klass.define_method('nitems')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('pack') do |method|
      method.define_argument('directives')
    end

    klass.define_method('partition')

    klass.define_method('permutation') do |method|
      method.define_optional_argument('num')
    end

    klass.define_method('pop') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('product') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('push') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('rassoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('repeated_combination') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('repeated_permutation') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse')

    klass.define_method('reverse!')

    klass.define_method('reverse_each')

    klass.define_method('rindex') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('rotate') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('rotate!') do |method|
      method.define_optional_argument('cnt')
    end

    klass.define_method('sample') do |method|
      method.define_optional_argument('count')
      method.define_optional_argument('options')
    end

    klass.define_method('second')

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shelljoin')

    klass.define_method('shift') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('shuffle') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('shuffle!') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('slice!') do |method|
      method.define_argument('start')
      method.define_optional_argument('length')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort!')

    klass.define_method('sort_by')

    klass.define_method('sort_by!')

    klass.define_method('sort_inplace')

    klass.define_method('split') do |method|
      method.define_optional_argument('value')
      method.define_block_argument('block')
    end

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('third')

    klass.define_method('to') do |method|
      method.define_argument('position')
    end

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_default_s')

    klass.define_method('to_formatted_s') do |method|
      method.define_optional_argument('format')
    end

    klass.define_method('to_sentence') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('to_xml') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('uniq_by') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('uniq_by!') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Sprockets::Railtie::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('config') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('configure') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('inherited') do |method|
      method.define_argument('base')
    end

    klass.define_instance_method('instance')

    klass.define_instance_method('method_missing') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('respond_to?') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Railtie::Collection') do |klass|
    klass.inherits(defs.constant_proxy('Array'))

    klass.define_instance_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('each_strongly_connected_component')

    klass.define_instance_method('each_strongly_connected_component_from') do |method|
      method.define_argument('node')
      method.define_optional_argument('id_map')
      method.define_optional_argument('stack')
    end

    klass.define_instance_method('strongly_connected_components')

    klass.define_instance_method('tsort')

    klass.define_instance_method('tsort_each')

    klass.define_instance_method('tsort_each_child') do |method|
      method.define_argument('initializer')
      method.define_block_argument('block')
    end

    klass.define_instance_method('tsort_each_node')
  end

  defs.define_constant('Sprockets::Railtie::Configurable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('append_features') do |method|
      method.define_argument('base')
    end

    klass.define_method('included') do |method|
      method.define_optional_argument('base')
      method.define_block_argument('block')
    end

    klass.define_method('initialize')
  end

  defs.define_constant('Sprockets::Railtie::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('eager_load_namespaces')

    klass.define_instance_method('after_initialize') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('app_generators')

    klass.define_instance_method('app_middleware')

    klass.define_instance_method('before_configuration') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('before_eager_load') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('before_initialize') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('eager_load_namespaces')

    klass.define_instance_method('initialize')

    klass.define_instance_method('respond_to?') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('to_prepare') do |method|
      method.define_block_argument('blk')
    end

    klass.define_instance_method('to_prepare_blocks')

    klass.define_instance_method('watchable_dirs')

    klass.define_instance_method('watchable_files')
  end

  defs.define_constant('Sprockets::Railtie::Initializer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('after')

    klass.define_instance_method('before')

    klass.define_instance_method('belongs_to?') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('bind') do |method|
      method.define_argument('context')
    end

    klass.define_instance_method('block')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('context')
      method.define_argument('options')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('run') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Railtie::LOOSE_APP_ASSETS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('__yield__') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('arity')

    klass.define_method('binding')

    klass.define_method('block')

    klass.define_method('block=')

    klass.define_method('bound_method')

    klass.define_method('bound_method=')

    klass.define_method('call') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('call_on_object') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('call_prim') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('curry') do |method|
      method.define_optional_argument('curried_arity')
    end

    klass.define_method('lambda?')

    klass.define_method('lambda_style!')

    klass.define_method('parameters')

    klass.define_method('ruby_method')

    klass.define_method('ruby_method=')

    klass.define_method('source_location')

    klass.define_method('to_proc')

    klass.define_method('yield') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::OrderedOptions'))

    klass.define_instance_method('configure') do |method|
      method.define_block_argument('block')
    end
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::Bucket') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('delete') do |method|
      method.define_argument('key')
      method.define_argument('key_hash')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('key')
      method.define_argument('key_hash')
      method.define_argument('value')
      method.define_argument('state')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('key')

    klass.define_instance_method('key=')

    klass.define_instance_method('key_hash')

    klass.define_instance_method('key_hash=')

    klass.define_instance_method('link')

    klass.define_instance_method('link=')

    klass.define_instance_method('next')

    klass.define_instance_method('next=')

    klass.define_instance_method('previous')

    klass.define_instance_method('previous=')

    klass.define_instance_method('remove')

    klass.define_instance_method('state')

    klass.define_instance_method('state=')

    klass.define_instance_method('value')

    klass.define_instance_method('value=')
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::Entries') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('_load') do |method|
      method.define_argument('str')
    end

    klass.define_method('allocate')

    klass.define_method('new') do |method|
      method.define_argument('cnt')

      method.returns { |object| object.instance }
    end

    klass.define_method('pattern') do |method|
      method.define_argument('size')
      method.define_argument('obj')
    end

    klass.define_instance_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_instance_method('==') do |method|
      method.define_argument('tup')
    end

    klass.define_instance_method('===') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('[]') do |method|
      method.define_argument('idx')
    end

    klass.define_instance_method('[]=') do |method|
      method.define_argument('idx')
      method.define_argument('val')
    end

    klass.define_instance_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('at') do |method|
      method.define_argument('idx')
    end

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('copy_from') do |method|
      method.define_argument('other')
      method.define_argument('start')
      method.define_argument('length')
      method.define_argument('dest')
    end

    klass.define_instance_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_instance_method('delete') do |method|
      method.define_argument('start')
      method.define_argument('length')
      method.define_argument('object')
    end

    klass.define_instance_method('delete_at_index') do |method|
      method.define_argument('index')
    end

    klass.define_instance_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('drop_while')

    klass.define_instance_method('dup')

    klass.define_instance_method('each')

    klass.define_instance_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_instance_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_instance_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('empty?')

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_instance_method('fields')

    klass.define_instance_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('find_all')

    klass.define_instance_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_instance_method('first')

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('index_by')

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('insert_at_index') do |method|
      method.define_argument('index')
      method.define_argument('value')
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('join') do |method|
      method.define_argument('sep')
      method.define_optional_argument('meth')
    end

    klass.define_instance_method('join_upto') do |method|
      method.define_argument('sep')
      method.define_argument('count')
      method.define_optional_argument('meth')
    end

    klass.define_instance_method('last')

    klass.define_instance_method('lazy')

    klass.define_instance_method('length')

    klass.define_instance_method('many?')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('min')

    klass.define_instance_method('min_by')

    klass.define_instance_method('minmax')

    klass.define_instance_method('minmax_by')

    klass.define_instance_method('none?')

    klass.define_instance_method('one?')

    klass.define_instance_method('partition')

    klass.define_instance_method('put') do |method|
      method.define_argument('idx')
      method.define_argument('val')
    end

    klass.define_instance_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('reject')

    klass.define_instance_method('reverse!') do |method|
      method.define_argument('start')
      method.define_argument('total')
    end

    klass.define_instance_method('reverse_each')

    klass.define_instance_method('select')

    klass.define_instance_method('shift')

    klass.define_instance_method('size')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_instance_method('swap') do |method|
      method.define_argument('a')
      method.define_argument('b')
    end

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('to_a')

    klass.define_instance_method('to_s')

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_instance_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('drop_while')

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_instance_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('exclude?') do |method|
      method.define_argument('object')
    end

    klass.define_instance_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('find_all')

    klass.define_instance_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_instance_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('index_by')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('lazy')

    klass.define_instance_method('many?')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('min')

    klass.define_instance_method('min_by')

    klass.define_instance_method('minmax')

    klass.define_instance_method('minmax_by')

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('none?')

    klass.define_instance_method('one?')

    klass.define_instance_method('partition')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('reject')

    klass.define_instance_method('reverse_each')

    klass.define_instance_method('rewind')

    klass.define_instance_method('select')

    klass.define_instance_method('size')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('sum') do |method|
      method.define_optional_argument('identity')
      method.define_block_argument('block')
    end

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::Iterator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('state')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('next') do |method|
      method.define_argument('item')
    end
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::MAX_ENTRIES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('o')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('o')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('ago') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('byte')

    klass.define_method('bytes')

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('day')

    klass.define_method('days')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('even?')

    klass.define_method('exabyte')

    klass.define_method('exabytes')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('fortnight')

    klass.define_method('fortnights')

    klass.define_method('from_now') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('gigabyte')

    klass.define_method('gigabytes')

    klass.define_method('hour')

    klass.define_method('hours')

    klass.define_method('i')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('kilobyte')

    klass.define_method('kilobytes')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('megabyte')

    klass.define_method('megabytes')

    klass.define_method('minute')

    klass.define_method('minutes')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('month')

    klass.define_method('months')

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('petabyte')

    klass.define_method('petabytes')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('second')

    klass.define_method('seconds')

    klass.define_method('since') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('terabyte')

    klass.define_method('terabytes')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_d')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('until') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('week')

    klass.define_method('weeks')

    klass.define_method('year')

    klass.define_method('years')

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::MIN_SIZE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('o')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('o')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('ago') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('byte')

    klass.define_method('bytes')

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('day')

    klass.define_method('days')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('encode_json') do |method|
      method.define_argument('encoder')
    end

    klass.define_method('even?')

    klass.define_method('exabyte')

    klass.define_method('exabytes')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('fortnight')

    klass.define_method('fortnights')

    klass.define_method('from_now') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('gigabyte')

    klass.define_method('gigabytes')

    klass.define_method('hour')

    klass.define_method('hours')

    klass.define_method('i')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('kilobyte')

    klass.define_method('kilobytes')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('megabyte')

    klass.define_method('megabytes')

    klass.define_method('minute')

    klass.define_method('minutes')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('month')

    klass.define_method('months')

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('petabyte')

    klass.define_method('petabytes')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('second')

    klass.define_method('seconds')

    klass.define_method('since') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('terabyte')

    klass.define_method('terabytes')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_d')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('until') do |method|
      method.define_optional_argument('time')
    end

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('week')

    klass.define_method('weeks')

    klass.define_method('year')

    klass.define_method('years')

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('val')
      method.define_argument('sort_id')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('sort_id')

    klass.define_instance_method('value')
  end

  defs.define_constant('Sprockets::Railtie::OrderedOptions::State') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('from') do |method|
      method.define_argument('state')
    end

    klass.define_instance_method('compare_by_identity')

    klass.define_instance_method('compare_by_identity?')

    klass.define_instance_method('head')

    klass.define_instance_method('head=')

    klass.define_instance_method('initialize')

    klass.define_instance_method('match?') do |method|
      method.define_argument('this_key')
      method.define_argument('this_hash')
      method.define_argument('other_key')
      method.define_argument('other_hash')
    end

    klass.define_instance_method('tail')

    klass.define_instance_method('tail=')
  end

  defs.define_constant('Sprockets::SafetyColons') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::SassCompressor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::SassTemplate') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')

    klass.define_instance_method('syntax')
  end

  defs.define_constant('Sprockets::ScssTemplate') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::SassTemplate'))

    klass.define_instance_method('syntax')
  end

  defs.define_constant('Sprockets::StaticAsset') do |klass|
    klass.inherits(defs.constant_proxy('Sprockets::Asset'))

    klass.define_instance_method('source')

    klass.define_instance_method('to_path')

    klass.define_instance_method('write_to') do |method|
      method.define_argument('filename')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('Sprockets::UglifierCompressor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')
  end

  defs.define_constant('Sprockets::Utils') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_method('normalize_extension') do |method|
      method.define_argument('extension')
    end

    klass.define_method('read_unicode') do |method|
      method.define_argument('pathname')
      method.define_optional_argument('external_encoding')
    end
  end

  defs.define_constant('Sprockets::Utils::UTF8_BOM_PATTERN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('multiline?')

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('Sprockets::VERSION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_method('b')

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

    klass.define_method('index') do |method|
      method.define_argument('str')
      method.define_optional_argument('start')
    end

    klass.define_method('insert') do |method|
      method.define_argument('index')
      method.define_argument('other')
    end

    klass.define_method('intern')

    klass.define_method('is_binary_data?')

    klass.define_method('is_complex_yaml?')

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

  defs.define_constant('Sprockets::YUICompressor') do |klass|
    klass.inherits(defs.constant_proxy('Tilt::Template'))

    klass.define_method('engine_initialized?')

    klass.define_instance_method('evaluate') do |method|
      method.define_argument('context')
      method.define_argument('locals')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize_engine')

    klass.define_instance_method('prepare')
  end
end
