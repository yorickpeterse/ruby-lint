# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:56 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('ActionView') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoloads')

  klass.define_method('eager_autoload')

  klass.define_method('eager_load!')

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::AbstractRenderer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::ActionViewError') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::Base') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('_routes')

  klass.define_method('_routes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_routes?')

  klass.define_method('_url_for_modules')

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

  klass.define_method('full_sanitizer')

  klass.define_method('full_sanitizer=')

  klass.define_method('link_sanitizer')

  klass.define_method('link_sanitizer=')

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('val')
  end

  klass.define_method('logger?')

  klass.define_method('prefix_partial_path_with_controller_namespace')

  klass.define_method('prefix_partial_path_with_controller_namespace=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('sanitized_allowed_attributes')

  klass.define_method('sanitized_allowed_attributes=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_css_keywords')

  klass.define_method('sanitized_allowed_css_keywords=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_css_properties')

  klass.define_method('sanitized_allowed_css_properties=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_protocols')

  klass.define_method('sanitized_allowed_protocols=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_tags')

  klass.define_method('sanitized_allowed_tags=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_bad_tags')

  klass.define_method('sanitized_bad_tags=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_protocol_separator')

  klass.define_method('sanitized_protocol_separator=') do |method|
    method.define_argument('value')
  end

  klass.define_method('sanitized_shorthand_css_properties')

  klass.define_method('sanitized_shorthand_css_properties=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_uri_attributes')

  klass.define_method('sanitized_uri_attributes=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('streaming_completion_on_exception')

  klass.define_method('streaming_completion_on_exception=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('white_list_sanitizer')

  klass.define_method('white_list_sanitizer=')

  klass.define_method('xss_safe?')

  klass.define_instance_method('_back_url')

  klass.define_instance_method('_layout_for') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_prepare_context')

  klass.define_instance_method('_routes')

  klass.define_instance_method('_routes=')

  klass.define_instance_method('_routes?')

  klass.define_instance_method('action_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('asset_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('asset_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('assign') do |method|
    method.define_argument('new_assigns')
  end

  klass.define_instance_method('assign_controller') do |method|
    method.define_argument('controller')
  end

  klass.define_instance_method('assigns')

  klass.define_instance_method('assigns=')

  klass.define_instance_method('atom_feed') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
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

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('button_tag') do |method|
    method.define_optional_argument('content_or_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('button_to') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('button_to_function') do |method|
    method.define_argument('name')
    method.define_optional_argument('function')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('cache') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_fragment_name') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('cache_if') do |method|
    method.define_argument('condition')
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_unless') do |method|
    method.define_argument('condition')
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cdata_section') do |method|
    method.define_argument('content')
  end

  klass.define_instance_method('check_box') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('checked_value')
    method.define_optional_argument('unchecked_value')
  end

  klass.define_instance_method('check_box_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('checked')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('collection_check_boxes') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collection_radio_buttons') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collection_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('color_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('color_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
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
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('config=')

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

  klass.define_instance_method('content_tag_for') do |method|
    method.define_argument('tag_name')
    method.define_argument('single_or_multiple_records')
    method.define_optional_argument('prefix')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('controller')

  klass.define_instance_method('controller=')

  klass.define_instance_method('controller_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('controller_path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('cookies') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('csrf_meta_tag')

  klass.define_instance_method('csrf_meta_tags')

  klass.define_instance_method('current_cycle') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('current_page?') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_argument('first_value')
    method.define_rest_argument('values')
  end

  klass.define_instance_method('date_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('date_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('date_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('datetime_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_local_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_local_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('debug') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('default_form_builder')

  klass.define_instance_method('default_form_builder=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('default_formats')

  klass.define_instance_method('default_formats=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('distance_of_time_in_words') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('to_time')
    method.define_optional_argument('include_seconds_or_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('distance_of_time_in_words_to_now') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('include_seconds_or_options')
  end

  klass.define_instance_method('div_for') do |method|
    method.define_argument('record')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record_or_class')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('email_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('email_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('embed_authenticity_token_in_remote_forms')

  klass.define_instance_method('embed_authenticity_token_in_remote_forms=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('escape_javascript') do |method|
    method.define_argument('javascript')
  end

  klass.define_instance_method('escape_once') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('excerpt') do |method|
    method.define_argument('text')
    method.define_argument('phrase')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('favicon_link_tag') do |method|
    method.define_optional_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('field_error_proc')

  klass.define_instance_method('field_error_proc=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('field_set_tag') do |method|
    method.define_optional_argument('legend')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fields_for') do |method|
    method.define_argument('record_name')
    method.define_optional_argument('record_object')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('file_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('flash') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('form_for') do |method|
    method.define_argument('record')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('form_tag') do |method|
    method.define_optional_argument('url_for_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('formats') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('formats=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('grouped_collection_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('group_method')
    method.define_argument('group_label_method')
    method.define_argument('option_key_method')
    method.define_argument('option_value_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('grouped_options_for_select') do |method|
    method.define_argument('grouped_options')
    method.define_optional_argument('selected_key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('headers') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('hidden_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('hidden_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('highlight') do |method|
    method.define_argument('text')
    method.define_argument('phrases')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('image_alt') do |method|
    method.define_argument('src')
  end

  klass.define_instance_method('image_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('image_submit_tag') do |method|
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

  klass.define_instance_method('j') do |method|
    method.define_argument('javascript')
  end

  klass.define_instance_method('javascript_cdata_section') do |method|
    method.define_argument('content')
  end

  klass.define_instance_method('javascript_include_tag') do |method|
    method.define_rest_argument('sources')
  end

  klass.define_instance_method('javascript_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('javascript_tag') do |method|
    method.define_optional_argument('content_or_options_with_block')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('javascript_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('l') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('label') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('content_or_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('label_tag') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('content_or_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to_function') do |method|
    method.define_argument('name')
    method.define_argument('function')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('link_to_if') do |method|
    method.define_argument('condition')
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to_unless') do |method|
    method.define_argument('condition')
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to_unless_current') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('locale') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('locale=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('localize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=')

  klass.define_instance_method('logger?')

  klass.define_instance_method('lookup_context') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mail_to') do |method|
    method.define_argument('email_address')
    method.define_optional_argument('name')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('month_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('month_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_currency') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human_size') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_percentage') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_phone') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_with_delimiter') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_with_precision') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('option_groups_from_collection_for_select') do |method|
    method.define_argument('collection')
    method.define_argument('group_method')
    method.define_argument('group_label_method')
    method.define_argument('option_key_method')
    method.define_argument('option_value_method')
    method.define_optional_argument('selected_key')
  end

  klass.define_instance_method('options_for_select') do |method|
    method.define_argument('container')
    method.define_optional_argument('selected')
  end

  klass.define_instance_method('options_from_collection_for_select') do |method|
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('selected')
  end

  klass.define_instance_method('output_buffer')

  klass.define_instance_method('output_buffer=')

  klass.define_instance_method('params') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('password_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('password_field_tag') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('value')
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

  klass.define_instance_method('phone_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('phone_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('pluralize') do |method|
    method.define_argument('count')
    method.define_argument('singular')
    method.define_optional_argument('plural')
  end

  klass.define_instance_method('prefix_partial_path_with_controller_namespace')

  klass.define_instance_method('prefix_partial_path_with_controller_namespace=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('provide') do |method|
    method.define_argument('name')
    method.define_optional_argument('content')
    method.define_block_argument('block')
  end

  klass.define_instance_method('radio_button') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_argument('tag_value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('radio_button_tag') do |method|
    method.define_argument('name')
    method.define_argument('value')
    method.define_optional_argument('checked')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('range_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('range_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('raw') do |method|
    method.define_argument('stringish')
  end

  klass.define_instance_method('record_key_for_dom_id') do |method|
    method.define_argument('record')
  end

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('request_forgery_protection_token') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reset_cycle') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('response') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('safe_join') do |method|
    method.define_argument('array')
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('sanitize') do |method|
    method.define_argument('html')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('sanitize_css') do |method|
    method.define_argument('style')
  end

  klass.define_instance_method('search_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('search_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('choices')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_date') do |method|
    method.define_optional_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_datetime') do |method|
    method.define_optional_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_day') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_hour') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_minute') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_month') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_second') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('option_tags')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('select_time') do |method|
    method.define_optional_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_year') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('session') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('simple_format') do |method|
    method.define_argument('text')
    method.define_optional_argument('html_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('streaming_completion_on_exception')

  klass.define_instance_method('streaming_completion_on_exception=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('strip_links') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('strip_tags') do |method|
    method.define_argument('html')
  end

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

  klass.define_instance_method('submit_tag') do |method|
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('t') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('open')
    method.define_optional_argument('escape')
  end

  klass.define_instance_method('telephone_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('telephone_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_area') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_area_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('content')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('time_ago_in_words') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('include_seconds_or_options')
  end

  klass.define_instance_method('time_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('time_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('time_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('time_tag') do |method|
    method.define_argument('date_or_time')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('time_zone_options_for_select') do |method|
    method.define_optional_argument('selected')
    method.define_optional_argument('priority_zones')
    method.define_optional_argument('model')
  end

  klass.define_instance_method('time_zone_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_optional_argument('priority_zones')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('translate') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('truncate') do |method|
    method.define_argument('text')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('url_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
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

  klass.define_instance_method('utf8_enforcer_tag')

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

  klass.define_instance_method('view_flow')

  klass.define_instance_method('view_flow=')

  klass.define_instance_method('view_paths') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('view_paths=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('view_renderer')

  klass.define_instance_method('view_renderer=')

  klass.define_instance_method('week_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('week_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('with_output_buffer') do |method|
    method.define_optional_argument('buf')
  end

  klass.define_instance_method('word_wrap') do |method|
    method.define_argument('text')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::CompiledTemplates') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::Context') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_layout_for') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('_prepare_context')

  klass.define_instance_method('output_buffer')

  klass.define_instance_method('output_buffer=')

  klass.define_instance_method('view_flow')

  klass.define_instance_method('view_flow=')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::DependencyTracker') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::Digestor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::ENCODING_FLAG') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::EncodingError') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::FallbackFileSystemResolver') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::FileSystemResolver'))

  klass.define_method('caching')

  klass.define_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('caching?')

  klass.define_method('instances')

  klass.define_instance_method('caching')

  klass.define_instance_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('caching?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_cache')

  klass.define_instance_method('decorate') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefix')
    method.define_optional_argument('partial')
    method.define_optional_argument('details')
    method.define_optional_argument('key')
    method.define_optional_argument('locals')
  end

  klass.define_instance_method('to_path')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::FileSystemResolver') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::PathResolver'))

  klass.define_method('caching')

  klass.define_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('caching?')

  klass.define_instance_method('==') do |method|
    method.define_argument('resolver')
  end

  klass.define_instance_method('caching')

  klass.define_instance_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('caching?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_cache')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('resolver')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefix')
    method.define_optional_argument('partial')
    method.define_optional_argument('details')
    method.define_optional_argument('key')
    method.define_optional_argument('locals')
  end

  klass.define_instance_method('to_path')

  klass.define_instance_method('to_s')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::Helpers') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoloads')

  klass.define_method('eager_autoload')

  klass.define_method('eager_load!')

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_layout_for') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('action_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('asset_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('asset_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('assign_controller') do |method|
    method.define_argument('controller')
  end

  klass.define_instance_method('atom_feed') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('audio_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('audio_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('button_to_function') do |method|
    method.define_argument('name')
    method.define_optional_argument('function')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('cache') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_fragment_name') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('cache_if') do |method|
    method.define_argument('condition')
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_unless') do |method|
    method.define_argument('condition')
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cdata_section') do |method|
    method.define_argument('content')
  end

  klass.define_instance_method('collection_check_boxes') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collection_radio_buttons') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collection_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
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
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('string')
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

  klass.define_instance_method('content_tag_for') do |method|
    method.define_argument('tag_name')
    method.define_argument('single_or_multiple_records')
    method.define_optional_argument('prefix')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('controller')

  klass.define_instance_method('controller=')

  klass.define_instance_method('controller_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('controller_path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('cookies') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('csrf_meta_tag')

  klass.define_instance_method('csrf_meta_tags')

  klass.define_instance_method('current_cycle') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_argument('first_value')
    method.define_rest_argument('values')
  end

  klass.define_instance_method('date_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('datetime_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('debug') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('distance_of_time_in_words') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('to_time')
    method.define_optional_argument('include_seconds_or_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('distance_of_time_in_words_to_now') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('include_seconds_or_options')
  end

  klass.define_instance_method('div_for') do |method|
    method.define_argument('record')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record_or_class')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('escape_javascript') do |method|
    method.define_argument('javascript')
  end

  klass.define_instance_method('escape_once') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('excerpt') do |method|
    method.define_argument('text')
    method.define_argument('phrase')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('flash') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('grouped_collection_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('group_method')
    method.define_argument('group_label_method')
    method.define_argument('option_key_method')
    method.define_argument('option_value_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('grouped_options_for_select') do |method|
    method.define_argument('grouped_options')
    method.define_optional_argument('selected_key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('headers') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('highlight') do |method|
    method.define_argument('text')
    method.define_argument('phrases')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('image_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('image_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('j') do |method|
    method.define_argument('javascript')
  end

  klass.define_instance_method('javascript_cdata_section') do |method|
    method.define_argument('content')
  end

  klass.define_instance_method('javascript_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('javascript_tag') do |method|
    method.define_optional_argument('content_or_options_with_block')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('javascript_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('l') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('link_to_function') do |method|
    method.define_argument('name')
    method.define_argument('function')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('localize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('number_to_currency') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human_size') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_percentage') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_phone') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_with_delimiter') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_with_precision') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('option_groups_from_collection_for_select') do |method|
    method.define_argument('collection')
    method.define_argument('group_method')
    method.define_argument('group_label_method')
    method.define_argument('option_key_method')
    method.define_argument('option_value_method')
    method.define_optional_argument('selected_key')
  end

  klass.define_instance_method('options_for_select') do |method|
    method.define_argument('container')
    method.define_optional_argument('selected')
  end

  klass.define_instance_method('options_from_collection_for_select') do |method|
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('selected')
  end

  klass.define_instance_method('params') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('pluralize') do |method|
    method.define_argument('count')
    method.define_argument('singular')
    method.define_optional_argument('plural')
  end

  klass.define_instance_method('provide') do |method|
    method.define_argument('name')
    method.define_optional_argument('content')
    method.define_block_argument('block')
  end

  klass.define_instance_method('raw') do |method|
    method.define_argument('stringish')
  end

  klass.define_instance_method('record_key_for_dom_id') do |method|
    method.define_argument('record')
  end

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('locals')
    method.define_block_argument('block')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('request_forgery_protection_token') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reset_cycle') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('response') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('safe_join') do |method|
    method.define_argument('array')
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('sanitize') do |method|
    method.define_argument('html')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('sanitize_css') do |method|
    method.define_argument('style')
  end

  klass.define_instance_method('select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('choices')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_date') do |method|
    method.define_optional_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_datetime') do |method|
    method.define_optional_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_day') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_hour') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_minute') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_month') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_second') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_time') do |method|
    method.define_optional_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_year') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('session') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('simple_format') do |method|
    method.define_argument('text')
    method.define_optional_argument('html_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('strip_links') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('strip_tags') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('stylesheet_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('stylesheet_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('t') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('open')
    method.define_optional_argument('escape')
  end

  klass.define_instance_method('time_ago_in_words') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('include_seconds_or_options')
  end

  klass.define_instance_method('time_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('time_tag') do |method|
    method.define_argument('date_or_time')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('time_zone_options_for_select') do |method|
    method.define_optional_argument('selected')
    method.define_optional_argument('priority_zones')
    method.define_optional_argument('model')
  end

  klass.define_instance_method('time_zone_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_optional_argument('priority_zones')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('translate') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('truncate') do |method|
    method.define_argument('text')
    method.define_optional_argument('options')
    method.define_block_argument('block')
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

  klass.define_instance_method('video_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('with_output_buffer') do |method|
    method.define_optional_argument('buf')
  end

  klass.define_instance_method('word_wrap') do |method|
    method.define_argument('text')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::LogSubscriber') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::LogSubscriber'))

  klass.define_method('attach_to') do |method|
    method.define_argument('namespace')
    method.define_optional_argument('subscriber')
    method.define_optional_argument('notifier')
  end

  klass.define_method('colorize_logging')

  klass.define_method('colorize_logging=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('flush_all!')

  klass.define_method('log_subscribers')

  klass.define_method('logger')

  klass.define_method('logger=')

  klass.define_method('subscribers')

  klass.define_instance_method('color') do |method|
    method.define_argument('text')
    method.define_argument('color')
    method.define_optional_argument('bold')
  end

  klass.define_instance_method('colorize_logging')

  klass.define_instance_method('colorize_logging=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('debug') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('error') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fatal') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('finish') do |method|
    method.define_argument('name')
    method.define_argument('id')
    method.define_argument('payload')
  end

  klass.define_instance_method('from_rails_root') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('info') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
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

  klass.define_instance_method('start') do |method|
    method.define_argument('name')
    method.define_argument('id')
    method.define_argument('payload')
  end

  klass.define_instance_method('unknown') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('warn') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::LookupContext') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('_set_detail') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('args_for_lookup') do |method|
    method.define_argument('name')
    method.define_argument('prefixes')
    method.define_argument('partial')
    method.define_argument('keys')
    method.define_argument('details_options')
  end

  klass.define_instance_method('cache')

  klass.define_instance_method('cache=')

  klass.define_instance_method('default_formats')

  klass.define_instance_method('default_handlers')

  klass.define_instance_method('default_locale')

  klass.define_instance_method('detail_args_for') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('details_key')

  klass.define_instance_method('disable_cache')

  klass.define_instance_method('exists?') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefixes')
    method.define_optional_argument('partial')
    method.define_optional_argument('keys')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('fallbacks')

  klass.define_instance_method('fallbacks=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('find') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefixes')
    method.define_optional_argument('partial')
    method.define_optional_argument('keys')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefixes')
    method.define_optional_argument('partial')
    method.define_optional_argument('keys')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('find_template') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefixes')
    method.define_optional_argument('partial')
    method.define_optional_argument('keys')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('handlers')

  klass.define_instance_method('handlers=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('html_fallback_for_js')

  klass.define_instance_method('initialize_details') do |method|
    method.define_argument('details')
  end

  klass.define_instance_method('locale')

  klass.define_instance_method('locale=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('normalize_name') do |method|
    method.define_argument('name')
    method.define_argument('prefixes')
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

  klass.define_instance_method('template_exists?') do |method|
    method.define_argument('name')
    method.define_optional_argument('prefixes')
    method.define_optional_argument('partial')
    method.define_optional_argument('keys')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('view_paths')

  klass.define_instance_method('view_paths=') do |method|
    method.define_argument('paths')
  end

  klass.define_instance_method('with_fallbacks')

  klass.define_instance_method('with_layout_format')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::MissingRequestError') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::MissingTemplate') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::ActionViewError'))

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

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('parent')

  klass.define_instance_method('parent=')

  klass.define_instance_method('path')

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::ModelNaming') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::OptimizedFileSystemResolver') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::FileSystemResolver'))

  klass.define_method('caching')

  klass.define_method('caching=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('caching?')

  klass.define_instance_method('build_query') do |method|
    method.define_argument('path')
    method.define_argument('details')
  end

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

  klass.define_instance_method('to_path')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::OutputBuffer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::SafeBuffer'))

  klass.define_method('__allocate__')

  klass.define_method('from_bytearray') do |method|
    method.define_argument('bytes')
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_method('from_codepoint') do |method|
    method.define_argument('code')
    method.define_argument('enc')
  end

  klass.define_method('json_create')

  klass.define_method('pattern') do |method|
    method.define_argument('size')
    method.define_argument('str')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('args')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('count_or_replacement')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('__crypt__') do |method|
    method.define_argument('other_str')
  end

  klass.define_instance_method('__data__')

  klass.define_instance_method('__data__=')

  klass.define_instance_method('append') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('append=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('apply_and!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('ascii_only=')

  klass.define_instance_method('ascii_only?')

  klass.define_instance_method('at') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('byte_append') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('bytes')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('byteslice') do |method|
    method.define_argument('index_or_range')
    method.define_optional_argument('length')
  end

  klass.define_instance_method('camelcase') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_instance_method('camelize') do |method|
    method.define_optional_argument('first_letter')
  end

  klass.define_instance_method('capitalize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('capitalize!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('casecmp') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('center') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('chars')

  klass.define_instance_method('chomp') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chomp!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('chop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chop!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('chr')

  klass.define_instance_method('chr_at') do |method|
    method.define_argument('byte')
  end

  klass.define_instance_method('classify')

  klass.define_instance_method('clear')

  klass.define_instance_method('clone_empty')

  klass.define_instance_method('codepoints')

  klass.define_instance_method('column_of') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('compare_substring') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('size')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('constantize')

  klass.define_instance_method('convert_float')

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('count_table') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('crypt') do |method|
    method.define_argument('other_str')
  end

  klass.define_instance_method('dasherize')

  klass.define_instance_method('data')

  klass.define_instance_method('data=')

  klass.define_instance_method('deconstantize')

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('demodulize')

  klass.define_instance_method('downcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('downcase!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('dump')

  klass.define_instance_method('each_byte')

  klass.define_instance_method('each_char')

  klass.define_instance_method('each_codepoint')

  klass.define_instance_method('each_line') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('encode') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('encode!') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('encode_json') do |method|
    method.define_argument('encoder')
  end

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('encoding')

  klass.define_instance_method('encoding=')

  klass.define_instance_method('end_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('ends_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_instance_method('find_character') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('find_string') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_instance_method('find_string_reverse') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('force_encoding') do |method|
    method.define_argument('enc')
  end

  klass.define_instance_method('foreign_key') do |method|
    method.define_optional_argument('separate_class_name_and_id_with_underscore')
  end

  klass.define_instance_method('from') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('getbyte') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('gsub') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('hex')

  klass.define_instance_method('html_safe')

  klass.define_instance_method('humanize')

  klass.define_instance_method('in_time_zone') do |method|
    method.define_optional_argument('zone')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('needle')
  end

  klass.define_instance_method('indent') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('str')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('index')
    method.define_argument('other')
  end

  klass.define_instance_method('intern')

  klass.define_instance_method('is_utf8?')

  klass.define_instance_method('last') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('length')

  klass.define_instance_method('line_of') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('lines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('ljust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('lstrip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('lstrip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_instance_method('mb_chars')

  klass.define_instance_method('modify!')

  klass.define_instance_method('next') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('next!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('not_ascii_only?')

  klass.define_instance_method('num_bytes')

  klass.define_instance_method('num_bytes=') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('oct')

  klass.define_instance_method('ord')

  klass.define_instance_method('parameterize') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('partition') do |method|
    method.define_optional_argument('pattern')
  end

  klass.define_instance_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pathmap_explode')

  klass.define_instance_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pluralize') do |method|
    method.define_optional_argument('count')
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('prefix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('prepend') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prepend!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('reverse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('rindex') do |method|
    method.define_argument('sub')
    method.define_optional_argument('finish')
  end

  klass.define_instance_method('rjust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('rpartition') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('rstrip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rstrip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('safe_append=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('safe_constantize')

  klass.define_instance_method('scan') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('secure_compare') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('setbyte') do |method|
    method.define_argument('index')
    method.define_argument('byte')
  end

  klass.define_instance_method('shared!')

  klass.define_instance_method('shellescape')

  klass.define_instance_method('shellsplit')

  klass.define_instance_method('shorten!') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('singularize') do |method|
    method.define_optional_argument('locale')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('snake_case')

  klass.define_instance_method('split') do |method|
    method.define_optional_argument('pattern')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('squeeze') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('squeeze!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('squish')

  klass.define_instance_method('squish!')

  klass.define_instance_method('start_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('starts_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('strip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('strip!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('strip_heredoc')

  klass.define_instance_method('sub') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('substring') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_instance_method('succ') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('succ!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('suffix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('bits')
  end

  klass.define_instance_method('swapcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('swapcase!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('tableize')

  klass.define_instance_method('tabto') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('titlecase')

  klass.define_instance_method('titleize')

  klass.define_instance_method('to') do |method|
    method.define_argument('position')
  end

  klass.define_instance_method('to_ast') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('to_c')

  klass.define_instance_method('to_crlf')

  klass.define_instance_method('to_d')

  klass.define_instance_method('to_date')

  klass.define_instance_method('to_datetime')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i') do |method|
    method.define_optional_argument('base')
  end

  klass.define_instance_method('to_inum') do |method|
    method.define_argument('base')
    method.define_argument('check')
  end

  klass.define_instance_method('to_json_raw')

  klass.define_instance_method('to_json_raw_object')

  klass.define_instance_method('to_lf')

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_sexp') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('to_str')

  klass.define_instance_method('to_sub_replacement') do |method|
    method.define_argument('result')
    method.define_argument('match')
  end

  klass.define_instance_method('to_sym')

  klass.define_instance_method('to_time') do |method|
    method.define_optional_argument('form')
  end

  klass.define_instance_method('tr') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tr!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('tr_expand!') do |method|
    method.define_argument('limit')
    method.define_argument('invalid_as_empty')
  end

  klass.define_instance_method('tr_s') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tr_s!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('tr_trans') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
    method.define_argument('squeeze')
  end

  klass.define_instance_method('transform') do |method|
    method.define_argument('tbl')
    method.define_argument('respect_kcode')
  end

  klass.define_instance_method('treetop_camelize')

  klass.define_instance_method('truncate') do |method|
    method.define_argument('truncate_at')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('underscore')

  klass.define_instance_method('unpack') do |method|
    method.define_argument('directives')
  end

  klass.define_instance_method('upcase') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('upcase!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('upto') do |method|
    method.define_argument('stop')
    method.define_optional_argument('exclusive')
  end

  klass.define_instance_method('valid_encoding=')

  klass.define_instance_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::OutputFlow') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::PartialDigestor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::Digestor'))

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

  klass.define_instance_method('partial?')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::PartialRenderer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::AbstractRenderer'))

  klass.define_instance_method('extract_details') do |method|
    method.define_argument('options')
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

  klass.define_instance_method('render') do |method|
    method.define_argument('context')
    method.define_argument('options')
    method.define_argument('block')
  end

  klass.define_instance_method('render_collection')

  klass.define_instance_method('render_partial')

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::PathResolver') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::Resolver'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::PathSet') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('compact')

  klass.define_instance_method('concat') do |method|
    method.define_rest_argument('args')
  end

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
    method.define_block_argument('block')
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

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('object')
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

  klass.define_instance_method('find_index') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('include?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('insert') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('paths')

  klass.define_instance_method('pop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('push') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('size') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('prc')
  end

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

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::Railtie') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::RecordIdentifier') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_method('dom_class') do |method|
    method.define_argument('record_or_class')
    method.define_optional_argument('prefix')
  end

  klass.define_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_method('record_key_for_dom_id') do |method|
    method.define_argument('record')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record_or_class')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('record_key_for_dom_id') do |method|
    method.define_argument('record')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::Renderer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::Resolver') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::RoutingUrlFor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('default_url_options=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_routes_context')

  klass.define_instance_method('_with_routes') do |method|
    method.define_argument('routes')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('default_url_options=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('edit_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('edit_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('new_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('new_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('optimize_routes_generation?')

  klass.define_instance_method('polymorphic_path') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('polymorphic_url') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_options')
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::StreamingBuffer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::StreamingFlow') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::OutputFlow'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::StreamingTemplateRenderer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::TemplateRenderer'))

  klass.define_instance_method('determine_template') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('extract_details') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('find_layout') do |method|
    method.define_argument('layout')
    method.define_argument('keys')
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::Template') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('autoload_at') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoload_under') do |method|
    method.define_argument('path')
  end

  klass.define_method('autoloads')

  klass.define_method('eager_autoload')

  klass.define_method('eager_load!')

  klass.define_method('handler_for_extension') do |method|
    method.define_argument('extension')
  end

  klass.define_method('register_default_template_handler') do |method|
    method.define_argument('extension')
    method.define_argument('klass')
  end

  klass.define_method('register_template_handler') do |method|
    method.define_rest_argument('extensions')
    method.define_argument('handler')
  end

  klass.define_method('registered_template_handler') do |method|
    method.define_argument('extension')
  end

  klass.define_method('template_handler_extensions')

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

RubyLint::GlobalScope.definitions.define_constant('ActionView::TemplateError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::ActionViewError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('annoted_source_code')

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

  klass.define_instance_method('file_name')

  klass.define_instance_method('line_number')

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('original_exception')

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

  klass.define_instance_method('source_extract') do |method|
    method.define_optional_argument('indentation')
    method.define_optional_argument('output')
  end

  klass.define_instance_method('sub_template_message')

  klass.define_instance_method('sub_template_of') do |method|
    method.define_argument('template_path')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::TemplateRenderer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::AbstractRenderer'))

  klass.define_instance_method('determine_template') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('extract_details') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('find_layout') do |method|
    method.define_argument('layout')
    method.define_argument('keys')
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

RubyLint::GlobalScope.definitions.define_constant('ActionView::TestCase') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveSupport::TestCase'))

  klass.define_method('__callback_runner_name') do |method|
    method.define_argument('kind')
  end

  klass.define_method('__callback_runner_name_cache')

  klass.define_method('__define_callbacks') do |method|
    method.define_argument('kind')
    method.define_argument('object')
  end

  klass.define_method('__generate_callback_runner_name') do |method|
    method.define_argument('kind')
  end

  klass.define_method('__reset_runner') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('__update_callbacks') do |method|
    method.define_argument('name')
    method.define_optional_argument('filters')
    method.define_optional_argument('block')
  end

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

  klass.define_method('_setup_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_setup_callbacks?')

  klass.define_method('_teardown_callbacks')

  klass.define_method('_teardown_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_teardown_callbacks?')

  klass.define_method('_url_for_modules')

  klass.define_method('clear_helpers')

  klass.define_method('current')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('describe') do |method|
    method.define_argument('text')
  end

  klass.define_method('determine_constant_from_test_name') do |method|
    method.define_argument('test_name')
  end

  klass.define_method('determine_default_helper_class') do |method|
    method.define_argument('name')
  end

  klass.define_method('direct_descendants')

  klass.define_method('for_tag') do |method|
    method.define_argument('tag')
  end

  klass.define_method('full_sanitizer')

  klass.define_method('full_sanitizer=')

  klass.define_method('helper') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('helper_class')

  klass.define_method('helper_class=')

  klass.define_method('helper_method') do |method|
    method.define_rest_argument('methods')
  end

  klass.define_method('i_suck_and_my_tests_are_order_dependent!')

  klass.define_method('inherited') do |method|
    method.define_argument('klass')
  end

  klass.define_method('jruby?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('link_sanitizer')

  klass.define_method('link_sanitizer=')

  klass.define_method('make_my_diffs_pretty!')

  klass.define_method('modules_for_helpers') do |method|
    method.define_argument('args')
  end

  klass.define_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('parallelize_me!')

  klass.define_method('reset')

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('rubinius?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('sanitized_allowed_attributes')

  klass.define_method('sanitized_allowed_attributes=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_css_keywords')

  klass.define_method('sanitized_allowed_css_keywords=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_css_properties')

  klass.define_method('sanitized_allowed_css_properties=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_protocols')

  klass.define_method('sanitized_allowed_protocols=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_allowed_tags')

  klass.define_method('sanitized_allowed_tags=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_bad_tags')

  klass.define_method('sanitized_bad_tags=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_protocol_separator')

  klass.define_method('sanitized_protocol_separator=') do |method|
    method.define_argument('value')
  end

  klass.define_method('sanitized_shorthand_css_properties')

  klass.define_method('sanitized_shorthand_css_properties=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('sanitized_uri_attributes')

  klass.define_method('sanitized_uri_attributes=') do |method|
    method.define_argument('attributes')
  end

  klass.define_method('set_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
  end

  klass.define_method('setup') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('skip_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
  end

  klass.define_method('teardown') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('test') do |method|
    method.define_argument('name')
    method.define_block_argument('block')
  end

  klass.define_method('test_methods')

  klass.define_method('test_order')

  klass.define_method('test_suites')

  klass.define_method('tests') do |method|
    method.define_argument('helper_class')
  end

  klass.define_method('white_list_sanitizer')

  klass.define_method('white_list_sanitizer=')

  klass.define_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('__name__')

  klass.define_instance_method('_assertions')

  klass.define_instance_method('_assertions=') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('_back_url')

  klass.define_instance_method('_helper_methods')

  klass.define_instance_method('_helper_methods=')

  klass.define_instance_method('_helper_methods?')

  klass.define_instance_method('_helpers')

  klass.define_instance_method('_helpers=')

  klass.define_instance_method('_helpers?')

  klass.define_instance_method('_layout_for') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_prepare_context')

  klass.define_instance_method('_routes_context')

  klass.define_instance_method('_setup_callbacks')

  klass.define_instance_method('_setup_callbacks=')

  klass.define_instance_method('_setup_callbacks?')

  klass.define_instance_method('_teardown_callbacks')

  klass.define_instance_method('_teardown_callbacks=')

  klass.define_instance_method('_teardown_callbacks?')

  klass.define_instance_method('_with_routes') do |method|
    method.define_argument('routes')
  end

  klass.define_instance_method('action_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('after_setup')

  klass.define_instance_method('after_teardown')

  klass.define_instance_method('assert') do |method|
    method.define_argument('test')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_blank') do |method|
    method.define_argument('object')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_deprecated') do |method|
    method.define_optional_argument('match')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_difference') do |method|
    method.define_argument('expression')
    method.define_optional_argument('difference')
    method.define_optional_argument('message')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_dom_equal') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_dom_not_equal') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_generates') do |method|
    method.define_argument('expected_path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_in_delta') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('delta')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_in_epsilon') do |method|
    method.define_argument('a')
    method.define_argument('b')
    method.define_optional_argument('epsilon')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_includes') do |method|
    method.define_argument('collection')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_instance_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_kind_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_nil') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_no_difference') do |method|
    method.define_argument('expression')
    method.define_optional_argument('message')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_no_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_no_tag') do |method|
    method.define_rest_argument('opts')
  end

  klass.define_instance_method('assert_not') do |method|
    method.define_argument('object')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_not_deprecated') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_not_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_in_delta') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('delta')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_in_epsilon') do |method|
    method.define_argument('a')
    method.define_argument('b')
    method.define_optional_argument('epsilon')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_includes') do |method|
    method.define_argument('collection')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_instance_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_kind_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_nil') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_operator') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('o2')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_predicate') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_not_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_nothing_raised') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('assert_operator') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('o2')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_output') do |method|
    method.define_optional_argument('stdout')
    method.define_optional_argument('stderr')
  end

  klass.define_instance_method('assert_predicate') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_present') do |method|
    method.define_argument('object')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_raise') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('assert_raises') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('assert_recognizes') do |method|
    method.define_argument('expected_options')
    method.define_argument('path')
    method.define_optional_argument('extras')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_redirected_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_response') do |method|
    method.define_argument('type')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_routing') do |method|
    method.define_argument('path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_select_email') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_select_encoded') do |method|
    method.define_optional_argument('element')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_send') do |method|
    method.define_argument('send_ary')
    method.define_optional_argument('m')
  end

  klass.define_instance_method('assert_silent')

  klass.define_instance_method('assert_tag') do |method|
    method.define_rest_argument('opts')
  end

  klass.define_instance_method('assert_template') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_throws') do |method|
    method.define_argument('sym')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('asset_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('asset_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('assign_controller') do |method|
    method.define_argument('controller')
  end

  klass.define_instance_method('assigns') do |method|
    method.define_optional_argument('key')
  end

  klass.define_instance_method('atom_feed') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
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

  klass.define_instance_method('before_setup')

  klass.define_instance_method('before_teardown')

  klass.define_instance_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('button_tag') do |method|
    method.define_optional_argument('content_or_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('button_to') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('button_to_function') do |method|
    method.define_argument('name')
    method.define_optional_argument('function')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('cache') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_fragment_name') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('cache_if') do |method|
    method.define_argument('condition')
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_unless') do |method|
    method.define_argument('condition')
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('capture_io')

  klass.define_instance_method('capture_subprocess_io')

  klass.define_instance_method('cdata_section') do |method|
    method.define_argument('content')
  end

  klass.define_instance_method('check_box') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('checked_value')
    method.define_optional_argument('unchecked_value')
  end

  klass.define_instance_method('check_box_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('checked')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('collection_check_boxes') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collection_radio_buttons') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collection_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('color_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('color_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
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
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('config')

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

  klass.define_instance_method('content_tag_for') do |method|
    method.define_argument('tag_name')
    method.define_argument('single_or_multiple_records')
    method.define_optional_argument('prefix')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('controller')

  klass.define_instance_method('controller=')

  klass.define_instance_method('controller_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('controller_path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('cookies')

  klass.define_instance_method('count_description') do |method|
    method.define_argument('min')
    method.define_argument('max')
    method.define_argument('count')
  end

  klass.define_instance_method('csrf_meta_tag')

  klass.define_instance_method('csrf_meta_tags')

  klass.define_instance_method('css_select') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('current_cycle') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('current_page?') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_argument('first_value')
    method.define_rest_argument('values')
  end

  klass.define_instance_method('date_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('date_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('date_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('datetime_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_local_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_local_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('datetime_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('debug') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('default_url_options=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('diff') do |method|
    method.define_argument('exp')
    method.define_argument('act')
  end

  klass.define_instance_method('distance_of_time_in_words') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('to_time')
    method.define_optional_argument('include_seconds_or_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('distance_of_time_in_words_to_now') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('include_seconds_or_options')
  end

  klass.define_instance_method('div_for') do |method|
    method.define_argument('record')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record_or_class')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('edit_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('edit_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('email_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('email_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('embed_authenticity_token_in_remote_forms')

  klass.define_instance_method('embed_authenticity_token_in_remote_forms=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('escape_javascript') do |method|
    method.define_argument('javascript')
  end

  klass.define_instance_method('escape_once') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('exception_details') do |method|
    method.define_argument('e')
    method.define_argument('msg')
  end

  klass.define_instance_method('excerpt') do |method|
    method.define_argument('text')
    method.define_argument('phrase')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('favicon_link_tag') do |method|
    method.define_optional_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('field_set_tag') do |method|
    method.define_optional_argument('legend')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fields_for') do |method|
    method.define_argument('record_name')
    method.define_optional_argument('record_object')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('file_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('find_all_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('find_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('fixture_file_upload') do |method|
    method.define_argument('path')
    method.define_optional_argument('mime_type')
    method.define_optional_argument('binary')
  end

  klass.define_instance_method('flash')

  klass.define_instance_method('flunk') do |method|
    method.define_optional_argument('msg')
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

  klass.define_instance_method('form_for') do |method|
    method.define_argument('record')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('form_tag') do |method|
    method.define_optional_argument('url_for_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('grouped_collection_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('collection')
    method.define_argument('group_method')
    method.define_argument('group_label_method')
    method.define_argument('option_key_method')
    method.define_argument('option_value_method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('grouped_options_for_select') do |method|
    method.define_argument('grouped_options')
    method.define_optional_argument('selected_key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('headers') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('hidden_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('hidden_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('highlight') do |method|
    method.define_argument('text')
    method.define_argument('phrases')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('html_document')

  klass.define_instance_method('image_alt') do |method|
    method.define_argument('src')
  end

  klass.define_instance_method('image_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('image_submit_tag') do |method|
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

  klass.define_instance_method('io')

  klass.define_instance_method('io?')

  klass.define_instance_method('j') do |method|
    method.define_argument('javascript')
  end

  klass.define_instance_method('javascript_cdata_section') do |method|
    method.define_argument('content')
  end

  klass.define_instance_method('javascript_include_tag') do |method|
    method.define_rest_argument('sources')
  end

  klass.define_instance_method('javascript_path') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('javascript_tag') do |method|
    method.define_optional_argument('content_or_options_with_block')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('javascript_url') do |method|
    method.define_argument('source')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('jruby?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('l') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('label') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('content_or_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('label_tag') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('content_or_options')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to_function') do |method|
    method.define_argument('name')
    method.define_argument('function')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('link_to_if') do |method|
    method.define_argument('condition')
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to_unless') do |method|
    method.define_argument('condition')
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('link_to_unless_current') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('localize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('lookup_context') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mail_to') do |method|
    method.define_argument('email_address')
    method.define_optional_argument('name')
    method.define_optional_argument('html_options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('message') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('ending')
    method.define_block_argument('default')
  end

  klass.define_instance_method('method_name')

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('month_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('month_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('mu_pp') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mu_pp_for_diff') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('new_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('new_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_currency') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_human_size') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_percentage') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_to_phone') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_with_delimiter') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('number_with_precision') do |method|
    method.define_argument('number')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('optimize_routes_generation?')

  klass.define_instance_method('option_groups_from_collection_for_select') do |method|
    method.define_argument('collection')
    method.define_argument('group_method')
    method.define_argument('group_label_method')
    method.define_argument('option_key_method')
    method.define_argument('option_value_method')
    method.define_optional_argument('selected_key')
  end

  klass.define_instance_method('options_for_select') do |method|
    method.define_argument('container')
    method.define_optional_argument('selected')
  end

  klass.define_instance_method('options_from_collection_for_select') do |method|
    method.define_argument('collection')
    method.define_argument('value_method')
    method.define_argument('text_method')
    method.define_optional_argument('selected')
  end

  klass.define_instance_method('output_buffer')

  klass.define_instance_method('output_buffer=')

  klass.define_instance_method('params') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pass') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('passed?')

  klass.define_instance_method('password_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('password_field_tag') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('value')
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

  klass.define_instance_method('pending') do |method|
    method.define_optional_argument('description')
    method.define_block_argument('block')
  end

  klass.define_instance_method('phone_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('phone_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('pluralize') do |method|
    method.define_argument('count')
    method.define_argument('singular')
    method.define_optional_argument('plural')
  end

  klass.define_instance_method('polymorphic_path') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('polymorphic_url') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('provide') do |method|
    method.define_argument('name')
    method.define_optional_argument('content')
    method.define_block_argument('block')
  end

  klass.define_instance_method('radio_button') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_argument('tag_value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('radio_button_tag') do |method|
    method.define_argument('name')
    method.define_argument('value')
    method.define_optional_argument('checked')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('range_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('range_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('raw') do |method|
    method.define_argument('stringish')
  end

  klass.define_instance_method('record_key_for_dom_id') do |method|
    method.define_argument('record')
  end

  klass.define_instance_method('redirect_to_url')

  klass.define_instance_method('refute') do |method|
    method.define_argument('test')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_in_delta') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('delta')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_in_epsilon') do |method|
    method.define_argument('a')
    method.define_argument('b')
    method.define_optional_argument('epsilon')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_includes') do |method|
    method.define_argument('collection')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_instance_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_kind_of') do |method|
    method.define_argument('cls')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_match') do |method|
    method.define_argument('matcher')
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_nil') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_operator') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('o2')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_predicate') do |method|
    method.define_argument('o1')
    method.define_argument('op')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('refute_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('render') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('local_assigns')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rendered')

  klass.define_instance_method('rendered=')

  klass.define_instance_method('rendered_views')

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('request_forgery_protection_token') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reset_cycle') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('response') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rubinius?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('run') do |method|
    method.define_argument('runner')
  end

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end

  klass.define_instance_method('run_test') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('safe_concat') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('safe_join') do |method|
    method.define_argument('array')
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('sanitize') do |method|
    method.define_argument('html')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('sanitize_css') do |method|
    method.define_argument('style')
  end

  klass.define_instance_method('search_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('search_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_argument('choices')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_date') do |method|
    method.define_optional_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_datetime') do |method|
    method.define_optional_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_day') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_hour') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_minute') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_month') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_second') do |method|
    method.define_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('option_tags')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('select_time') do |method|
    method.define_optional_argument('datetime')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('select_year') do |method|
    method.define_argument('date')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('session')

  klass.define_instance_method('setup')

  klass.define_instance_method('setup_subscriptions')

  klass.define_instance_method('setup_with_controller')

  klass.define_instance_method('simple_format') do |method|
    method.define_argument('text')
    method.define_optional_argument('html_options')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('skip') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('bt')
  end

  klass.define_instance_method('skipped?')

  klass.define_instance_method('strip_links') do |method|
    method.define_argument('html')
  end

  klass.define_instance_method('strip_tags') do |method|
    method.define_argument('html')
  end

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

  klass.define_instance_method('submit_tag') do |method|
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('synchronize')

  klass.define_instance_method('t') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
    method.define_optional_argument('open')
    method.define_optional_argument('escape')
  end

  klass.define_instance_method('tagged_logger=')

  klass.define_instance_method('teardown')

  klass.define_instance_method('teardown_subscriptions')

  klass.define_instance_method('telephone_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('telephone_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_area') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_area_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('content')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('text_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('time_ago_in_words') do |method|
    method.define_argument('from_time')
    method.define_optional_argument('include_seconds_or_options')
  end

  klass.define_instance_method('time_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('time_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('time_select') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('time_tag') do |method|
    method.define_argument('date_or_time')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('time_zone_options_for_select') do |method|
    method.define_optional_argument('selected')
    method.define_optional_argument('priority_zones')
    method.define_optional_argument('model')
  end

  klass.define_instance_method('time_zone_select') do |method|
    method.define_argument('object')
    method.define_argument('method')
    method.define_optional_argument('priority_zones')
    method.define_optional_argument('options')
    method.define_optional_argument('html_options')
  end

  klass.define_instance_method('translate') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('truncate') do |method|
    method.define_argument('text')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('url_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_options')

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

  klass.define_instance_method('utf8_enforcer_tag')

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

  klass.define_instance_method('view_flow')

  klass.define_instance_method('view_flow=')

  klass.define_instance_method('week_field') do |method|
    method.define_argument('object_name')
    method.define_argument('method')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('week_field_tag') do |method|
    method.define_argument('name')
    method.define_optional_argument('value')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('with_output_buffer') do |method|
    method.define_optional_argument('buf')
  end

  klass.define_instance_method('with_routing')

  klass.define_instance_method('word_wrap') do |method|
    method.define_argument('text')
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionView::WrongEncodingError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionView::EncodingError'))

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

RubyLint::GlobalScope.definitions.lookup(:const, 'ActionView').deep_freeze