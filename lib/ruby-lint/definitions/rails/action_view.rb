##
# Constant: ActionView
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView') do |klass|

  klass.define_method('eager_load!')
end

##
# Constant: ActionView::AbstractRenderer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::AbstractRenderer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('extract_details') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('find_template') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('formats') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('instrument') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('prepend_formats') do |method|
    method.define_argument('formats')
  end

  klass.define_instance_method('render')

  klass.define_instance_method('template_exists?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_fallbacks') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_layout_format') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

##
# Constant: ActionView::ActionViewError
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::ActionViewError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))
end

##
# Constant: ActionView::Base
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('_routes')

  klass.define_method('_routes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_routes?')

  klass.define_method('cache_template_loading')

  klass.define_method('cache_template_loading=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_form_builder')

  klass.define_method('default_form_builder=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('default_formats')

  klass.define_method('default_formats=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('erb_trim_mode=') do |method|
    method.define_argument('arg')
  end

  klass.define_method('field_error_proc')

  klass.define_method('field_error_proc=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('val')
  end

  klass.define_method('logger?')

  klass.define_method('prefix_partial_path_with_controller_namespace')

  klass.define_method('prefix_partial_path_with_controller_namespace=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('streaming_completion_on_exception')

  klass.define_method('streaming_completion_on_exception=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('xss_safe?')

  klass.define_instance_method('_routes')

  klass.define_instance_method('_routes=')

  klass.define_instance_method('_routes?')

  klass.define_instance_method('assign') do |method|
    method.define_argument('new_assigns')
  end

  klass.define_instance_method('assigns')

  klass.define_instance_method('assigns=')

  klass.define_instance_method('config')

  klass.define_instance_method('config=')

  klass.define_instance_method('default_form_builder')

  klass.define_instance_method('default_form_builder=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('default_formats')

  klass.define_instance_method('default_formats=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('field_error_proc')

  klass.define_instance_method('field_error_proc=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('formats') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('formats=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('locale') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('locale=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=')

  klass.define_instance_method('logger?')

  klass.define_instance_method('lookup_context') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prefix_partial_path_with_controller_namespace')

  klass.define_instance_method('prefix_partial_path_with_controller_namespace=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('streaming_completion_on_exception')

  klass.define_instance_method('streaming_completion_on_exception=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('view_paths') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('view_paths=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('view_renderer')

  klass.define_instance_method('view_renderer=')
end

##
# Constant: ActionView::CompiledTemplates
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::CompiledTemplates') do |klass|
end

##
# Constant: ActionView::Context
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Context') do |klass|

  klass.define_instance_method('_layout_for') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('_prepare_context')

  klass.define_instance_method('output_buffer')

  klass.define_instance_method('output_buffer=')

  klass.define_instance_method('view_flow')

  klass.define_instance_method('view_flow=')
end

##
# Constant: ActionView::DependencyTracker
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::DependencyTracker') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('find_dependencies') do |method|
    method.define_argument('name')
    method.define_argument('template')
  end

  klass.define_method('register_tracker') do |method|
    method.define_argument('extension')
    method.define_argument('tracker')
  end

  klass.define_method('remove_tracker') do |method|
    method.define_argument('handler')
  end
end

##
# Constant: ActionView::Digestor
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Digestor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('cache')

  klass.define_method('digest') do |method|
    method.define_argument('name')
    method.define_argument('format')
    method.define_argument('finder')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('cache')

  klass.define_instance_method('dependencies')

  klass.define_instance_method('digest')

  klass.define_instance_method('finder')

  klass.define_instance_method('format')

  klass.define_instance_method('name')

  klass.define_instance_method('nested_dependencies')

  klass.define_instance_method('options')
end

##
# Constant: ActionView::ENCODING_FLAG
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::ENCODING_FLAG') do |klass|
end

##
# Constant: ActionView::EncodingError
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::EncodingError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))
end

##
# Constant: ActionView::FallbackFileSystemResolver
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::FallbackFileSystemResolver') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::FileSystemResolver'))

  klass.define_method('instances')

  klass.define_instance_method('decorate') do |method|
    method.define_rest_argument('')
  end
end

##
# Constant: ActionView::FileSystemResolver
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::FileSystemResolver') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::PathResolver'))

  klass.define_instance_method('==') do |method|
    method.define_argument('resolver')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('resolver')
  end

  klass.define_instance_method('to_path')

  klass.define_instance_method('to_s')
end

##
# Constant: ActionView::Helpers
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Helpers') do |klass|
end

##
# Constant: ActionView::LogSubscriber
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::LogSubscriber') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::LogSubscriber'))

  klass.define_instance_method('from_rails_root') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('render_collection') do |method|
    method.define_argument('event')
  end

  klass.define_instance_method('render_partial') do |method|
    method.define_argument('event')
  end

  klass.define_instance_method('render_template') do |method|
    method.define_argument('event')
  end
end

##
# Constant: ActionView::LookupContext
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::LookupContext') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('fallbacks')

  klass.define_method('fallbacks=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('register_detail') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('registered_details')

  klass.define_method('registered_details=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('fallbacks')

  klass.define_instance_method('fallbacks=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('formats=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('locale')

  klass.define_instance_method('locale=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('prefixes')

  klass.define_instance_method('prefixes=')

  klass.define_instance_method('registered_details')

  klass.define_instance_method('registered_details=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('rendered_format')

  klass.define_instance_method('rendered_format=')

  klass.define_instance_method('skip_default_locale!')

  klass.define_instance_method('with_layout_format')
end

##
# Constant: ActionView::MissingRequestError
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::MissingRequestError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))
end

##
# Constant: ActionView::MissingTemplate
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::MissingTemplate') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::ActionViewError'))

  klass.define_instance_method('path')
end

##
# Constant: ActionView::ModelNaming
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::ModelNaming') do |klass|

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end
end

##
# Constant: ActionView::OptimizedFileSystemResolver
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::OptimizedFileSystemResolver') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::FileSystemResolver'))

  klass.define_instance_method('build_query') do |method|
    method.define_argument('path')
    method.define_argument('details')
  end
end

##
# Constant: ActionView::OutputBuffer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::OutputBuffer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::SafeBuffer'))

  klass.define_instance_method('<<') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('append=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('safe_append=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('value')
  end
end

##
# Constant: ActionView::OutputFlow
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::OutputFlow') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('append') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('append!') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('content')

  klass.define_instance_method('get') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end
end

##
# Constant: ActionView::PartialDigestor
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::PartialDigestor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::Digestor'))

  klass.define_instance_method('partial?')
end

##
# Constant: ActionView::PartialRenderer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::PartialRenderer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::AbstractRenderer'))

  klass.define_instance_method('render') do |method|
    method.define_argument('context')
    method.define_argument('options')
    method.define_argument('block')
  end

  klass.define_instance_method('render_collection')

  klass.define_instance_method('render_partial')
end

##
# Constant: ActionView::PathResolver
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::PathResolver') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::Resolver'))
end

##
# Constant: ActionView::PathSet
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::PathSet') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('+') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('<<') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('compact')

  klass.define_instance_method('concat') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('exists?') do |method|
    method.define_argument('path')
    method.define_argument('prefixes')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_argument('path')
    method.define_optional_argument('prefixes')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('include?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('insert') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('paths')

  klass.define_instance_method('pop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('push') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('size') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_ary')

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: ActionView::Railtie
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Railtie'))
end

##
# Constant: ActionView::RecordIdentifier
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::RecordIdentifier') do |klass|

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record_or_class')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('record_key_for_dom_id') do |method|
    method.define_argument('record')
  end
end

##
# Constant: ActionView::Renderer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Renderer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('lookup_context')

  klass.define_instance_method('lookup_context=')

  klass.define_instance_method('render') do |method|
    method.define_argument('context')
    method.define_argument('options')
  end

  klass.define_instance_method('render_body') do |method|
    method.define_argument('context')
    method.define_argument('options')
  end

  klass.define_instance_method('render_partial') do |method|
    method.define_argument('context')
    method.define_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('render_template') do |method|
    method.define_argument('context')
    method.define_argument('options')
  end
end

##
# Constant: ActionView::Resolver
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Resolver') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('caching')

  klass.define_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('caching?')

  klass.define_instance_method('caching')

  klass.define_instance_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('caching?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_cache')

  klass.define_instance_method('find_all') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefix')
    method.define_optional_argument('partial')
    method.define_optional_argument('details')
    method.define_optional_argument('key')
    method.define_optional_argument('locals')
  end
end

##
# Constant: ActionView::RoutingUrlFor
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::RoutingUrlFor') do |klass|

  klass.define_method('default_url_options=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('_routes_context')

  klass.define_instance_method('default_url_options=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('optimize_routes_generation?')

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_options')
end

##
# Constant: ActionView::StreamingBuffer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::StreamingBuffer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('<<') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('append=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('html_safe')

  klass.define_instance_method('html_safe?')

  klass.define_instance_method('safe_append=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('value')
  end
end

##
# Constant: ActionView::StreamingFlow
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::StreamingFlow') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::OutputFlow'))

  klass.define_instance_method('append!') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('get') do |method|
    method.define_argument('key')
  end
end

##
# Constant: ActionView::StreamingTemplateRenderer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::StreamingTemplateRenderer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::TemplateRenderer'))

  klass.define_instance_method('render_template') do |method|
    method.define_argument('template')
    method.define_optional_argument('layout_name')
    method.define_optional_argument('locals')
  end
end

##
# Constant: ActionView::Template
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::Template') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('compile') do |method|
    method.define_argument('view')
    method.define_argument('mod')
  end

  klass.define_instance_method('compile!') do |method|
    method.define_argument('view')
  end

  klass.define_instance_method('encode!')

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=')

  klass.define_instance_method('handle_render_error') do |method|
    method.define_argument('view')
    method.define_argument('e')
  end

  klass.define_instance_method('handler')

  klass.define_instance_method('identifier')

  klass.define_instance_method('identifier_method_name')

  klass.define_instance_method('inspect')

  klass.define_instance_method('locals')

  klass.define_instance_method('locals=')

  klass.define_instance_method('locals_code')

  klass.define_instance_method('method_name')

  klass.define_instance_method('mime_type')

  klass.define_instance_method('original_encoding')

  klass.define_instance_method('refresh') do |method|
    method.define_argument('view')
  end

  klass.define_instance_method('render') do |method|
    method.define_argument('view')
    method.define_argument('locals')
    method.define_optional_argument('buffer')
    method.define_block_argument('block')
  end

  klass.define_instance_method('source')

  klass.define_instance_method('supports_streaming?')

  klass.define_instance_method('type')

  klass.define_instance_method('updated_at')

  klass.define_instance_method('virtual_path')

  klass.define_instance_method('virtual_path=')
end

##
# Constant: ActionView::TemplateError
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::TemplateError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::ActionViewError'))

  klass.define_instance_method('annoted_source_code')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('file_name')

  klass.define_instance_method('line_number')

  klass.define_instance_method('original_exception')

  klass.define_instance_method('source_extract') do |method|
    method.define_optional_argument('indentation')
    method.define_optional_argument('output')
  end

  klass.define_instance_method('sub_template_message')

  klass.define_instance_method('sub_template_of') do |method|
    method.define_argument('template_path')
  end
end

##
# Constant: ActionView::TemplateRenderer
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::TemplateRenderer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::AbstractRenderer'))

  klass.define_instance_method('determine_template') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('find_layout') do |method|
    method.define_argument('layout')
    method.define_argument('keys')
  end

  klass.define_instance_method('render') do |method|
    method.define_argument('context')
    method.define_argument('options')
  end

  klass.define_instance_method('render_template') do |method|
    method.define_argument('template')
    method.define_optional_argument('layout_name')
    method.define_optional_argument('locals')
  end

  klass.define_instance_method('render_with_layout') do |method|
    method.define_argument('path')
    method.define_argument('locals')
  end

  klass.define_instance_method('resolve_layout') do |method|
    method.define_argument('layout')
    method.define_argument('keys')
  end
end

##
# Constant: ActionView::TestCase
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::TestCase'))

  klass.define_method('_helper_methods')

  klass.define_method('_helper_methods=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_helper_methods?')

  klass.define_method('_helpers')

  klass.define_method('_helpers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_helpers?')

  klass.define_method('_setup_callbacks')

  klass.define_method('_teardown_callbacks')

  klass.define_instance_method('_helper_methods')

  klass.define_instance_method('_helper_methods=')

  klass.define_instance_method('_helper_methods?')

  klass.define_instance_method('_helpers')

  klass.define_instance_method('_helpers=')

  klass.define_instance_method('_helpers?')
end

##
# Constant: ActionView::WrongEncodingError
# Created:  2013-07-06 18:52:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionView::WrongEncodingError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionView::EncodingError'))

  klass.define_instance_method('message')
end