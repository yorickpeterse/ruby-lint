##
# Constant: Sprockets
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets') do |klass|
end

##
# Constant: Sprockets::ArgumentError
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::ArgumentError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Error'))
end

##
# Constant: Sprockets::Asset
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Asset') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

##
# Constant: Sprockets::AssetAttributes
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::AssetAttributes') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

##
# Constant: Sprockets::Base
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

  klass.define_instance_method('cache')

  klass.define_instance_method('cache=') do |method|
    method.define_argument('cache')
  end

  klass.define_instance_method('cache_key_for') do |method|
    method.define_argument('path')
    method.define_argument('options')
  end

  klass.define_instance_method('circular_call_protection') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('clear_paths')

  klass.define_instance_method('content_type_of') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('context_class')

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

  klass.define_instance_method('entries') do |method|
    method.define_argument('pathname')
  end

  klass.define_instance_method('expire_index!')

  klass.define_instance_method('file_digest') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('find_asset') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('index')

  klass.define_instance_method('inspect')

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

  klass.define_instance_method('prepend_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('register_bundle_processor') do |method|
    method.define_argument('mime_type')
    method.define_argument('klass')
    method.define_block_argument('block')
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

  klass.define_instance_method('resolve') do |method|
    method.define_argument('logical_path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('stat') do |method|
    method.define_argument('path')
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

  klass.define_instance_method('version')

  klass.define_instance_method('version=') do |method|
    method.define_argument('version')
  end
end

##
# Constant: Sprockets::BundledAsset
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::BundledAsset') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Asset'))

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

  klass.define_instance_method('source')

  klass.define_instance_method('to_a')
end

##
# Constant: Sprockets::Cache
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Cache') do |klass|
end

##
# Constant: Sprockets::CharsetNormalizer
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::CharsetNormalizer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::CircularDependencyError
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::CircularDependencyError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Error'))
end

##
# Constant: Sprockets::ClosureCompressor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::ClosureCompressor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('engine_initialized?')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::Compressing
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Compressing') do |klass|

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

##
# Constant: Sprockets::ContentTypeMismatch
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::ContentTypeMismatch') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Error'))
end

##
# Constant: Sprockets::Context
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Context') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

##
# Constant: Sprockets::DirectiveProcessor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::DirectiveProcessor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

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

##
# Constant: Sprockets::EcoTemplate
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::EcoTemplate') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('engine_initialized?')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('scope')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::EjsTemplate
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::EjsTemplate') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('engine_initialized?')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('scope')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::EngineError
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::EngineError') do |klass|

  klass.define_instance_method('message')

  klass.define_instance_method('sprockets_annotation')

  klass.define_instance_method('sprockets_annotation=')
end

##
# Constant: Sprockets::Engines
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Engines') do |klass|

  klass.define_instance_method('engine_extensions')

  klass.define_instance_method('engines') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_instance_method('register_engine') do |method|
    method.define_argument('ext')
    method.define_argument('klass')
  end
end

##
# Constant: Sprockets::Environment
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Environment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Base'))

  klass.define_instance_method('expire_index!')

  klass.define_instance_method('find_asset') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('index')
end

##
# Constant: Sprockets::Error
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Error') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))
end

##
# Constant: Sprockets::FileNotFound
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::FileNotFound') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Error'))
end

##
# Constant: Sprockets::Index
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Index') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Base'))

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
end

##
# Constant: Sprockets::JstProcessor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::JstProcessor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('default_namespace')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('scope')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('namespace')

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::Manifest
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Manifest') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

##
# Constant: Sprockets::Mime
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Mime') do |klass|

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

##
# Constant: Sprockets::Paths
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Paths') do |klass|

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

##
# Constant: Sprockets::ProcessedAsset
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::ProcessedAsset') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Asset'))

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

  klass.define_instance_method('source')
end

##
# Constant: Sprockets::Processing
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Processing') do |klass|

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

##
# Constant: Sprockets::Processor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Processor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('name')

  klass.define_method('processor')

  klass.define_method('to_s')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
  end

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::Rails
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Rails') do |klass|
end

##
# Constant: Sprockets::Railtie
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Railtie'))
end

##
# Constant: Sprockets::SafetyColons
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::SafetyColons') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::SassCompressor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::SassCompressor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('engine_initialized?')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::SassTemplate
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::SassTemplate') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

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

##
# Constant: Sprockets::ScssTemplate
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::ScssTemplate') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::SassTemplate'))

  klass.define_instance_method('syntax')
end

##
# Constant: Sprockets::StaticAsset
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::StaticAsset') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Sprockets::Asset'))

  klass.define_instance_method('source')

  klass.define_instance_method('to_path')

  klass.define_instance_method('write_to') do |method|
    method.define_argument('filename')
    method.define_optional_argument('options')
  end
end

##
# Constant: Sprockets::UglifierCompressor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::UglifierCompressor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('engine_initialized?')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('prepare')
end

##
# Constant: Sprockets::Utils
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::Utils') do |klass|

  klass.define_method('normalize_extension') do |method|
    method.define_argument('extension')
  end

  klass.define_method('read_unicode') do |method|
    method.define_argument('pathname')
    method.define_optional_argument('external_encoding')
  end
end

##
# Constant: Sprockets::VERSION
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::VERSION') do |klass|
end

##
# Constant: Sprockets::YUICompressor
# Created:  2013-07-06 18:52:19 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Sprockets::YUICompressor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Tilt::Template'))

  klass.define_method('engine_initialized?')

  klass.define_instance_method('evaluate') do |method|
    method.define_argument('context')
    method.define_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('initialize_engine')

  klass.define_instance_method('prepare')
end