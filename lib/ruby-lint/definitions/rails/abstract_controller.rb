# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:50 +0200
# Platform: rbx 2.0.0.n198

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::AssetPaths') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('abstract')

  klass.define_method('abstract!')

  klass.define_method('abstract?')

  klass.define_method('action_methods')

  klass.define_method('clear_action_methods!')

  klass.define_method('config')

  klass.define_method('config_accessor') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('configure')

  klass.define_method('controller_path')

  klass.define_method('direct_descendants')

  klass.define_method('hidden_actions')

  klass.define_method('inherited') do |method|
    method.define_argument('klass')
  end

  klass.define_method('internal_methods')

  klass.define_method('method_added') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('action_methods')

  klass.define_instance_method('action_name')

  klass.define_instance_method('action_name=')

  klass.define_instance_method('available_action?') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('config')

  klass.define_instance_method('controller_path')

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=')

  klass.define_instance_method('process') do |method|
    method.define_argument('action')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('response_body')

  klass.define_instance_method('response_body=')

  klass.define_instance_method('send_action') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Callbacks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('process_action') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Collector') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('generate_method_for_mime') do |method|
    method.define_argument('mime')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('atom') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('bmp') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('css') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('csv') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gif') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('html') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ics') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('jpeg') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('js') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('json') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('symbol')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mpeg') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('multipart_form') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pdf') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('png') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rss') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('text') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tiff') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('url_encoded_form') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('xml') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('yaml') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Helpers') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Layouts') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_layout_conditions') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('_normalize_options') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('action_has_layout=')

  klass.define_instance_method('action_has_layout?')
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Logger') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Railties') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Rendering') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_render_template') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('render') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('render_to_body') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('render_to_string') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('view_assigns')

  klass.define_instance_method('view_context')

  klass.define_instance_method('view_context_class')

  klass.define_instance_method('view_context_class=')

  klass.define_instance_method('view_renderer')
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::Translation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('l') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('localize') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('t') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('translate') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::UrlFor') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_routes')
end

RubyLint::VirtualMachine.global_scope.define_constant('AbstractController::ViewPaths') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('base')
  end

  klass.define_method('included') do |method|
    method.define_optional_argument('base')
    method.define_block_argument('block')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('_prefixes')

  klass.define_instance_method('append_view_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('details_for_lookup')

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

  klass.define_instance_method('lookup_context')

  klass.define_instance_method('prepend_view_path') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('template_exists?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('view_paths') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

