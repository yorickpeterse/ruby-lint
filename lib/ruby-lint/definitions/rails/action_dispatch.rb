# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:54 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch') do |klass|
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

  klass.define_method('test_app')

  klass.define_method('test_app=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('test_app')

  klass.define_instance_method('test_app=') do |method|
    method.define_argument('obj')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Assertions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('assert_generates') do |method|
    method.define_argument('expected_path')
    method.define_argument('options')
    method.define_optional_argument('defaults')
    method.define_optional_argument('extras')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_no_tag') do |method|
    method.define_rest_argument('opts')
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

  klass.define_instance_method('assert_tag') do |method|
    method.define_rest_argument('opts')
  end

  klass.define_instance_method('count_description') do |method|
    method.define_argument('min')
    method.define_argument('max')
    method.define_argument('count')
  end

  klass.define_instance_method('css_select') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_all_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('find_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('html_document')

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('selector')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('response_from_page')

  klass.define_instance_method('with_routing')
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Callbacks') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('direct_descendants')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('set_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
  end

  klass.define_method('skip_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
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

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Cookies') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::DebugExceptions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::ExceptionWrapper') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Flash') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Http') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::IllegalStateError') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Integration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::IntegrationTest') do |klass|
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

  klass.define_method('app')

  klass.define_method('app=') do |method|
    method.define_argument('app')
  end

  klass.define_method('current')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('describe') do |method|
    method.define_argument('text')
  end

  klass.define_method('direct_descendants')

  klass.define_method('for_tag') do |method|
    method.define_argument('tag')
  end

  klass.define_method('i_suck_and_my_tests_are_order_dependent!')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('jruby?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_method('make_my_diffs_pretty!')

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

  klass.define_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('__name__')

  klass.define_instance_method('_assertions')

  klass.define_instance_method('_assertions=') do |method|
    method.define_argument('n')
  end

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

  klass.define_instance_method('after_setup')

  klass.define_instance_method('after_teardown')

  klass.define_instance_method('app')

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

  klass.define_instance_method('assigns') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('before_setup')

  klass.define_instance_method('before_teardown')

  klass.define_instance_method('capture_io')

  klass.define_instance_method('capture_subprocess_io')

  klass.define_instance_method('convert_to_model') do |method|
    method.define_argument('object')
  end

  klass.define_instance_method('cookies') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('copy_session_variables!')

  klass.define_instance_method('count_description') do |method|
    method.define_argument('min')
    method.define_argument('max')
    method.define_argument('count')
  end

  klass.define_instance_method('css_select') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('default_url_options')

  klass.define_instance_method('default_url_options=') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('diff') do |method|
    method.define_argument('exp')
    method.define_argument('act')
  end

  klass.define_instance_method('edit_polymorphic_path') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('edit_polymorphic_url') do |method|
    method.define_argument('record_or_hash')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('exception_details') do |method|
    method.define_argument('e')
    method.define_argument('msg')
  end

  klass.define_instance_method('find_all_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('find_tag') do |method|
    method.define_argument('conditions')
  end

  klass.define_instance_method('flunk') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('get') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('get_via_redirect') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('head') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('html_document')

  klass.define_instance_method('io')

  klass.define_instance_method('io?')

  klass.define_instance_method('jruby?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('message') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('ending')
    method.define_block_argument('default')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('sym')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('method_name')

  klass.define_instance_method('model_name_from_record_or_class') do |method|
    method.define_argument('record_or_class')
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

  klass.define_instance_method('open_session') do |method|
    method.define_optional_argument('app')
  end

  klass.define_instance_method('optimize_routes_generation?')

  klass.define_instance_method('pass') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('passed?')

  klass.define_instance_method('patch') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('pending') do |method|
    method.define_optional_argument('description')
    method.define_block_argument('block')
  end

  klass.define_instance_method('polymorphic_path') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('polymorphic_url') do |method|
    method.define_argument('record_or_hash_or_array')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('post') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('post_via_redirect') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('process') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('put') do |method|
    method.define_rest_argument('args')
  end

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

  klass.define_instance_method('reset!')

  klass.define_instance_method('response_from_page')

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

  klass.define_instance_method('setup')

  klass.define_instance_method('setup_subscriptions')

  klass.define_instance_method('skip') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('bt')
  end

  klass.define_instance_method('skipped?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('tagged_logger=')

  klass.define_instance_method('teardown')

  klass.define_instance_method('teardown_subscriptions')

  klass.define_instance_method('url_for') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('url_options')

  klass.define_instance_method('windows?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('with_routing')

  klass.define_instance_method('xhr') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('xml_http_request') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Journey') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::MiddlewareStack') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('i')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('assert_index') do |method|
    method.define_argument('index')
    method.define_argument('where')
  end

  klass.define_instance_method('build') do |method|
    method.define_optional_argument('app')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('target')
  end

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('drop_while')

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

  klass.define_instance_method('flat_map') do |method|
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('middlewares')

  klass.define_instance_method('middlewares=')

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

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('size')

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

  klass.define_instance_method('swap') do |method|
    method.define_argument('target')
    method.define_rest_argument('args')
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

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('use') do |method|
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

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::ParamsParser') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::PublicExceptions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('public_path')

  klass.define_instance_method('public_path=')
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Railtie') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Reloader') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('direct_descendants')

  klass.define_method('inherited') do |method|
    method.define_argument('base')
  end

  klass.define_method('prepare!')

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('set_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
    method.define_block_argument('block')
  end

  klass.define_method('skip_callback') do |method|
    method.define_argument('name')
    method.define_rest_argument('filter_list')
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

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::RemoteIp') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('check_ip')

  klass.define_instance_method('proxies')
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Request') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Rack::Request'))

  klass.define_method('ignore_accept_header')

  klass.define_method('ignore_accept_header=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('GET')

  klass.define_instance_method('POST')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('accept')

  klass.define_instance_method('accept_charset')

  klass.define_instance_method('accept_encoding')

  klass.define_instance_method('accept_language')

  klass.define_instance_method('accepts')

  klass.define_instance_method('auth_type')

  klass.define_instance_method('authorization')

  klass.define_instance_method('base_url')

  klass.define_instance_method('body')

  klass.define_instance_method('body_stream')

  klass.define_instance_method('cache_control')

  klass.define_instance_method('content_charset')

  klass.define_instance_method('content_length')

  klass.define_instance_method('content_mime_type')

  klass.define_instance_method('content_type')

  klass.define_instance_method('cookie_jar')

  klass.define_instance_method('cookies')

  klass.define_instance_method('deep_munge') do |method|
    method.define_argument('hash')
  end

  klass.define_instance_method('delete?')

  klass.define_instance_method('delete_param') do |method|
    method.define_argument('k')
  end

  klass.define_instance_method('domain') do |method|
    method.define_optional_argument('tld_length')
  end

  klass.define_instance_method('env')

  klass.define_instance_method('env_filter')

  klass.define_instance_method('etag_matches?') do |method|
    method.define_argument('etag')
  end

  klass.define_instance_method('filtered_env')

  klass.define_instance_method('filtered_parameters')

  klass.define_instance_method('filtered_path')

  klass.define_instance_method('filtered_query_string')

  klass.define_instance_method('flash')

  klass.define_instance_method('form_data?')

  klass.define_instance_method('format') do |method|
    method.define_optional_argument('view_path')
  end

  klass.define_instance_method('format=') do |method|
    method.define_argument('extension')
  end

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=') do |method|
    method.define_argument('extensions')
  end

  klass.define_instance_method('fresh?') do |method|
    method.define_argument('response')
  end

  klass.define_instance_method('from')

  klass.define_instance_method('fullpath')

  klass.define_instance_method('gateway_interface')

  klass.define_instance_method('get?')

  klass.define_instance_method('head?')

  klass.define_instance_method('headers')

  klass.define_instance_method('host')

  klass.define_instance_method('host_with_port')

  klass.define_instance_method('if_modified_since')

  klass.define_instance_method('if_none_match')

  klass.define_instance_method('if_none_match_etags')

  klass.define_instance_method('ignore_accept_header')

  klass.define_instance_method('ignore_accept_header=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('ip')

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('local?')

  klass.define_instance_method('logger')

  klass.define_instance_method('media_type')

  klass.define_instance_method('media_type_params')

  klass.define_instance_method('method')

  klass.define_instance_method('method_symbol')

  klass.define_instance_method('negotiate')

  klass.define_instance_method('negotiate_mime') do |method|
    method.define_argument('order')
  end

  klass.define_instance_method('not_modified?') do |method|
    method.define_argument('modified_at')
  end

  klass.define_instance_method('optional_port')

  klass.define_instance_method('options?')

  klass.define_instance_method('original_fullpath')

  klass.define_instance_method('original_url')

  klass.define_instance_method('parameter_filter')

  klass.define_instance_method('parameter_filter_for') do |method|
    method.define_argument('filters')
  end

  klass.define_instance_method('parameters')

  klass.define_instance_method('params')

  klass.define_instance_method('parse_multipart') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('parse_query') do |method|
    method.define_argument('qs')
  end

  klass.define_instance_method('parseable_data?')

  klass.define_instance_method('patch?')

  klass.define_instance_method('path')

  klass.define_instance_method('path_info')

  klass.define_instance_method('path_info=') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('path_parameters')

  klass.define_instance_method('path_parameters=') do |method|
    method.define_argument('parameters')
  end

  klass.define_instance_method('path_translated')

  klass.define_instance_method('port')

  klass.define_instance_method('port_string')

  klass.define_instance_method('post?')

  klass.define_instance_method('pragma')

  klass.define_instance_method('protocol')

  klass.define_instance_method('put?')

  klass.define_instance_method('query_parameters')

  klass.define_instance_method('query_string')

  klass.define_instance_method('raw_host_with_port')

  klass.define_instance_method('raw_post')

  klass.define_instance_method('referer')

  klass.define_instance_method('referrer')

  klass.define_instance_method('reject_trusted_ip_addresses') do |method|
    method.define_argument('ip_addresses')
  end

  klass.define_instance_method('remote_addr')

  klass.define_instance_method('remote_host')

  klass.define_instance_method('remote_ident')

  klass.define_instance_method('remote_ip')

  klass.define_instance_method('remote_user')

  klass.define_instance_method('request_method')

  klass.define_instance_method('request_method_symbol')

  klass.define_instance_method('request_parameters')

  klass.define_instance_method('reset_parameters')

  klass.define_instance_method('reset_session')

  klass.define_instance_method('scheme')

  klass.define_instance_method('script_name')

  klass.define_instance_method('script_name=') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('server_name')

  klass.define_instance_method('server_port')

  klass.define_instance_method('server_protocol')

  klass.define_instance_method('server_software')

  klass.define_instance_method('session')

  klass.define_instance_method('session=') do |method|
    method.define_argument('session')
  end

  klass.define_instance_method('session_options')

  klass.define_instance_method('session_options=') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('split_ip_addresses') do |method|
    method.define_argument('ip_addresses')
  end

  klass.define_instance_method('ssl?')

  klass.define_instance_method('standard_port')

  klass.define_instance_method('standard_port?')

  klass.define_instance_method('subdomain') do |method|
    method.define_optional_argument('tld_length')
  end

  klass.define_instance_method('subdomains') do |method|
    method.define_optional_argument('tld_length')
  end

  klass.define_instance_method('symbolized_path_parameters')

  klass.define_instance_method('tld_length')

  klass.define_instance_method('tld_length=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('trace?')

  klass.define_instance_method('trusted_proxy?') do |method|
    method.define_argument('ip')
  end

  klass.define_instance_method('update_param') do |method|
    method.define_argument('k')
    method.define_argument('v')
  end

  klass.define_instance_method('url')

  klass.define_instance_method('use_accept_header')

  klass.define_instance_method('user_agent')

  klass.define_instance_method('uuid')

  klass.define_instance_method('valid_accept_header')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('xhr?')

  klass.define_instance_method('xml_http_request?')
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::RequestId') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Response') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_instance_method('bad_request?')

  klass.define_instance_method('body')

  klass.define_instance_method('body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('body_parts')

  klass.define_instance_method('cache_control')

  klass.define_instance_method('charset')

  klass.define_instance_method('charset=')

  klass.define_instance_method('client_error?')

  klass.define_instance_method('close')

  klass.define_instance_method('code')

  klass.define_instance_method('commit!')

  klass.define_instance_method('committed?')

  klass.define_instance_method('content_length')

  klass.define_instance_method('content_type')

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('content_type')
  end

  klass.define_instance_method('cookies')

  klass.define_instance_method('date')

  klass.define_instance_method('date=') do |method|
    method.define_argument('utc_time')
  end

  klass.define_instance_method('date?')

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

  klass.define_instance_method('etag')

  klass.define_instance_method('etag=') do |method|
    method.define_argument('etag')
  end

  klass.define_instance_method('etag?')

  klass.define_instance_method('filtered_location')

  klass.define_instance_method('forbidden?')

  klass.define_instance_method('header')

  klass.define_instance_method('header=')

  klass.define_instance_method('headers')

  klass.define_instance_method('headers=')

  klass.define_instance_method('include?') do |method|
    method.define_argument('header')
  end

  klass.define_instance_method('informational?')

  klass.define_instance_method('invalid?')

  klass.define_instance_method('last_modified')

  klass.define_instance_method('last_modified=') do |method|
    method.define_argument('utc_time')
  end

  klass.define_instance_method('last_modified?')

  klass.define_instance_method('location')

  klass.define_instance_method('location=') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('method_not_allowed?')

  klass.define_instance_method('mon_enter')

  klass.define_instance_method('mon_exit')

  klass.define_instance_method('mon_synchronize')

  klass.define_instance_method('mon_try_enter')

  klass.define_instance_method('new_cond')

  klass.define_instance_method('not_found?')

  klass.define_instance_method('ok?')

  klass.define_instance_method('original_headers')

  klass.define_instance_method('prepare!')

  klass.define_instance_method('redirect?')

  klass.define_instance_method('redirect_url')

  klass.define_instance_method('redirection?')

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('method')
  end

  klass.define_instance_method('response_code')

  klass.define_instance_method('sending_file=')

  klass.define_instance_method('server_error?')

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

  klass.define_instance_method('successful?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_path')

  klass.define_instance_method('try_mon_enter')

  klass.define_instance_method('unprocessable?')
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Routing') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::SSL') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('default_hsts_options')

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Session') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::ShowExceptions') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::Static') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::TestProcess') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

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

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::TestRequest') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionDispatch::Request'))

  klass.define_method('ignore_accept_header')

  klass.define_method('ignore_accept_header=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('new') do |method|
    method.define_optional_argument('env')
  end

  klass.define_instance_method('GET')

  klass.define_instance_method('POST')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('accept')

  klass.define_instance_method('accept=') do |method|
    method.define_argument('mime_types')
  end

  klass.define_instance_method('accept_charset')

  klass.define_instance_method('accept_encoding')

  klass.define_instance_method('accept_language')

  klass.define_instance_method('accepts')

  klass.define_instance_method('action=') do |method|
    method.define_argument('action_name')
  end

  klass.define_instance_method('auth_type')

  klass.define_instance_method('authorization')

  klass.define_instance_method('base_url')

  klass.define_instance_method('body')

  klass.define_instance_method('body_stream')

  klass.define_instance_method('cache_control')

  klass.define_instance_method('content_charset')

  klass.define_instance_method('content_length')

  klass.define_instance_method('content_mime_type')

  klass.define_instance_method('content_type')

  klass.define_instance_method('cookie_jar')

  klass.define_instance_method('cookies')

  klass.define_instance_method('deep_munge') do |method|
    method.define_argument('hash')
  end

  klass.define_instance_method('delete?')

  klass.define_instance_method('delete_param') do |method|
    method.define_argument('k')
  end

  klass.define_instance_method('domain') do |method|
    method.define_optional_argument('tld_length')
  end

  klass.define_instance_method('env')

  klass.define_instance_method('env_filter')

  klass.define_instance_method('etag_matches?') do |method|
    method.define_argument('etag')
  end

  klass.define_instance_method('filtered_env')

  klass.define_instance_method('filtered_parameters')

  klass.define_instance_method('filtered_path')

  klass.define_instance_method('filtered_query_string')

  klass.define_instance_method('flash')

  klass.define_instance_method('form_data?')

  klass.define_instance_method('format') do |method|
    method.define_optional_argument('view_path')
  end

  klass.define_instance_method('format=') do |method|
    method.define_argument('extension')
  end

  klass.define_instance_method('formats')

  klass.define_instance_method('formats=') do |method|
    method.define_argument('extensions')
  end

  klass.define_instance_method('fresh?') do |method|
    method.define_argument('response')
  end

  klass.define_instance_method('from')

  klass.define_instance_method('fullpath')

  klass.define_instance_method('gateway_interface')

  klass.define_instance_method('get?')

  klass.define_instance_method('head?')

  klass.define_instance_method('headers')

  klass.define_instance_method('host')

  klass.define_instance_method('host=') do |method|
    method.define_argument('host')
  end

  klass.define_instance_method('host_with_port')

  klass.define_instance_method('if_modified_since')

  klass.define_instance_method('if_modified_since=') do |method|
    method.define_argument('last_modified')
  end

  klass.define_instance_method('if_none_match')

  klass.define_instance_method('if_none_match=') do |method|
    method.define_argument('etag')
  end

  klass.define_instance_method('if_none_match_etags')

  klass.define_instance_method('ignore_accept_header')

  klass.define_instance_method('ignore_accept_header=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('ip')

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('local?')

  klass.define_instance_method('logger')

  klass.define_instance_method('media_type')

  klass.define_instance_method('media_type_params')

  klass.define_instance_method('method_symbol')

  klass.define_instance_method('negotiate')

  klass.define_instance_method('negotiate_mime') do |method|
    method.define_argument('order')
  end

  klass.define_instance_method('not_modified?') do |method|
    method.define_argument('modified_at')
  end

  klass.define_instance_method('optional_port')

  klass.define_instance_method('options?')

  klass.define_instance_method('original_fullpath')

  klass.define_instance_method('original_url')

  klass.define_instance_method('parameter_filter')

  klass.define_instance_method('parameter_filter_for') do |method|
    method.define_argument('filters')
  end

  klass.define_instance_method('parameters')

  klass.define_instance_method('params')

  klass.define_instance_method('parse_multipart') do |method|
    method.define_argument('env')
  end

  klass.define_instance_method('parse_query') do |method|
    method.define_argument('qs')
  end

  klass.define_instance_method('parseable_data?')

  klass.define_instance_method('patch?')

  klass.define_instance_method('path')

  klass.define_instance_method('path=') do |method|
    method.define_argument('path')
  end

  klass.define_instance_method('path_info')

  klass.define_instance_method('path_info=') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('path_parameters')

  klass.define_instance_method('path_parameters=') do |method|
    method.define_argument('parameters')
  end

  klass.define_instance_method('path_translated')

  klass.define_instance_method('port')

  klass.define_instance_method('port=') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('port_string')

  klass.define_instance_method('post?')

  klass.define_instance_method('pragma')

  klass.define_instance_method('protocol')

  klass.define_instance_method('put?')

  klass.define_instance_method('query_parameters')

  klass.define_instance_method('query_string')

  klass.define_instance_method('rack_cookies')

  klass.define_instance_method('raw_host_with_port')

  klass.define_instance_method('raw_post')

  klass.define_instance_method('referer')

  klass.define_instance_method('referrer')

  klass.define_instance_method('reject_trusted_ip_addresses') do |method|
    method.define_argument('ip_addresses')
  end

  klass.define_instance_method('remote_addr')

  klass.define_instance_method('remote_addr=') do |method|
    method.define_argument('addr')
  end

  klass.define_instance_method('remote_host')

  klass.define_instance_method('remote_ident')

  klass.define_instance_method('remote_ip')

  klass.define_instance_method('remote_user')

  klass.define_instance_method('request_method')

  klass.define_instance_method('request_method=') do |method|
    method.define_argument('method')
  end

  klass.define_instance_method('request_method_symbol')

  klass.define_instance_method('request_parameters')

  klass.define_instance_method('request_uri=') do |method|
    method.define_argument('uri')
  end

  klass.define_instance_method('reset_parameters')

  klass.define_instance_method('reset_session')

  klass.define_instance_method('scheme')

  klass.define_instance_method('script_name')

  klass.define_instance_method('script_name=') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('server_name')

  klass.define_instance_method('server_port')

  klass.define_instance_method('server_protocol')

  klass.define_instance_method('server_software')

  klass.define_instance_method('session')

  klass.define_instance_method('session=') do |method|
    method.define_argument('session')
  end

  klass.define_instance_method('session_options')

  klass.define_instance_method('session_options=') do |method|
    method.define_argument('options')
  end

  klass.define_instance_method('split_ip_addresses') do |method|
    method.define_argument('ip_addresses')
  end

  klass.define_instance_method('ssl?')

  klass.define_instance_method('standard_port')

  klass.define_instance_method('standard_port?')

  klass.define_instance_method('subdomain') do |method|
    method.define_optional_argument('tld_length')
  end

  klass.define_instance_method('subdomains') do |method|
    method.define_optional_argument('tld_length')
  end

  klass.define_instance_method('symbolized_path_parameters')

  klass.define_instance_method('tld_length')

  klass.define_instance_method('tld_length=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('trace?')

  klass.define_instance_method('trusted_proxy?') do |method|
    method.define_argument('ip')
  end

  klass.define_instance_method('update_param') do |method|
    method.define_argument('k')
    method.define_argument('v')
  end

  klass.define_instance_method('url')

  klass.define_instance_method('use_accept_header')

  klass.define_instance_method('user_agent')

  klass.define_instance_method('user_agent=') do |method|
    method.define_argument('user_agent')
  end

  klass.define_instance_method('uuid')

  klass.define_instance_method('valid_accept_header')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('keys')
  end

  klass.define_instance_method('xhr?')

  klass.define_instance_method('xml_http_request?')
end

RubyLint::GlobalScope.definitions.define_constant('ActionDispatch::TestResponse') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActionDispatch::Response'))

  klass.define_method('default_charset')

  klass.define_method('default_charset=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('default_headers')

  klass.define_method('default_headers=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('from_response') do |method|
    method.define_argument('response')
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

  klass.define_instance_method('bad_request?')

  klass.define_instance_method('body')

  klass.define_instance_method('body=') do |method|
    method.define_argument('body')
  end

  klass.define_instance_method('body_parts')

  klass.define_instance_method('cache_control')

  klass.define_instance_method('charset')

  klass.define_instance_method('charset=')

  klass.define_instance_method('client_error?')

  klass.define_instance_method('close')

  klass.define_instance_method('code')

  klass.define_instance_method('commit!')

  klass.define_instance_method('committed?')

  klass.define_instance_method('content_length')

  klass.define_instance_method('content_type')

  klass.define_instance_method('content_type=') do |method|
    method.define_argument('content_type')
  end

  klass.define_instance_method('cookies')

  klass.define_instance_method('date')

  klass.define_instance_method('date=') do |method|
    method.define_argument('utc_time')
  end

  klass.define_instance_method('date?')

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

  klass.define_instance_method('error?')

  klass.define_instance_method('etag')

  klass.define_instance_method('etag=') do |method|
    method.define_argument('etag')
  end

  klass.define_instance_method('etag?')

  klass.define_instance_method('filtered_location')

  klass.define_instance_method('forbidden?')

  klass.define_instance_method('header')

  klass.define_instance_method('header=')

  klass.define_instance_method('headers')

  klass.define_instance_method('headers=')

  klass.define_instance_method('include?') do |method|
    method.define_argument('header')
  end

  klass.define_instance_method('informational?')

  klass.define_instance_method('invalid?')

  klass.define_instance_method('last_modified')

  klass.define_instance_method('last_modified=') do |method|
    method.define_argument('utc_time')
  end

  klass.define_instance_method('last_modified?')

  klass.define_instance_method('location')

  klass.define_instance_method('location=') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('message')

  klass.define_instance_method('method_not_allowed?')

  klass.define_instance_method('missing?')

  klass.define_instance_method('mon_enter')

  klass.define_instance_method('mon_exit')

  klass.define_instance_method('mon_synchronize')

  klass.define_instance_method('mon_try_enter')

  klass.define_instance_method('new_cond')

  klass.define_instance_method('not_found?')

  klass.define_instance_method('ok?')

  klass.define_instance_method('original_headers')

  klass.define_instance_method('prepare!')

  klass.define_instance_method('redirect?')

  klass.define_instance_method('redirect_url')

  klass.define_instance_method('redirection?')

  klass.define_instance_method('request')

  klass.define_instance_method('request=')

  klass.define_instance_method('response_code')

  klass.define_instance_method('sending_file=')

  klass.define_instance_method('server_error?')

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

  klass.define_instance_method('success?')

  klass.define_instance_method('successful?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_path')

  klass.define_instance_method('try_mon_enter')

  klass.define_instance_method('unprocessable?')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ActionDispatch').deep_freeze