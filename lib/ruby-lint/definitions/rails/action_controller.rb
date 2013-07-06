##
# Constant: ActionController
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController') do |klass|

  klass.define_method('add_renderer') do |method|
    method.define_argument('key')
    method.define_block_argument('block')
  end

  klass.define_method('eager_load!')
end

##
# Constant: ActionController::ActionControllerError
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ActionControllerError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))
end

##
# Constant: ActionController::BadRequest
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::BadRequest') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))

  klass.define_instance_method('original_exception')
end

##
# Constant: ActionController::Base
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::Metal'))

  klass.define_method('_flash_types')

  klass.define_method('_flash_types=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_flash_types?')

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

  klass.define_method('_layout')

  klass.define_method('_layout=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_layout?')

  klass.define_method('_layout_conditions')

  klass.define_method('_layout_conditions=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_layout_conditions?')

  klass.define_method('_process_action_callbacks')

  klass.define_method('_process_action_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_process_action_callbacks?')

  klass.define_method('_renderers')

  klass.define_method('_renderers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_renderers?')

  klass.define_method('_view_cache_dependencies')

  klass.define_method('_view_cache_dependencies=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_view_cache_dependencies?')

  klass.define_method('_view_paths')

  klass.define_method('_view_paths=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_view_paths?')

  klass.define_method('_wrapper_options')

  klass.define_method('_wrapper_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_wrapper_options?')

  klass.define_method('allow_forgery_protection')

  klass.define_method('allow_forgery_protection=') do |method|
    method.define_argument('value')
  end

  klass.define_method('asset_host')

  klass.define_method('asset_host=') do |method|
    method.define_argument('value')
  end

  klass.define_method('assets_dir')

  klass.define_method('assets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_asset_host_protocol')

  klass.define_method('default_asset_host_protocol=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_static_extension')

  klass.define_method('default_static_extension=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_url_options')

  klass.define_method('default_url_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_url_options?')

  klass.define_method('etaggers')

  klass.define_method('etaggers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('etaggers?')

  klass.define_method('forgery_protection_strategy')

  klass.define_method('forgery_protection_strategy=') do |method|
    method.define_argument('value')
  end

  klass.define_method('helpers_path')

  klass.define_method('helpers_path=') do |method|
    method.define_argument('val')
  end

  klass.define_method('helpers_path?')

  klass.define_method('hidden_actions')

  klass.define_method('hidden_actions=') do |method|
    method.define_argument('val')
  end

  klass.define_method('hidden_actions?')

  klass.define_method('include_all_helpers')

  klass.define_method('include_all_helpers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('include_all_helpers?')

  klass.define_method('javascripts_dir')

  klass.define_method('javascripts_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('value')
  end

  klass.define_method('middleware_stack')

  klass.define_method('mimes_for_respond_to')

  klass.define_method('mimes_for_respond_to=') do |method|
    method.define_argument('val')
  end

  klass.define_method('mimes_for_respond_to?')

  klass.define_method('page_cache_extension')

  klass.define_method('page_cache_extension=') do |method|
    method.define_argument('extension')
  end

  klass.define_method('perform_caching')

  klass.define_method('perform_caching=') do |method|
    method.define_argument('value')
  end

  klass.define_method('protected_instance_variables')

  klass.define_method('protected_instance_variables=') do |method|
    method.define_argument('val')
  end

  klass.define_method('protected_instance_variables?')

  klass.define_method('relative_url_root')

  klass.define_method('relative_url_root=') do |method|
    method.define_argument('value')
  end

  klass.define_method('request_forgery_protection_token')

  klass.define_method('request_forgery_protection_token=') do |method|
    method.define_argument('value')
  end

  klass.define_method('rescue_handlers')

  klass.define_method('rescue_handlers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('rescue_handlers?')

  klass.define_method('responder')

  klass.define_method('responder=') do |method|
    method.define_argument('val')
  end

  klass.define_method('responder?')

  klass.define_method('stylesheets_dir')

  klass.define_method('stylesheets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('without_modules') do |method|
    method.define_rest_argument('modules')
  end

  klass.define_instance_method('_helper_methods')

  klass.define_instance_method('_helper_methods=')

  klass.define_instance_method('_helper_methods?')

  klass.define_instance_method('_helpers')

  klass.define_instance_method('_helpers=')

  klass.define_instance_method('_helpers?')

  klass.define_instance_method('_process_action_callbacks')

  klass.define_instance_method('_process_action_callbacks=')

  klass.define_instance_method('_process_action_callbacks?')

  klass.define_instance_method('_renderers')

  klass.define_instance_method('_renderers=')

  klass.define_instance_method('_renderers?')

  klass.define_instance_method('_view_cache_dependencies')

  klass.define_instance_method('_view_cache_dependencies=')

  klass.define_instance_method('_view_cache_dependencies?')

  klass.define_instance_method('_view_paths')

  klass.define_instance_method('_view_paths=')

  klass.define_instance_method('_view_paths?')

  klass.define_instance_method('_wrapper_options')

  klass.define_instance_method('_wrapper_options=')

  klass.define_instance_method('_wrapper_options?')

  klass.define_instance_method('alert')

  klass.define_instance_method('allow_forgery_protection')

  klass.define_instance_method('allow_forgery_protection=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('asset_host')

  klass.define_instance_method('asset_host=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('assets_dir')

  klass.define_instance_method('assets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_asset_host_protocol')

  klass.define_instance_method('default_asset_host_protocol=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_static_extension')

  klass.define_instance_method('default_static_extension=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_url_options')

  klass.define_instance_method('default_url_options=')

  klass.define_instance_method('default_url_options?')

  klass.define_instance_method('etaggers')

  klass.define_instance_method('etaggers=')

  klass.define_instance_method('etaggers?')

  klass.define_instance_method('flash') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('forgery_protection_strategy')

  klass.define_instance_method('forgery_protection_strategy=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('helpers_path')

  klass.define_instance_method('helpers_path=')

  klass.define_instance_method('helpers_path?')

  klass.define_instance_method('hidden_actions')

  klass.define_instance_method('hidden_actions=')

  klass.define_instance_method('hidden_actions?')

  klass.define_instance_method('include_all_helpers')

  klass.define_instance_method('include_all_helpers=')

  klass.define_instance_method('include_all_helpers?')

  klass.define_instance_method('javascripts_dir')

  klass.define_instance_method('javascripts_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('mimes_for_respond_to')

  klass.define_instance_method('mimes_for_respond_to=')

  klass.define_instance_method('mimes_for_respond_to?')

  klass.define_instance_method('notice')

  klass.define_instance_method('perform_caching')

  klass.define_instance_method('perform_caching=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('protected_instance_variables')

  klass.define_instance_method('protected_instance_variables=')

  klass.define_instance_method('protected_instance_variables?')

  klass.define_instance_method('relative_url_root')

  klass.define_instance_method('relative_url_root=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('request_forgery_protection_token')

  klass.define_instance_method('request_forgery_protection_token=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('rescue_handlers')

  klass.define_instance_method('rescue_handlers=')

  klass.define_instance_method('rescue_handlers?')

  klass.define_instance_method('responder')

  klass.define_instance_method('responder=')

  klass.define_instance_method('responder?')

  klass.define_instance_method('stylesheets_dir')

  klass.define_instance_method('stylesheets_dir=') do |method|
    method.define_argument('value')
  end
end

##
# Constant: ActionController::Caching
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Caching') do |klass|

  klass.define_instance_method('cache') do |method|
    method.define_argument('key')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('view_cache_dependencies')
end

##
# Constant: ActionController::ConditionalGet
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ConditionalGet') do |klass|

  klass.define_instance_method('expires_in') do |method|
    method.define_argument('seconds')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('expires_now')

  klass.define_instance_method('fresh_when') do |method|
    method.define_argument('record_or_options')
    method.define_optional_argument('additional_options')
  end

  klass.define_instance_method('stale?') do |method|
    method.define_argument('record_or_options')
    method.define_optional_argument('additional_options')
  end
end

##
# Constant: ActionController::Cookies
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Cookies') do |klass|
end

##
# Constant: ActionController::DataStreaming
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::DataStreaming') do |klass|

  klass.define_instance_method('send_data') do |method|
    method.define_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('send_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end
end

##
# Constant: ActionController::Flash
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Flash') do |klass|

  klass.define_instance_method('redirect_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('response_status_and_flash')
  end
end

##
# Constant: ActionController::ForceSSL
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ForceSSL') do |klass|

  klass.define_instance_method('force_ssl_redirect') do |method|
    method.define_optional_argument('host_or_options')
  end
end

##
# Constant: ActionController::Head
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Head') do |klass|

  klass.define_instance_method('head') do |method|
    method.define_argument('status')
    method.define_optional_argument('options')
  end
end

##
# Constant: ActionController::Helpers
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Helpers') do |klass|

  klass.define_method('helpers_path')

  klass.define_method('helpers_path=')
end

##
# Constant: ActionController::HideActions
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::HideActions') do |klass|
end

##
# Constant: ActionController::HttpAuthentication
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::HttpAuthentication') do |klass|
end

##
# Constant: ActionController::ImplicitRender
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ImplicitRender') do |klass|

  klass.define_instance_method('default_render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('method_for_action') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('send_action') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
  end
end

##
# Constant: ActionController::Instrumentation
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Instrumentation') do |klass|

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('redirect_to') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('send_data') do |method|
    method.define_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('send_file') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('view_runtime')

  klass.define_instance_method('view_runtime=')
end

##
# Constant: ActionController::Integration
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Integration') do |klass|
end

##
# Constant: ActionController::IntegrationTest
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::IntegrationTest') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::TestCase'))

  klass.define_method('_setup_callbacks')

  klass.define_method('_teardown_callbacks')

  klass.define_method('app')

  klass.define_method('app=') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('app')

  klass.define_instance_method('url_options')
end

##
# Constant: ActionController::Live
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Live') do |klass|

  klass.define_instance_method('log_error') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('process') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('set_response!') do |method|
    method.define_argument('request')
  end
end

##
# Constant: ActionController::Metal
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Metal') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('AbstractController::Base'))

  klass.define_method('action') do |method|
    method.define_argument('name')
    method.define_optional_argument('klass')
  end

  klass.define_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_method('controller_name')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('middleware')

  klass.define_method('middleware_stack')

  klass.define_method('middleware_stack=') do |method|
    method.define_argument('val')
  end

  klass.define_method('middleware_stack?')

  klass.define_method('use') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('content_type')

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('type')
  end

  klass.define_instance_method('controller_name')

  klass.define_instance_method('dispatch') do |method|
    method.define_argument('name')
    method.define_argument('request')
  end

  klass.define_instance_method('env')

  klass.define_instance_method('env=')

  klass.define_instance_method('headers')

  klass.define_instance_method('headers=')

  klass.define_instance_method('location')

  klass.define_instance_method('location=') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('middleware_stack')

  klass.define_instance_method('middleware_stack=')

  klass.define_instance_method('middleware_stack?')

  klass.define_instance_method('params')

  klass.define_instance_method('params=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('performed?')

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('response')

  klass.define_instance_method('response=')

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('session') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('status')

  klass.define_instance_method('status=') do |method|
    method.define_argument('status')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('url_for') do |method|
    method.define_argument('string')
  end
end

##
# Constant: ActionController::MethodNotAllowed
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::MethodNotAllowed') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::Middleware
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Middleware') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::Metal'))

  klass.define_method('build') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('middleware_stack')

  klass.define_method('new') do |method|
    method.define_argument('app')
  end

  klass.define_instance_method('app')

  klass.define_instance_method('app=')

  klass.define_instance_method('index')

  klass.define_instance_method('process') do |method|
    method.define_argument('action')
  end
end

##
# Constant: ActionController::MimeResponds
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::MimeResponds') do |klass|

  klass.define_instance_method('collect_mimes_from_class_level')

  klass.define_instance_method('respond_to') do |method|
    method.define_rest_argument('mimes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_with') do |method|
    method.define_rest_argument('resources')
    method.define_block_argument('block')
  end

  klass.define_instance_method('retrieve_collector_from_mimes') do |method|
    method.define_optional_argument('mimes')
    method.define_block_argument('block')
  end
end

##
# Constant: ActionController::MissingFile
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::MissingFile') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::ModelNaming
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ModelNaming') do |klass|

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
  end
end

##
# Constant: ActionController::NotImplemented
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::NotImplemented') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::MethodNotAllowed'))
end

##
# Constant: ActionController::ParameterMissing
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ParameterMissing') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('KeyError'))

  klass.define_instance_method('param')
end

##
# Constant: ActionController::Parameters
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Parameters') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::HashWithIndifferentAccess'))

  klass.define_method('action_on_unpermitted_parameters')

  klass.define_method('action_on_unpermitted_parameters=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('permit_all_parameters')

  klass.define_method('permit_all_parameters=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('dup')

  klass.define_instance_method('fetch') do |method|
    method.define_argument('key')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('permit') do |method|
    method.define_rest_argument('filters')
  end

  klass.define_instance_method('permit!')

  klass.define_instance_method('permitted?')

  klass.define_instance_method('require') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('required') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('keys')
  end
end

##
# Constant: ActionController::ParamsWrapper
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::ParamsWrapper') do |klass|

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: ActionController::RackDelegation
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::RackDelegation') do |klass|

  klass.define_instance_method('content_type') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('dispatch') do |method|
    method.define_argument('action')
    method.define_argument('request')
  end

  klass.define_instance_method('headers') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('location') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('location=') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('reset_session')

  klass.define_instance_method('response_body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('status') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('status=') do |method|
    method.define_argument('arg')
  end
end

##
# Constant: ActionController::Railtie
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Railtie'))
end

##
# Constant: ActionController::Railties
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Railties') do |klass|
end

##
# Constant: ActionController::RecordIdentifier
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::RecordIdentifier') do |klass|

  klass.define_method('dom_class') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_class') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end

  klass.define_instance_method('dom_id') do |method|
    method.define_argument('record')
    method.define_optional_argument('prefix')
  end
end

##
# Constant: ActionController::Redirecting
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Redirecting') do |klass|

  klass.define_instance_method('redirect_to') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('response_status')
  end
end

##
# Constant: ActionController::RenderError
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::RenderError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::Renderers
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Renderers') do |klass|

  klass.define_method('add') do |method|
    method.define_argument('key')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_handle_render_options') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_js') do |method|
    method.define_argument('js')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_json') do |method|
    method.define_argument('json')
    method.define_argument('options')
  end

  klass.define_instance_method('_render_option_xml') do |method|
    method.define_argument('xml')
    method.define_argument('options')
  end

  klass.define_instance_method('render_to_body') do |method|
    method.define_argument('options')
  end
end

##
# Constant: ActionController::Rendering
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Rendering') do |klass|

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('render_to_body') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('render_to_string') do |method|
    method.define_rest_argument('')
  end
end

##
# Constant: ActionController::RequestForgeryProtection
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::RequestForgeryProtection') do |klass|

  klass.define_instance_method('form_authenticity_param')

  klass.define_instance_method('form_authenticity_token')

  klass.define_instance_method('handle_unverified_request')

  klass.define_instance_method('protect_against_forgery?')

  klass.define_instance_method('verified_request?')

  klass.define_instance_method('verify_authenticity_token')
end

##
# Constant: ActionController::Rescue
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Rescue') do |klass|

  klass.define_instance_method('rescue_with_handler') do |method|
    method.define_argument('exception')
  end

  klass.define_instance_method('show_detailed_exceptions?')
end

##
# Constant: ActionController::Responder
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Responder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('call') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('api_behavior') do |method|
    method.define_argument('error')
  end

  klass.define_instance_method('api_location')

  klass.define_instance_method('controller')

  klass.define_instance_method('default_action')

  klass.define_instance_method('default_render')

  klass.define_instance_method('delete?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('display') do |method|
    method.define_argument('resource')
    method.define_optional_argument('given_options')
  end

  klass.define_instance_method('display_errors')

  klass.define_instance_method('format')

  klass.define_instance_method('get?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('has_errors?')

  klass.define_instance_method('head') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('json_resource_errors')

  klass.define_instance_method('navigation_behavior') do |method|
    method.define_argument('error')
  end

  klass.define_instance_method('navigation_location')

  klass.define_instance_method('options')

  klass.define_instance_method('patch?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('post?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('put?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('redirect_to') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('request')

  klass.define_instance_method('resource')

  klass.define_instance_method('resource_errors')

  klass.define_instance_method('resource_location')

  klass.define_instance_method('resourceful?')

  klass.define_instance_method('resources')

  klass.define_instance_method('respond')

  klass.define_instance_method('response_overridden?')

  klass.define_instance_method('to_format')

  klass.define_instance_method('to_html')

  klass.define_instance_method('to_js')
end

##
# Constant: ActionController::Routing
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Routing') do |klass|
end

##
# Constant: ActionController::RoutingError
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::RoutingError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))

  klass.define_instance_method('failures')
end

##
# Constant: ActionController::SessionOverflowError
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::SessionOverflowError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::Streaming
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Streaming') do |klass|

  klass.define_instance_method('_process_options') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('_render_template') do |method|
    method.define_argument('options')
  end
end

##
# Constant: ActionController::StrongParameters
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::StrongParameters') do |klass|

  klass.define_instance_method('params')

  klass.define_instance_method('params=') do |method|
    method.define_argument('value')
  end
end

##
# Constant: ActionController::TemplateAssertions
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::TemplateAssertions') do |klass|

  klass.define_instance_method('assert_template') do |method|
    method.define_optional_argument('options')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('setup_subscriptions')

  klass.define_instance_method('teardown_subscriptions')
end

##
# Constant: ActionController::TestCase
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActiveSupport::TestCase'))

  klass.define_method('_controller_class')

  klass.define_method('_controller_class=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_controller_class?')

  klass.define_method('_setup_callbacks')

  klass.define_method('_teardown_callbacks')

  klass.define_instance_method('_controller_class')

  klass.define_instance_method('_controller_class=')

  klass.define_instance_method('_controller_class?')
end

##
# Constant: ActionController::Testing
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::Testing') do |klass|

  klass.define_instance_method('headers=') do |method|
    method.define_argument('new_headers')
  end
end

##
# Constant: ActionController::UnknownController
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::UnknownController') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::UnknownFormat
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::UnknownFormat') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::UnknownHttpMethod
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::UnknownHttpMethod') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::ActionControllerError'))
end

##
# Constant: ActionController::UnpermittedParameters
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::UnpermittedParameters') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('IndexError'))

  klass.define_instance_method('params')
end

##
# Constant: ActionController::UrlFor
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::UrlFor') do |klass|

  klass.define_instance_method('url_options')
end

##
# Constant: ActionController::UrlGenerationError
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionController::UrlGenerationError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionController::RoutingError'))
end