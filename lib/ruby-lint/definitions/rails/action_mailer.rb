# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-07 17:54:58 +0200
# Platform: rbx 2.0.0.rc1

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('version')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('AbstractController::Base'))

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

  klass.define_method('_view_paths')

  klass.define_method('_view_paths=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_view_paths?')

  klass.define_method('asset_host')

  klass.define_method('asset_host=') do |method|
    method.define_argument('value')
  end

  klass.define_method('assets_dir')

  klass.define_method('assets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('controller_path')

  klass.define_method('default') do |method|
    method.define_optional_argument('value')
  end

  klass.define_method('default_asset_host_protocol')

  klass.define_method('default_asset_host_protocol=') do |method|
    method.define_argument('value')
  end

  klass.define_method('default_options=') do |method|
    method.define_optional_argument('value')
  end

  klass.define_method('default_params')

  klass.define_method('default_params=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_params?')

  klass.define_method('deliver_mail') do |method|
    method.define_argument('mail')
  end

  klass.define_method('delivery_method')

  klass.define_method('delivery_method=') do |method|
    method.define_argument('val')
  end

  klass.define_method('delivery_method?')

  klass.define_method('delivery_methods')

  klass.define_method('delivery_methods=') do |method|
    method.define_argument('val')
  end

  klass.define_method('delivery_methods?')

  klass.define_method('file_settings')

  klass.define_method('file_settings=') do |method|
    method.define_argument('val')
  end

  klass.define_method('file_settings?')

  klass.define_method('javascripts_dir')

  klass.define_method('javascripts_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('value')
  end

  klass.define_method('mailer_name')

  klass.define_method('mailer_name=')

  klass.define_method('method_missing') do |method|
    method.define_argument('method_name')
    method.define_rest_argument('args')
  end

  klass.define_method('perform_deliveries')

  klass.define_method('perform_deliveries=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('protected_instance_variables')

  klass.define_method('protected_instance_variables=') do |method|
    method.define_argument('val')
  end

  klass.define_method('protected_instance_variables?')

  klass.define_method('raise_delivery_errors')

  klass.define_method('raise_delivery_errors=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('receive') do |method|
    method.define_argument('raw_mail')
  end

  klass.define_method('register_interceptor') do |method|
    method.define_argument('interceptor')
  end

  klass.define_method('register_interceptors') do |method|
    method.define_rest_argument('interceptors')
  end

  klass.define_method('register_observer') do |method|
    method.define_argument('observer')
  end

  klass.define_method('register_observers') do |method|
    method.define_rest_argument('observers')
  end

  klass.define_method('relative_url_root')

  klass.define_method('relative_url_root=') do |method|
    method.define_argument('value')
  end

  klass.define_method('respond_to?') do |method|
    method.define_argument('method')
    method.define_optional_argument('include_private')
  end

  klass.define_method('sendmail_settings')

  klass.define_method('sendmail_settings=') do |method|
    method.define_argument('val')
  end

  klass.define_method('sendmail_settings?')

  klass.define_method('set_payload_for_mail') do |method|
    method.define_argument('payload')
    method.define_argument('mail')
  end

  klass.define_method('smtp_settings')

  klass.define_method('smtp_settings=') do |method|
    method.define_argument('val')
  end

  klass.define_method('smtp_settings?')

  klass.define_method('stylesheets_dir')

  klass.define_method('stylesheets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_method('test_settings')

  klass.define_method('test_settings=') do |method|
    method.define_argument('val')
  end

  klass.define_method('test_settings?')

  klass.define_instance_method('_helper_methods')

  klass.define_instance_method('_helper_methods=')

  klass.define_instance_method('_helper_methods?')

  klass.define_instance_method('_helpers')

  klass.define_instance_method('_helpers=')

  klass.define_instance_method('_helpers?')

  klass.define_instance_method('_process_action_callbacks')

  klass.define_instance_method('_process_action_callbacks=')

  klass.define_instance_method('_process_action_callbacks?')

  klass.define_instance_method('_view_paths')

  klass.define_instance_method('_view_paths=')

  klass.define_instance_method('_view_paths?')

  klass.define_instance_method('asset_host')

  klass.define_instance_method('asset_host=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('assets_dir')

  klass.define_instance_method('assets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('attachments')

  klass.define_instance_method('collect_responses') do |method|
    method.define_argument('headers')
  end

  klass.define_instance_method('create_parts_from_responses') do |method|
    method.define_argument('m')
    method.define_argument('responses')
  end

  klass.define_instance_method('default_asset_host_protocol')

  klass.define_instance_method('default_asset_host_protocol=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_i18n_subject') do |method|
    method.define_optional_argument('interpolations')
  end

  klass.define_instance_method('default_params')

  klass.define_instance_method('default_params=')

  klass.define_instance_method('default_params?')

  klass.define_instance_method('delivery_method')

  klass.define_instance_method('delivery_method=')

  klass.define_instance_method('delivery_method?')

  klass.define_instance_method('delivery_methods')

  klass.define_instance_method('delivery_methods=')

  klass.define_instance_method('delivery_methods?')

  klass.define_instance_method('each_template') do |method|
    method.define_argument('paths')
    method.define_argument('name')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file_settings')

  klass.define_instance_method('file_settings=')

  klass.define_instance_method('file_settings?')

  klass.define_instance_method('headers') do |method|
    method.define_optional_argument('args')
  end

  klass.define_instance_method('insert_part') do |method|
    method.define_argument('container')
    method.define_argument('response')
    method.define_argument('charset')
  end

  klass.define_instance_method('javascripts_dir')

  klass.define_instance_method('javascripts_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('logger')

  klass.define_instance_method('logger=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('mail') do |method|
    method.define_optional_argument('headers')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mailer_name')

  klass.define_instance_method('message')

  klass.define_instance_method('message=')

  klass.define_instance_method('perform_deliveries')

  klass.define_instance_method('perform_deliveries=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('protected_instance_variables')

  klass.define_instance_method('protected_instance_variables=')

  klass.define_instance_method('protected_instance_variables?')

  klass.define_instance_method('raise_delivery_errors')

  klass.define_instance_method('raise_delivery_errors=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('relative_url_root')

  klass.define_instance_method('relative_url_root=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('sendmail_settings')

  klass.define_instance_method('sendmail_settings=')

  klass.define_instance_method('sendmail_settings?')

  klass.define_instance_method('set_content_type') do |method|
    method.define_argument('m')
    method.define_argument('user_content_type')
    method.define_argument('class_default')
  end

  klass.define_instance_method('smtp_settings')

  klass.define_instance_method('smtp_settings=')

  klass.define_instance_method('smtp_settings?')

  klass.define_instance_method('stylesheets_dir')

  klass.define_instance_method('stylesheets_dir=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('test_settings')

  klass.define_instance_method('test_settings=')

  klass.define_instance_method('test_settings?')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::Collector') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('any') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('custom') do |method|
    method.define_argument('mime')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('responses')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::DeliveryMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('wrap_delivery_behavior!') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::MailHelper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('attachments')

  klass.define_instance_method('block_format') do |method|
    method.define_argument('text')
  end

  klass.define_instance_method('format_paragraph') do |method|
    method.define_argument('text')
    method.define_optional_argument('len')
    method.define_optional_argument('indent')
  end

  klass.define_instance_method('mailer')

  klass.define_instance_method('message')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Railtie'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::TestCase'))

  klass.define_method('_mailer_class')

  klass.define_method('_mailer_class=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_mailer_class?')

  klass.define_method('_setup_callbacks')

  klass.define_instance_method('_mailer_class')

  klass.define_instance_method('_mailer_class=')

  klass.define_instance_method('_mailer_class?')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::TestHelper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('assert_emails') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('assert_no_emails') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActionMailer::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

