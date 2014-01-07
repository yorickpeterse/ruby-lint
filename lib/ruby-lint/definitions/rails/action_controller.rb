# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('ActionController') do |defs|
  defs.define_constant('ActionController') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('add_renderer') do |method|
      method.define_argument('key')
      method.define_block_argument('block')
    end

    klass.define_method('eager_load!')
  end

  defs.define_constant('ActionController::ActionControllerError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::BadRequest') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('type')
      method.define_optional_argument('e')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('original_exception')
  end

  defs.define_constant('ActionController::Base') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::Metal'))
    klass.inherits(defs.constant_proxy('ActionController::ParamsWrapper'))
    klass.inherits(defs.constant_proxy('ActionController::Instrumentation'))
    klass.inherits(defs.constant_proxy('ActionController::Rescue'))
    klass.inherits(defs.constant_proxy('ActionController::HttpAuthentication::Token::ControllerMethods'))
    klass.inherits(defs.constant_proxy('ActionController::HttpAuthentication::Digest::ControllerMethods'))
    klass.inherits(defs.constant_proxy('ActionController::HttpAuthentication::Basic::ControllerMethods'))
    klass.inherits(defs.constant_proxy('ActionController::RecordIdentifier'))
    klass.inherits(defs.constant_proxy('ActionController::DataStreaming'))
    klass.inherits(defs.constant_proxy('ActionController::Streaming'))
    klass.inherits(defs.constant_proxy('ActionController::ForceSSL'))
    klass.inherits(defs.constant_proxy('ActionController::RequestForgeryProtection'))
    klass.inherits(defs.constant_proxy('ActionController::Flash'))
    klass.inherits(defs.constant_proxy('ActionController::Cookies'))
    klass.inherits(defs.constant_proxy('ActionController::StrongParameters'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Rescuable'))
    klass.inherits(defs.constant_proxy('ActionController::ImplicitRender'))
    klass.inherits(defs.constant_proxy('ActionController::MimeResponds'))
    klass.inherits(defs.constant_proxy('ActionController::Caching'))
    klass.inherits(defs.constant_proxy('ActionController::Caching::Fragments'))
    klass.inherits(defs.constant_proxy('ActionController::Caching::ConfigMethods'))
    klass.inherits(defs.constant_proxy('AbstractController::Callbacks'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Callbacks'))
    klass.inherits(defs.constant_proxy('ActionController::ConditionalGet'))
    klass.inherits(defs.constant_proxy('ActionController::Head'))
    klass.inherits(defs.constant_proxy('ActionController::Renderers::All'))
    klass.inherits(defs.constant_proxy('ActionController::Renderers'))
    klass.inherits(defs.constant_proxy('ActionController::Rendering'))
    klass.inherits(defs.constant_proxy('ActionController::Redirecting'))
    klass.inherits(defs.constant_proxy('ActionController::RackDelegation'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Benchmarkable'))
    klass.inherits(defs.constant_proxy('AbstractController::Logger'))
    klass.inherits(defs.constant_proxy('ActionController::UrlFor'))
    klass.inherits(defs.constant_proxy('AbstractController::UrlFor'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Routing::UrlFor'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Routing::PolymorphicRoutes'))
    klass.inherits(defs.constant_proxy('ActionController::ModelNaming'))
    klass.inherits(defs.constant_proxy('ActionController::HideActions'))
    klass.inherits(defs.constant_proxy('ActionController::Helpers'))
    klass.inherits(defs.constant_proxy('AbstractController::Helpers'))
    klass.inherits(defs.constant_proxy('AbstractController::AssetPaths'))
    klass.inherits(defs.constant_proxy('AbstractController::Translation'))
    klass.inherits(defs.constant_proxy('AbstractController::Layouts'))
    klass.inherits(defs.constant_proxy('AbstractController::Rendering'))
    klass.inherits(defs.constant_proxy('AbstractController::ViewPaths'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Configurable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::Base::ACTION_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::All') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::CALLBACK_FILTER_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::Callback') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('_update_filter') do |method|
      method.define_argument('filter_options')
      method.define_argument('new_options')
    end

    klass.define_instance_method('apply') do |method|
      method.define_argument('code')
    end

    klass.define_instance_method('chain')

    klass.define_instance_method('chain=')

    klass.define_instance_method('clone') do |method|
      method.define_argument('chain')
      method.define_argument('klass')
    end

    klass.define_instance_method('deprecate_per_key_option') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('duplicates?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('filter')

    klass.define_instance_method('filter=')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('chain')
      method.define_argument('filter')
      method.define_argument('kind')
      method.define_argument('options')
      method.define_argument('klass')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('kind')

    klass.define_instance_method('kind=')

    klass.define_instance_method('klass')

    klass.define_instance_method('klass=')

    klass.define_instance_method('matches?') do |method|
      method.define_argument('_kind')
      method.define_argument('_filter')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('next_id')

    klass.define_instance_method('normalize_options!') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('options')

    klass.define_instance_method('options=')

    klass.define_instance_method('raw_filter')

    klass.define_instance_method('raw_filter=')

    klass.define_instance_method('recompile!') do |method|
      method.define_argument('_options')
    end
  end

  defs.define_constant('ActionController::Base::CallbackChain') do |klass|
    klass.inherits(defs.constant_proxy('Array'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Array'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('append') do |method|
      method.define_rest_argument('callbacks')
    end

    klass.define_instance_method('compile')

    klass.define_instance_method('config')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('config')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('prepend') do |method|
      method.define_rest_argument('callbacks')
    end
  end

  defs.define_constant('ActionController::Base::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('_set_wrapper_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('inherited') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('wrap_parameters') do |method|
      method.define_argument('name_or_model_or_options')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::Base::Collector') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('AbstractController::Collector'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('all') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('any') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('custom') do |method|
      method.define_argument('mime_type')
      method.define_block_argument('block')
    end

    klass.define_instance_method('format')

    klass.define_instance_method('format=')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('mimes')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('negotiate_format') do |method|
      method.define_argument('request')
    end

    klass.define_instance_method('order')

    klass.define_instance_method('order=')

    klass.define_instance_method('response')
  end

  defs.define_constant('ActionController::Base::ConfigMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('cache_store')

    klass.define_instance_method('cache_store=') do |method|
      method.define_argument('store')
    end
  end

  defs.define_constant('ActionController::Base::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::InheritableOptions'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Hash'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('compile_methods!') do |method|
      method.define_argument('keys')
    end

    klass.define_instance_method('compile_methods!')
  end

  defs.define_constant('ActionController::Base::DEFAULT_PROTECTED_INSTANCE_VARIABLES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::DEFAULT_SEND_FILE_DISPOSITION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::DEFAULT_SEND_FILE_TYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::EXCLUDE_PARAMETERS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::FileBody') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('each')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('to_path')
  end

  defs.define_constant('ActionController::Base::Fragments') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('expire_fragment') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('fragment_cache_key') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('fragment_exist?') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('instrument_fragment_cache') do |method|
      method.define_argument('name')
      method.define_argument('key')
    end

    klass.define_instance_method('read_fragment') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('write_fragment') do |method|
      method.define_argument('key')
      method.define_argument('content')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::Base::INSTANCE_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::MODULES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::MODULE_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::Options') do |klass|
    klass.inherits(defs.constant_proxy('#<Class:0x2e524>'))
    klass.inherits(defs.constant_proxy('Mutex_m'))
    klass.inherits(defs.constant_proxy('#<Module:0x2e52c>'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('from_hash') do |method|
      method.define_argument('hash')
    end

    klass.define_instance_method('include')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('format')
      method.define_argument('include')
      method.define_argument('exclude')
      method.define_argument('klass')
      method.define_argument('model')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('lock')

    klass.define_instance_method('locked?')

    klass.define_instance_method('model')

    klass.define_instance_method('name')

    klass.define_instance_method('synchronize') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('try_lock')

    klass.define_instance_method('unlock')
  end

  defs.define_constant('ActionController::Base::ProtectionMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::REDIRECT_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::RENDERERS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Base::URL_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Caching') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActionController::Caching::Fragments'))
    klass.inherits(defs.constant_proxy('ActionController::Caching::ConfigMethods'))

    klass.define_instance_method('cache') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
      method.define_block_argument('block')
    end

    klass.define_instance_method('view_cache_dependencies')
  end

  defs.define_constant('ActionController::Caching::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('view_cache_dependency') do |method|
      method.define_block_argument('dependency')
    end
  end

  defs.define_constant('ActionController::Caching::ConfigMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('cache_store')

    klass.define_instance_method('cache_store=') do |method|
      method.define_argument('store')
    end
  end

  defs.define_constant('ActionController::Caching::Fragments') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('expire_fragment') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('fragment_cache_key') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('fragment_exist?') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('instrument_fragment_cache') do |method|
      method.define_argument('name')
      method.define_argument('key')
    end

    klass.define_instance_method('read_fragment') do |method|
      method.define_argument('key')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('write_fragment') do |method|
      method.define_argument('key')
      method.define_argument('content')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::ConditionalGet') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::ConditionalGet::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('etag') do |method|
      method.define_block_argument('etagger')
    end
  end

  defs.define_constant('ActionController::Cookies') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::DataStreaming') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('send_data') do |method|
      method.define_argument('data')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('send_file') do |method|
      method.define_argument('path')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::DataStreaming::DEFAULT_SEND_FILE_DISPOSITION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::DataStreaming::DEFAULT_SEND_FILE_TYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::DataStreaming::FileBody') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('each')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('to_path')
  end

  defs.define_constant('ActionController::Flash') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('redirect_to') do |method|
      method.define_optional_argument('options')
      method.define_optional_argument('response_status_and_flash')
    end
  end

  defs.define_constant('ActionController::Flash::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('add_flash_types') do |method|
      method.define_rest_argument('types')
    end
  end

  defs.define_constant('ActionController::ForceSSL') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('force_ssl_redirect') do |method|
      method.define_optional_argument('host_or_options')
    end
  end

  defs.define_constant('ActionController::ForceSSL::ACTION_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::ForceSSL::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('force_ssl') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::ForceSSL::REDIRECT_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::ForceSSL::URL_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Head') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('head') do |method|
      method.define_argument('status')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::Helpers') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('helpers_path')

    klass.define_method('helpers_path=')
  end

  defs.define_constant('ActionController::Helpers::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('all_helpers_from_path') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('helper_attr') do |method|
      method.define_rest_argument('attrs')
    end

    klass.define_instance_method('helpers')

    klass.define_instance_method('modules_for_helpers') do |method|
      method.define_argument('args')
    end
  end

  defs.define_constant('ActionController::HideActions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::HideActions::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('action_methods')

    klass.define_instance_method('hide_action') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('visible_action?') do |method|
      method.define_argument('action_name')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::HttpAuthentication::Basic') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('authenticate') do |method|
      method.define_argument('request')
      method.define_block_argument('login_procedure')
    end

    klass.define_instance_method('authentication_request') do |method|
      method.define_argument('controller')
      method.define_argument('realm')
    end

    klass.define_instance_method('decode_credentials') do |method|
      method.define_argument('request')
    end

    klass.define_instance_method('encode_credentials') do |method|
      method.define_argument('user_name')
      method.define_argument('password')
    end

    klass.define_instance_method('user_name_and_password') do |method|
      method.define_argument('request')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Basic::ControllerMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('authenticate_or_request_with_http_basic') do |method|
      method.define_optional_argument('realm')
      method.define_block_argument('login_procedure')
    end

    klass.define_instance_method('authenticate_with_http_basic') do |method|
      method.define_block_argument('login_procedure')
    end

    klass.define_instance_method('request_http_basic_authentication') do |method|
      method.define_optional_argument('realm')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Basic::ControllerMethods::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('http_basic_authenticate_with') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Digest') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('authenticate') do |method|
      method.define_argument('request')
      method.define_argument('realm')
      method.define_block_argument('password_procedure')
    end

    klass.define_instance_method('authentication_header') do |method|
      method.define_argument('controller')
      method.define_argument('realm')
    end

    klass.define_instance_method('authentication_request') do |method|
      method.define_argument('controller')
      method.define_argument('realm')
      method.define_optional_argument('message')
    end

    klass.define_instance_method('decode_credentials') do |method|
      method.define_argument('header')
    end

    klass.define_instance_method('decode_credentials_header') do |method|
      method.define_argument('request')
    end

    klass.define_instance_method('encode_credentials') do |method|
      method.define_argument('http_method')
      method.define_argument('credentials')
      method.define_argument('password')
      method.define_argument('password_is_ha1')
    end

    klass.define_instance_method('expected_response') do |method|
      method.define_argument('http_method')
      method.define_argument('uri')
      method.define_argument('credentials')
      method.define_argument('password')
      method.define_optional_argument('password_is_ha1')
    end

    klass.define_instance_method('ha1') do |method|
      method.define_argument('credentials')
      method.define_argument('password')
    end

    klass.define_instance_method('nonce') do |method|
      method.define_argument('secret_key')
      method.define_optional_argument('time')
    end

    klass.define_instance_method('opaque') do |method|
      method.define_argument('secret_key')
    end

    klass.define_instance_method('secret_token') do |method|
      method.define_argument('request')
    end

    klass.define_instance_method('validate_digest_response') do |method|
      method.define_argument('request')
      method.define_argument('realm')
      method.define_block_argument('password_procedure')
    end

    klass.define_instance_method('validate_nonce') do |method|
      method.define_argument('secret_key')
      method.define_argument('request')
      method.define_argument('value')
      method.define_optional_argument('seconds_to_timeout')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Digest::ControllerMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('authenticate_or_request_with_http_digest') do |method|
      method.define_optional_argument('realm')
      method.define_block_argument('password_procedure')
    end

    klass.define_instance_method('authenticate_with_http_digest') do |method|
      method.define_optional_argument('realm')
      method.define_block_argument('password_procedure')
    end

    klass.define_instance_method('request_http_digest_authentication') do |method|
      method.define_optional_argument('realm')
      method.define_optional_argument('message')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Token') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('authenticate') do |method|
      method.define_argument('controller')
      method.define_block_argument('login_procedure')
    end

    klass.define_instance_method('authentication_request') do |method|
      method.define_argument('controller')
      method.define_argument('realm')
    end

    klass.define_instance_method('encode_credentials') do |method|
      method.define_argument('token')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('params_array_from') do |method|
      method.define_argument('raw_params')
    end

    klass.define_instance_method('raw_params') do |method|
      method.define_argument('auth')
    end

    klass.define_instance_method('rewrite_param_values') do |method|
      method.define_argument('array_params')
    end

    klass.define_instance_method('token_and_options') do |method|
      method.define_argument('request')
    end

    klass.define_instance_method('token_params_from') do |method|
      method.define_argument('auth')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Token::AUTHN_PAIR_DELIMITERS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::HttpAuthentication::Token::ControllerMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('authenticate_or_request_with_http_token') do |method|
      method.define_optional_argument('realm')
      method.define_block_argument('login_procedure')
    end

    klass.define_instance_method('authenticate_with_http_token') do |method|
      method.define_block_argument('login_procedure')
    end

    klass.define_instance_method('request_http_token_authentication') do |method|
      method.define_optional_argument('realm')
    end
  end

  defs.define_constant('ActionController::HttpAuthentication::Token::TOKEN_REGEX') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::ImplicitRender') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::Instrumentation') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::Instrumentation::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('log_process_action') do |method|
      method.define_argument('payload')
    end
  end

  defs.define_constant('ActionController::Integration') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::IntegrationTest') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::TestCase'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Routing::UrlFor'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Routing::PolymorphicRoutes'))
    klass.inherits(defs.constant_proxy('ActionController::ModelNaming'))
    klass.inherits(defs.constant_proxy('ActionController::TemplateAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Integration::Runner'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::TagAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::SelectorAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::RoutingAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::ResponseAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::DomAssertions'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::Pending'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::Deprecation'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::Assertions'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Callbacks'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::SetupAndTeardown'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::TaggedLogging'))
    klass.inherits(defs.constant_proxy('MiniTest::Assertions'))
    klass.inherits(defs.constant_proxy('MiniTest::Unit::Guard'))
    klass.inherits(defs.constant_proxy('MiniTest::Unit::LifecycleHooks'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('_setup_callbacks')

    klass.define_method('_teardown_callbacks')

    klass.define_method('app')

    klass.define_method('app=') do |method|
      method.define_argument('app')
    end

    klass.define_instance_method('app')

    klass.define_instance_method('url_options')
  end

  defs.define_constant('ActionController::InvalidAuthenticityToken') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::Live') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::Live::Buffer') do |klass|
    klass.inherits(defs.constant_proxy('ActionDispatch::Response::Buffer'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('call_on_error')

    klass.define_instance_method('close')

    klass.define_instance_method('each')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('response')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('on_error') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('write') do |method|
      method.define_argument('string')
    end
  end

  defs.define_constant('ActionController::Live::Response') do |klass|
    klass.inherits(defs.constant_proxy('ActionDispatch::Response'))
    klass.inherits(defs.constant_proxy('MonitorMixin'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::Cache::Response'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::FilterRedirect'))
    klass.inherits(defs.constant_proxy('Rack::Response::Helpers'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('commit!')
  end

  defs.define_constant('ActionController::Live::Response::Buffer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('close')

    klass.define_instance_method('closed?')

    klass.define_instance_method('each') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('response')
      method.define_argument('buf')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('write') do |method|
      method.define_argument('string')
    end
  end

  defs.define_constant('ActionController::Live::Response::CACHE_CONTROL') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::CONTENT_TYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::ConditionVariable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('broadcast')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('monitor')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('signal')

    klass.define_instance_method('wait') do |method|
      method.define_optional_argument('timeout')
    end

    klass.define_instance_method('wait_until')

    klass.define_instance_method('wait_while')
  end

  defs.define_constant('ActionController::Live::Response::DEFAULT_CACHE_CONTROL') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::EMPTY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::ETAG') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::FILTERED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::Header') do |klass|
    klass.inherits(defs.constant_proxy('#<Class:0x2e580>'))
    klass.inherits(defs.constant_proxy('Kernel'))

    klass.define_instance_method('[]=') do |method|
      method.define_argument('k')
      method.define_argument('v')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('response')
      method.define_argument('header')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('merge') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('to_hash')
  end

  defs.define_constant('ActionController::Live::Response::Header::RUBYGEMS_ACTIVATION_MONITOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::LAST_MODIFIED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::LOCATION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::MUST_REVALIDATE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::NO_CACHE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::NO_CONTENT_CODES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::PRIVATE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::PUBLIC') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::SET_COOKIE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Live::Response::SPECIAL_KEYS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::LogSubscriber'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('exist_fragment?') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('expire_fragment') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('expire_page') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('halted_callback') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('logger')

    klass.define_instance_method('process_action') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('read_fragment') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('redirect_to') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('send_data') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('send_file') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('start_processing') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('unpermitted_parameters') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('write_fragment') do |method|
      method.define_argument('event')
    end

    klass.define_instance_method('write_page') do |method|
      method.define_argument('event')
    end
  end

  defs.define_constant('ActionController::LogSubscriber::BLACK') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::BLUE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::BOLD') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::CLEAR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::CYAN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::GREEN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::INTERNAL_PARAMS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::MAGENTA') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::RED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::WHITE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::LogSubscriber::YELLOW') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Metal') do |klass|
    klass.inherits(defs.constant_proxy('AbstractController::Base'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Configurable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

    klass.define_instance_method('initialize')

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

  defs.define_constant('ActionController::Metal::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('config')

    klass.define_instance_method('config_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('configure')
  end

  defs.define_constant('ActionController::Metal::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::InheritableOptions'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Hash'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('compile_methods!') do |method|
      method.define_argument('keys')
    end

    klass.define_instance_method('compile_methods!')
  end

  defs.define_constant('ActionController::MethodNotAllowed') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_rest_argument('allowed_methods')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('ActionController::Middleware') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::Metal'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Configurable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('build') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('middleware_stack')

    klass.define_method('new') do |method|
      method.define_argument('app')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('app')

    klass.define_instance_method('app=')

    klass.define_instance_method('index')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('app')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('process') do |method|
      method.define_argument('action')
    end
  end

  defs.define_constant('ActionController::Middleware::ActionMiddleware') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('call') do |method|
      method.define_argument('env')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('controller')
      method.define_argument('app')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('ActionController::Middleware::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('config')

    klass.define_instance_method('config_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('configure')
  end

  defs.define_constant('ActionController::Middleware::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::InheritableOptions'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Hash'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('compile_methods!') do |method|
      method.define_argument('keys')
    end

    klass.define_instance_method('compile_methods!')
  end

  defs.define_constant('ActionController::MiddlewareStack') do |klass|
    klass.inherits(defs.constant_proxy('ActionDispatch::MiddlewareStack'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('build') do |method|
      method.define_argument('action')
      method.define_optional_argument('app')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('ActionController::MiddlewareStack::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('rewind')

    klass.define_instance_method('size')

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end
  end

  defs.define_constant('ActionController::MiddlewareStack::Middleware') do |klass|
    klass.inherits(defs.constant_proxy('ActionDispatch::MiddlewareStack::Middleware'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('valid?') do |method|
      method.define_argument('action')
    end
  end

  defs.define_constant('ActionController::MiddlewareStack::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::MimeResponds') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::MimeResponds::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('clear_respond_to')

    klass.define_instance_method('respond_to') do |method|
      method.define_rest_argument('mimes')
    end
  end

  defs.define_constant('ActionController::MimeResponds::Collector') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('AbstractController::Collector'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('all') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('any') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('custom') do |method|
      method.define_argument('mime_type')
      method.define_block_argument('block')
    end

    klass.define_instance_method('format')

    klass.define_instance_method('format=')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('mimes')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('negotiate_format') do |method|
      method.define_argument('request')
    end

    klass.define_instance_method('order')

    klass.define_instance_method('order=')

    klass.define_instance_method('response')
  end

  defs.define_constant('ActionController::MissingFile') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::ModelNaming') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('convert_to_model') do |method|
      method.define_argument('object')
    end

    klass.define_instance_method('model_name_from_record_or_class') do |method|
      method.define_argument('record_or_class')
    end
  end

  defs.define_constant('ActionController::NotImplemented') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::MethodNotAllowed'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::ParameterMissing') do |klass|
    klass.inherits(defs.constant_proxy('KeyError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('param')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('param')
  end

  defs.define_constant('ActionController::Parameters') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::HashWithIndifferentAccess'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Hash'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('attributes')

      method.returns { |object| object.instance }
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

  defs.define_constant('ActionController::Parameters::Bucket') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::Parameters::EMPTY_ARRAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Parameters::Entries') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

    klass.define_instance_method('at') do |method|
      method.define_argument('idx')
    end

    klass.define_instance_method('copy_from') do |method|
      method.define_argument('other')
      method.define_argument('start')
      method.define_argument('length')
      method.define_argument('dest')
    end

    klass.define_instance_method('delete') do |method|
      method.define_argument('start')
      method.define_argument('length')
      method.define_argument('object')
    end

    klass.define_instance_method('delete_at_index') do |method|
      method.define_argument('index')
    end

    klass.define_instance_method('dup')

    klass.define_instance_method('each')

    klass.define_instance_method('empty?')

    klass.define_instance_method('fields')

    klass.define_instance_method('first')

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

    klass.define_instance_method('length')

    klass.define_instance_method('put') do |method|
      method.define_argument('idx')
      method.define_argument('val')
    end

    klass.define_instance_method('reverse!') do |method|
      method.define_argument('start')
      method.define_argument('total')
    end

    klass.define_instance_method('shift')

    klass.define_instance_method('size')

    klass.define_instance_method('swap') do |method|
      method.define_argument('a')
      method.define_argument('b')
    end

    klass.define_instance_method('to_a')

    klass.define_instance_method('to_s')
  end

  defs.define_constant('ActionController::Parameters::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('rewind')

    klass.define_instance_method('size')

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end
  end

  defs.define_constant('ActionController::Parameters::Iterator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('state')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('next') do |method|
      method.define_argument('item')
    end
  end

  defs.define_constant('ActionController::Parameters::MAX_ENTRIES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Parameters::MIN_SIZE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Parameters::NEVER_UNPERMITTED_PARAMS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Parameters::PERMITTED_SCALAR_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Parameters::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::Parameters::State') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::ParamsWrapper') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('process_action') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActionController::ParamsWrapper::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('_set_wrapper_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('inherited') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('wrap_parameters') do |method|
      method.define_argument('name_or_model_or_options')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::ParamsWrapper::EXCLUDE_PARAMETERS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::RackDelegation') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::Railtie') do |klass|
    klass.inherits(defs.constant_proxy('Rails::Railtie'))
    klass.inherits(defs.constant_proxy('Rails::Railtie::Configurable'))
    klass.inherits(defs.constant_proxy('Rails::Initializable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::Railtie::ABSTRACT_RAILTIES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Railtie::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::Railtie::Collection') do |klass|
    klass.inherits(defs.constant_proxy('Array'))
    klass.inherits(defs.constant_proxy('TSort'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Array'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('tsort_each_child') do |method|
      method.define_argument('initializer')
      method.define_block_argument('block')
    end

    klass.define_instance_method('tsort_each_node')
  end

  defs.define_constant('ActionController::Railtie::Configurable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Railtie::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::Railtie::Initializer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::Railties') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Railties::Helpers') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('inherited') do |method|
      method.define_argument('klass')
    end
  end

  defs.define_constant('ActionController::RecordIdentifier') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::RecordIdentifier::INSTANCE_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::RecordIdentifier::MODULE_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::RedirectBackError') do |klass|
    klass.inherits(defs.constant_proxy('AbstractController::Error'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('message')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('ActionController::RedirectBackError::DEFAULT_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Redirecting') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('redirect_to') do |method|
      method.define_optional_argument('options')
      method.define_optional_argument('response_status')
    end
  end

  defs.define_constant('ActionController::RenderError') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::Renderers') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::Renderers::All') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Renderers::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('use_renderer') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('use_renderers') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('ActionController::Renderers::RENDERERS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Rendering') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('process_action') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_instance_method('render') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('render_to_body') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_instance_method('render_to_string') do |method|
      method.define_rest_argument('arg1')
    end
  end

  defs.define_constant('ActionController::RequestForgeryProtection') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('form_authenticity_param')

    klass.define_instance_method('form_authenticity_token')

    klass.define_instance_method('handle_unverified_request')

    klass.define_instance_method('protect_against_forgery?')

    klass.define_instance_method('verified_request?')

    klass.define_instance_method('verify_authenticity_token')
  end

  defs.define_constant('ActionController::RequestForgeryProtection::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('protect_from_forgery') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('ActionController::Rescue') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('rescue_with_handler') do |method|
      method.define_argument('exception')
    end

    klass.define_instance_method('show_detailed_exceptions?')
  end

  defs.define_constant('ActionController::Responder') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

    klass.define_instance_method('initialize') do |method|
      method.define_argument('controller')
      method.define_argument('resources')
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
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

  defs.define_constant('ActionController::Responder::DEFAULT_ACTIONS_FOR_VERBS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Routing') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::RoutingError') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('failures')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('message')
      method.define_optional_argument('failures')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('ActionController::SessionOverflowError') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('message')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('ActionController::SessionOverflowError::DEFAULT_MESSAGE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::Streaming') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('_process_options') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('_render_template') do |method|
      method.define_argument('options')
    end
  end

  defs.define_constant('ActionController::StrongParameters') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('params')

    klass.define_instance_method('params=') do |method|
      method.define_argument('value')
    end
  end

  defs.define_constant('ActionController::TemplateAssertions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('ActionController::TestCase') do |klass|
    klass.inherits(defs.constant_proxy('ActiveSupport::TestCase'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::TagAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::SelectorAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::RoutingAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::ResponseAssertions'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Assertions::DomAssertions'))
    klass.inherits(defs.constant_proxy('ActionController::TemplateAssertions'))
    klass.inherits(defs.constant_proxy('ActionController::TestCase::Behavior'))
    klass.inherits(defs.constant_proxy('ActionDispatch::TestProcess'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::ConstantLookup'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::Pending'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::Deprecation'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::Assertions'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Callbacks'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::SetupAndTeardown'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Testing::TaggedLogging'))
    klass.inherits(defs.constant_proxy('MiniTest::Assertions'))
    klass.inherits(defs.constant_proxy('MiniTest::Unit::Guard'))
    klass.inherits(defs.constant_proxy('MiniTest::Unit::LifecycleHooks'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::TestCase::Assertion') do |klass|
    klass.inherits(defs.constant_proxy('Exception'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::TestCase::Behavior') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActionDispatch::TestProcess'))

    klass.define_instance_method('build_request')

    klass.define_instance_method('build_response')

    klass.define_instance_method('delete') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('get') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('head') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('paramify_values') do |method|
      method.define_argument('hash_or_array_or_value')
    end

    klass.define_instance_method('patch') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('post') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('process') do |method|
      method.define_argument('action')
      method.define_optional_argument('http_method')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('put') do |method|
      method.define_argument('action')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('request')

    klass.define_instance_method('response')

    klass.define_instance_method('setup_controller_request_and_response')

    klass.define_instance_method('xhr') do |method|
      method.define_argument('request_method')
      method.define_argument('action')
      method.define_optional_argument('parameters')
      method.define_optional_argument('session')
      method.define_optional_argument('flash')
    end

    klass.define_instance_method('xml_http_request') do |method|
      method.define_argument('request_method')
      method.define_argument('action')
      method.define_optional_argument('parameters')
      method.define_optional_argument('session')
      method.define_optional_argument('flash')
    end
  end

  defs.define_constant('ActionController::TestCase::Behavior::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('controller_class')

    klass.define_instance_method('controller_class=') do |method|
      method.define_argument('new_class')
    end

    klass.define_instance_method('determine_default_controller_class') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('prepare_controller_class') do |method|
      method.define_argument('new_class')
    end

    klass.define_instance_method('tests') do |method|
      method.define_argument('controller_class')
    end
  end

  defs.define_constant('ActionController::TestCase::CALLBACK_FILTER_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestCase::Callback') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('_update_filter') do |method|
      method.define_argument('filter_options')
      method.define_argument('new_options')
    end

    klass.define_instance_method('apply') do |method|
      method.define_argument('code')
    end

    klass.define_instance_method('chain')

    klass.define_instance_method('chain=')

    klass.define_instance_method('clone') do |method|
      method.define_argument('chain')
      method.define_argument('klass')
    end

    klass.define_instance_method('deprecate_per_key_option') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('duplicates?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('filter')

    klass.define_instance_method('filter=')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('chain')
      method.define_argument('filter')
      method.define_argument('kind')
      method.define_argument('options')
      method.define_argument('klass')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('kind')

    klass.define_instance_method('kind=')

    klass.define_instance_method('klass')

    klass.define_instance_method('klass=')

    klass.define_instance_method('matches?') do |method|
      method.define_argument('_kind')
      method.define_argument('_filter')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('next_id')

    klass.define_instance_method('normalize_options!') do |method|
      method.define_argument('options')
    end

    klass.define_instance_method('options')

    klass.define_instance_method('options=')

    klass.define_instance_method('raw_filter')

    klass.define_instance_method('raw_filter=')

    klass.define_instance_method('recompile!') do |method|
      method.define_argument('_options')
    end
  end

  defs.define_constant('ActionController::TestCase::CallbackChain') do |klass|
    klass.inherits(defs.constant_proxy('Array'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Array'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('append') do |method|
      method.define_rest_argument('callbacks')
    end

    klass.define_instance_method('compile')

    klass.define_instance_method('config')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('name')
      method.define_argument('config')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('prepend') do |method|
      method.define_rest_argument('callbacks')
    end
  end

  defs.define_constant('ActionController::TestCase::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('controller_class')

    klass.define_instance_method('controller_class=') do |method|
      method.define_argument('new_class')
    end

    klass.define_instance_method('determine_default_controller_class') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('prepare_controller_class') do |method|
      method.define_argument('new_class')
    end

    klass.define_instance_method('tests') do |method|
      method.define_argument('controller_class')
    end
  end

  defs.define_constant('ActionController::TestCase::DomAssertions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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
  end

  defs.define_constant('ActionController::TestCase::NO_STRIP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestCase::PASSTHROUGH_EXCEPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestCase::RaiseActionExceptions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('included') do |method|
      method.define_argument('base')
    end

    klass.define_instance_method('rescue_action_without_handler') do |method|
      method.define_argument('e')
    end
  end

  defs.define_constant('ActionController::TestCase::ResponseAssertions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('assert_redirected_to') do |method|
      method.define_optional_argument('options')
      method.define_optional_argument('message')
    end

    klass.define_instance_method('assert_response') do |method|
      method.define_argument('type')
      method.define_optional_argument('message')
    end
  end

  defs.define_constant('ActionController::TestCase::RoutingAssertions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('assert_generates') do |method|
      method.define_argument('expected_path')
      method.define_argument('options')
      method.define_optional_argument('defaults')
      method.define_optional_argument('extras')
      method.define_optional_argument('message')
    end

    klass.define_instance_method('assert_recognizes') do |method|
      method.define_argument('expected_options')
      method.define_argument('path')
      method.define_optional_argument('extras')
      method.define_optional_argument('msg')
    end

    klass.define_instance_method('assert_routing') do |method|
      method.define_argument('path')
      method.define_argument('options')
      method.define_optional_argument('defaults')
      method.define_optional_argument('extras')
      method.define_optional_argument('message')
    end

    klass.define_instance_method('method_missing') do |method|
      method.define_argument('selector')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_routing')
  end

  defs.define_constant('ActionController::TestCase::SelectorAssertions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

    klass.define_instance_method('count_description') do |method|
      method.define_argument('min')
      method.define_argument('max')
      method.define_argument('count')
    end

    klass.define_instance_method('css_select') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('response_from_page')
  end

  defs.define_constant('ActionController::TestCase::TagAssertions') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('assert_no_tag') do |method|
      method.define_rest_argument('opts')
    end

    klass.define_instance_method('assert_tag') do |method|
      method.define_rest_argument('opts')
    end

    klass.define_instance_method('find_all_tag') do |method|
      method.define_argument('conditions')
    end

    klass.define_instance_method('find_tag') do |method|
      method.define_argument('conditions')
    end

    klass.define_instance_method('html_document')
  end

  defs.define_constant('ActionController::TestCase::UNDEFINED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('inspect')
  end

  defs.define_constant('ActionController::TestRequest') do |klass|
    klass.inherits(defs.constant_proxy('ActionDispatch::TestRequest'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::URL'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::Upload'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::FilterParameters'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::Parameters'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::MimeNegotiation'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::Cache::Request'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('assign_parameters') do |method|
      method.define_argument('routes')
      method.define_argument('controller_path')
      method.define_argument('action')
      method.define_optional_argument('parameters')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('env')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('recycle!')
  end

  defs.define_constant('ActionController::TestRequest::BROWSER_LIKE_ACCEPTS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::DEFAULT_ENV') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::DEFAULT_PORTS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::ENV_MATCH') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::ENV_METHODS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::FORM_DATA_MEDIA_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::HOST_REGEXP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::HTTP_IF_MODIFIED_SINCE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::HTTP_IF_NONE_MATCH') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::HTTP_METHODS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::HTTP_METHOD_LOOKUP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::IP_HOST_REGEXP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::KV_RE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::LOCALHOST') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::NULL_ENV_FILTER') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::NULL_PARAM_FILTER') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::PAIR_RE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::PARSEABLE_DATA_MEDIA_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::PROTOCOL_REGEXP') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC2518') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC2616') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC3253') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC3648') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC3744') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC5323') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::RFC5789') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestRequest::Session') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('create') do |method|
      method.define_argument('store')
      method.define_argument('env')
      method.define_argument('default_options')
    end

    klass.define_method('find') do |method|
      method.define_argument('env')
    end

    klass.define_method('set') do |method|
      method.define_argument('env')
      method.define_argument('session')
    end

    klass.define_instance_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_instance_method('clear')

    klass.define_instance_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('destroy')

    klass.define_instance_method('empty?')

    klass.define_instance_method('exists?')

    klass.define_instance_method('has_key?') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('id')

    klass.define_instance_method('include?') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('by')
      method.define_argument('env')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('key?') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('keys')

    klass.define_instance_method('loaded?')

    klass.define_instance_method('merge!') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('options')

    klass.define_instance_method('to_hash')

    klass.define_instance_method('update') do |method|
      method.define_argument('hash')
    end

    klass.define_instance_method('values')
  end

  defs.define_constant('ActionController::TestResponse') do |klass|
    klass.inherits(defs.constant_proxy('ActionDispatch::TestResponse'))
    klass.inherits(defs.constant_proxy('MonitorMixin'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::Cache::Response'))
    klass.inherits(defs.constant_proxy('ActionDispatch::Http::FilterRedirect'))
    klass.inherits(defs.constant_proxy('Rack::Response::Helpers'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('recycle!')
  end

  defs.define_constant('ActionController::TestResponse::Buffer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('close')

    klass.define_instance_method('closed?')

    klass.define_instance_method('each') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('response')
      method.define_argument('buf')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('write') do |method|
      method.define_argument('string')
    end
  end

  defs.define_constant('ActionController::TestResponse::CACHE_CONTROL') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::CONTENT_TYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::ConditionVariable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('broadcast')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('monitor')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('signal')

    klass.define_instance_method('wait') do |method|
      method.define_optional_argument('timeout')
    end

    klass.define_instance_method('wait_until')

    klass.define_instance_method('wait_while')
  end

  defs.define_constant('ActionController::TestResponse::DEFAULT_CACHE_CONTROL') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::EMPTY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::ETAG') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::FILTERED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::LAST_MODIFIED') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::LOCATION') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::MUST_REVALIDATE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::NO_CACHE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::NO_CONTENT_CODES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::PRIVATE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::PUBLIC') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::SET_COOKIE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestResponse::SPECIAL_KEYS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestSession') do |klass|
    klass.inherits(defs.constant_proxy('Rack::Session::Abstract::SessionHash'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('destroy')

    klass.define_instance_method('exists?')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('session')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('keys')

    klass.define_instance_method('values')
  end

  defs.define_constant('ActionController::TestSession::DEFAULT_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('ActionController::TestSession::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('Enumerable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('rewind')

    klass.define_instance_method('size')

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end
  end

  defs.define_constant('ActionController::TestSession::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

  defs.define_constant('ActionController::Testing') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('headers=') do |method|
      method.define_argument('new_headers')
    end
  end

  defs.define_constant('ActionController::Testing::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('before_filters')
  end

  defs.define_constant('ActionController::Testing::Functional') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('recycle!')

    klass.define_instance_method('set_response!') do |method|
      method.define_argument('request')
    end
  end

  defs.define_constant('ActionController::UnknownController') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::UnknownFormat') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::UnknownHttpMethod') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::ActionControllerError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ActionController::UnpermittedParameters') do |klass|
    klass.inherits(defs.constant_proxy('IndexError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('params')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('params')
  end

  defs.define_constant('ActionController::UrlFor') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('url_options')
  end

  defs.define_constant('ActionController::UrlGenerationError') do |klass|
    klass.inherits(defs.constant_proxy('ActionController::RoutingError'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Blamable'))
    klass.inherits(defs.constant_proxy('ActiveSupport::Dependencies::Loadable'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end
end
