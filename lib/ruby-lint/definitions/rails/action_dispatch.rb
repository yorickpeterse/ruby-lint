##
# Constant: ActionDispatch
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch') do |klass|

  klass.define_method('test_app')

  klass.define_method('test_app=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('test_app')

  klass.define_instance_method('test_app=') do |method|
    method.define_argument('obj')
  end
end

##
# Constant: ActionDispatch::Assertions
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Assertions') do |klass|
end

##
# Constant: ActionDispatch::Callbacks
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Callbacks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('_call_callbacks')

  klass.define_method('_call_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_call_callbacks?')

  klass.define_method('after') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('to_cleanup') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('to_prepare') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_call_callbacks')

  klass.define_instance_method('_call_callbacks=')

  klass.define_instance_method('_call_callbacks?')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::Cookies
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Cookies') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::DebugExceptions
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::DebugExceptions') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::ExceptionWrapper
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::ExceptionWrapper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('rescue_responses')

  klass.define_method('rescue_responses=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('rescue_templates')

  klass.define_method('rescue_templates=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('status_code_for_exception') do |method|
    method.define_argument('class_name')
  end

  klass.define_instance_method('application_trace')

  klass.define_instance_method('env')

  klass.define_instance_method('exception')

  klass.define_instance_method('file')

  klass.define_instance_method('framework_trace')

  klass.define_instance_method('full_trace')

  klass.define_instance_method('line_number')

  klass.define_instance_method('rescue_responses')

  klass.define_instance_method('rescue_responses=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('rescue_template')

  klass.define_instance_method('rescue_templates')

  klass.define_instance_method('rescue_templates=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('source_extract')

  klass.define_instance_method('status_code')
end

##
# Constant: ActionDispatch::Flash
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Flash') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::Http
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Http') do |klass|
end

##
# Constant: ActionDispatch::IllegalStateError
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::IllegalStateError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('StandardError'))
end

##
# Constant: ActionDispatch::Integration
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Integration') do |klass|
end

##
# Constant: ActionDispatch::IntegrationTest
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::IntegrationTest') do |klass|
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
# Constant: ActionDispatch::Journey
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Journey') do |klass|
end

##
# Constant: ActionDispatch::MiddlewareStack
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::MiddlewareStack') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('i')
  end

  klass.define_instance_method('assert_index') do |method|
    method.define_argument('index')
    method.define_argument('where')
  end

  klass.define_instance_method('build') do |method|
    method.define_optional_argument('app')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('target')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('insert') do |method|
    method.define_argument('index')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('insert_after') do |method|
    method.define_argument('index')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('insert_before') do |method|
    method.define_argument('index')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('last')

  klass.define_instance_method('middlewares')

  klass.define_instance_method('middlewares=')

  klass.define_instance_method('size')

  klass.define_instance_method('swap') do |method|
    method.define_argument('target')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('use') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

##
# Constant: ActionDispatch::ParamsParser
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::ParamsParser') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::PublicExceptions
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::PublicExceptions') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('public_path')

  klass.define_instance_method('public_path=')
end

##
# Constant: ActionDispatch::Railtie
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rails::Railtie'))
end

##
# Constant: ActionDispatch::Reloader
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Reloader') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('_cleanup_callbacks')

  klass.define_method('_cleanup_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_cleanup_callbacks?')

  klass.define_method('_prepare_callbacks')

  klass.define_method('_prepare_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_prepare_callbacks?')

  klass.define_method('cleanup!')

  klass.define_method('prepare!')

  klass.define_method('to_cleanup') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('to_prepare') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_cleanup_callbacks')

  klass.define_instance_method('_cleanup_callbacks=')

  klass.define_instance_method('_cleanup_callbacks?')

  klass.define_instance_method('_prepare_callbacks')

  klass.define_instance_method('_prepare_callbacks=')

  klass.define_instance_method('_prepare_callbacks?')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('cleanup!')

  klass.define_instance_method('prepare!')
end

##
# Constant: ActionDispatch::RemoteIp
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::RemoteIp') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('check_ip')

  klass.define_instance_method('proxies')
end

##
# Constant: ActionDispatch::Request
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Request') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Rack::Request'))

  klass.define_method('ignore_accept_header')

  klass.define_method('ignore_accept_header=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('GET')

  klass.define_instance_method('POST')

  klass.define_instance_method('accept')

  klass.define_instance_method('accept_charset')

  klass.define_instance_method('accept_encoding')

  klass.define_instance_method('accept_language')

  klass.define_instance_method('auth_type')

  klass.define_instance_method('authorization')

  klass.define_instance_method('body')

  klass.define_instance_method('body_stream')

  klass.define_instance_method('cache_control')

  klass.define_instance_method('content_length')

  klass.define_instance_method('cookie_jar')

  klass.define_instance_method('deep_munge') do |method|
    method.define_argument('hash')
  end

  klass.define_instance_method('delete?')

  klass.define_instance_method('flash')

  klass.define_instance_method('form_data?')

  klass.define_instance_method('from')

  klass.define_instance_method('fullpath')

  klass.define_instance_method('gateway_interface')

  klass.define_instance_method('get?')

  klass.define_instance_method('head?')

  klass.define_instance_method('headers')

  klass.define_instance_method('ignore_accept_header')

  klass.define_instance_method('ignore_accept_header=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('ip')

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('local?')

  klass.define_instance_method('media_type')

  klass.define_instance_method('method')

  klass.define_instance_method('method_symbol')

  klass.define_instance_method('negotiate')

  klass.define_instance_method('original_fullpath')

  klass.define_instance_method('original_url')

  klass.define_instance_method('parse_query') do |method|
    method.define_argument('qs')
  end

  klass.define_instance_method('patch?')

  klass.define_instance_method('path_translated')

  klass.define_instance_method('post?')

  klass.define_instance_method('pragma')

  klass.define_instance_method('put?')

  klass.define_instance_method('query_parameters')

  klass.define_instance_method('raw_post')

  klass.define_instance_method('remote_addr')

  klass.define_instance_method('remote_host')

  klass.define_instance_method('remote_ident')

  klass.define_instance_method('remote_ip')

  klass.define_instance_method('remote_user')

  klass.define_instance_method('request_method')

  klass.define_instance_method('request_method_symbol')

  klass.define_instance_method('request_parameters')

  klass.define_instance_method('reset_session')

  klass.define_instance_method('server_name')

  klass.define_instance_method('server_protocol')

  klass.define_instance_method('server_software')

  klass.define_instance_method('session=') do |method|
    method.define_argument('session')
  end

  klass.define_instance_method('session_options=') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('uuid')

  klass.define_instance_method('xhr?')

  klass.define_instance_method('xml_http_request?')
end

##
# Constant: ActionDispatch::RequestId
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::RequestId') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::Response
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Response') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('default_charset')

  klass.define_method('default_charset=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('default_headers')

  klass.define_method('default_headers=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('await_commit')

  klass.define_instance_method('body')

  klass.define_instance_method('body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('body_parts')

  klass.define_instance_method('charset')

  klass.define_instance_method('charset=')

  klass.define_instance_method('close')

  klass.define_instance_method('code')

  klass.define_instance_method('commit!')

  klass.define_instance_method('committed?')

  klass.define_instance_method('content_type')

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('content_type')
  end

  klass.define_instance_method('cookies')

  klass.define_instance_method('default_charset')

  klass.define_instance_method('default_charset=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('default_headers')

  klass.define_instance_method('default_headers=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('delete_cookie') do |method|
    method.define_argument('key')
    method.define_optional_argument('value')
  end

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('header')

  klass.define_instance_method('header=')

  klass.define_instance_method('headers')

  klass.define_instance_method('headers=')

  klass.define_instance_method('location')

  klass.define_instance_method('location=') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('prepare!')

  klass.define_instance_method('redirect_url')

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('method')
  end

  klass.define_instance_method('response_code')

  klass.define_instance_method('sending_file=')

  klass.define_instance_method('set_cookie') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('status')

  klass.define_instance_method('status=') do |method|
    method.define_argument('status')
  end

  klass.define_instance_method('status_message')

  klass.define_instance_method('stream')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_path')
end

##
# Constant: ActionDispatch::Routing
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Routing') do |klass|
end

##
# Constant: ActionDispatch::SSL
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::SSL') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('default_hsts_options')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::Session
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Session') do |klass|
end

##
# Constant: ActionDispatch::ShowExceptions
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::ShowExceptions') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::Static
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::Static') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

##
# Constant: ActionDispatch::TestProcess
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::TestProcess') do |klass|

  klass.define_instance_method('assigns') do |method|
    method.define_optional_argument('key')
  end

  klass.define_instance_method('cookies')

  klass.define_instance_method('fixture_file_upload') do |method|
    method.define_argument('path')
    method.define_optional_argument('mime_type')
    method.define_optional_argument('binary')
  end

  klass.define_instance_method('flash')

  klass.define_instance_method('redirect_to_url')

  klass.define_instance_method('session')
end

##
# Constant: ActionDispatch::TestRequest
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::TestRequest') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionDispatch::Request'))

  klass.define_method('new') do |method|
    method.define_optional_argument('env')
  end

  klass.define_instance_method('accept=') do |method|
    method.define_argument('mime_types')
  end

  klass.define_instance_method('action=') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('cookies')

  klass.define_instance_method('host=') do |method|
    method.define_argument('host')
  end

  klass.define_instance_method('if_modified_since=') do |method|
    method.define_argument('last_modified')
  end

  klass.define_instance_method('if_none_match=') do |method|
    method.define_argument('etag')
  end

  klass.define_instance_method('path=') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('port=') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('rack_cookies')

  klass.define_instance_method('remote_addr=') do |method|
    method.define_argument('addr')
  end

  klass.define_instance_method('request_method=') do |method|
    method.define_argument('method')
  end

  klass.define_instance_method('request_uri=') do |method|
    method.define_argument('uri')
  end

  klass.define_instance_method('user_agent=') do |method|
    method.define_argument('user_agent')
  end
end

##
# Constant: ActionDispatch::TestResponse
# Created:  2013-07-06 18:52:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('ActionDispatch::TestResponse') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('ActionDispatch::Response'))

  klass.define_method('from_response') do |method|
    method.define_argument('response')
  end

  klass.define_instance_method('error?')

  klass.define_instance_method('missing?')

  klass.define_instance_method('redirect?')

  klass.define_instance_method('success?')
end