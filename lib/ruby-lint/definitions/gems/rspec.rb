# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: ruby 2.2.3

RubyLint.registry.register('RSpec') do |defs|
  defs.define_constant('RSpec') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('clear_examples')

    klass.define_method('configuration')

    klass.define_method('configuration=') do |method|
      method.define_argument('arg1')
    end

    klass.define_method('configure')

    klass.define_method('const_missing') do |method|
      method.define_argument('name')
    end

    klass.define_method('context') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('current_example')

    klass.define_method('current_example=') do |method|
      method.define_argument('example')
    end

    klass.define_method('describe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('example_group') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('fcontext') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('fdescribe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('reset')

    klass.define_method('shared_context') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('shared_examples') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('shared_examples_for') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('world')

    klass.define_method('world=') do |method|
      method.define_argument('arg1')
    end

    klass.define_method('xcontext') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('xdescribe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end
  end

  defs.define_constant('RSpec::CallerFilter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('first_non_rspec_line') do |method|
      method.define_optional_argument('skip_frames')
      method.define_optional_argument('increment')
    end
  end

  defs.define_constant('RSpec::CallerFilter::ADDITIONAL_TOP_LEVEL_FILES') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::CallerFilter::IGNORE_REGEX') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::CallerFilter::LIB_REGEX') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::CallerFilter::RSPEC_LIBS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('path_to_executable')
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::ExampleGroup', RubyLint.registry))

    klass.define_method('metadata')
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('let') do |method|
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('let!') do |method|
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject') do |method|
      method.define_optional_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject!') do |method|
      method.define_optional_argument('name')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::ContextHookMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('fetch_or_store') do |method|
      method.define_argument('key')
      method.define_block_argument('_block')
    end

    klass.define_method('isolate_for_context_hook') do |method|
      method.define_argument('example_group_instance')
    end
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::INSTANCE_VARIABLE_TO_IGNORE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::NOT_YET_IMPLEMENTED') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::NO_REASON_GIVEN') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::NonThreadSafeMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch_or_store') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::PendingExampleFixedError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::SkipDeclaredInExample') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

    klass.define_instance_method('argument')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('argument')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::ThreadsafeMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch_or_store') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::AnonymousExampleGroup::WrongScopeError') do |klass|
    klass.inherits(defs.constant_proxy('NoMethodError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::BacktraceFormatter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('backtrace_line') do |method|
      method.define_argument('line')
    end

    klass.define_instance_method('exclude?') do |method|
      method.define_argument('line')
    end

    klass.define_instance_method('exclusion_patterns')

    klass.define_instance_method('exclusion_patterns=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('filter_gem') do |method|
      method.define_argument('gem_name')
    end

    klass.define_instance_method('format_backtrace') do |method|
      method.define_argument('backtrace')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('full_backtrace=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('full_backtrace?')

    klass.define_instance_method('inclusion_patterns')

    klass.define_instance_method('inclusion_patterns=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::Configuration') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::Configuration::Readers', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks', RubyLint.registry))

    klass.define_method('add_read_only_setting') do |method|
      method.define_argument('name')
      method.define_optional_argument('opts')
    end

    klass.define_method('add_setting') do |method|
      method.define_argument('name')
      method.define_optional_argument('opts')
    end

    klass.define_method('define_aliases') do |method|
      method.define_argument('name')
      method.define_argument('alias_name')
    end

    klass.define_method('define_predicate_for') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('define_reader') do |method|
      method.define_argument('name')
    end

    klass.define_method('delegate_to_ordering_manager') do |method|
      method.define_rest_argument('methods')
    end

    klass.define_instance_method('add_formatter') do |method|
      method.define_argument('formatter_to_use')
      method.define_rest_argument('paths')
    end

    klass.define_instance_method('add_setting') do |method|
      method.define_argument('name')
      method.define_optional_argument('opts')
    end

    klass.define_instance_method('after') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('alias_example_group_to') do |method|
      method.define_argument('new_name')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('alias_example_to') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('alias_it_behaves_like_to') do |method|
      method.define_argument('new_name')
      method.define_optional_argument('report_label')
    end

    klass.define_instance_method('alias_it_should_behave_like_to') do |method|
      method.define_argument('new_name')
      method.define_optional_argument('report_label')
    end

    klass.define_instance_method('append_after') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_before') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('apply_derived_metadata_to') do |method|
      method.define_argument('metadata')
    end

    klass.define_instance_method('around') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('backtrace_exclusion_patterns')

    klass.define_instance_method('backtrace_exclusion_patterns=') do |method|
      method.define_argument('patterns')
    end

    klass.define_instance_method('backtrace_formatter')

    klass.define_instance_method('backtrace_inclusion_patterns')

    klass.define_instance_method('backtrace_inclusion_patterns=') do |method|
      method.define_argument('patterns')
    end

    klass.define_instance_method('before') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('color')

    klass.define_instance_method('color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('color_enabled?') do |method|
      method.define_optional_argument('output')
    end

    klass.define_instance_method('configure_example') do |method|
      method.define_argument('example')
      method.define_argument('example_hooks')
    end

    klass.define_instance_method('configure_expectation_framework')

    klass.define_instance_method('configure_group') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('configure_mock_framework')

    klass.define_instance_method('default_color')

    klass.define_instance_method('default_color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('default_color?')

    klass.define_instance_method('default_formatter')

    klass.define_instance_method('default_formatter=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('default_path')

    klass.define_instance_method('default_path=') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('default_path?')

    klass.define_instance_method('define_derived_metadata') do |method|
      method.define_rest_argument('filters')
      method.define_block_argument('block')
    end

    klass.define_instance_method('deprecation_stream')

    klass.define_instance_method('deprecation_stream=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('detail_color')

    klass.define_instance_method('detail_color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('detail_color?')

    klass.define_instance_method('disable_monkey_patching')

    klass.define_instance_method('disable_monkey_patching!')

    klass.define_instance_method('disable_monkey_patching=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('drb')

    klass.define_instance_method('drb=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('drb?')

    klass.define_instance_method('drb_port')

    klass.define_instance_method('drb_port=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('drb_port?')

    klass.define_instance_method('dry_run')

    klass.define_instance_method('dry_run=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('dry_run?')

    klass.define_instance_method('error_stream')

    klass.define_instance_method('error_stream=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('error_stream?')

    klass.define_instance_method('example_status_persistence_file_path')

    klass.define_instance_method('example_status_persistence_file_path=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('exclude_pattern')

    klass.define_instance_method('exclude_pattern=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('exclusion_filter')

    klass.define_instance_method('exclusion_filter=') do |method|
      method.define_argument('filter')
    end

    klass.define_instance_method('expect_with') do |method|
      method.define_rest_argument('frameworks')
    end

    klass.define_instance_method('expectation_framework=') do |method|
      method.define_argument('framework')
    end

    klass.define_instance_method('expectation_frameworks')

    klass.define_instance_method('expose_current_running_example_as') do |method|
      method.define_argument('method_name')
    end

    klass.define_instance_method('expose_dsl_globally=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('expose_dsl_globally?')

    klass.define_instance_method('extend') do |method|
      method.define_argument('mod')
      method.define_rest_argument('filters')
    end

    klass.define_instance_method('fail_fast')

    klass.define_instance_method('fail_fast=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('fail_fast?')

    klass.define_instance_method('failure_color')

    klass.define_instance_method('failure_color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('failure_color?')

    klass.define_instance_method('failure_exit_code')

    klass.define_instance_method('failure_exit_code=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('failure_exit_code?')

    klass.define_instance_method('files_or_directories_to_run=') do |method|
      method.define_rest_argument('files')
    end

    klass.define_instance_method('files_to_run')

    klass.define_instance_method('files_to_run=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('filter')

    klass.define_instance_method('filter=') do |method|
      method.define_argument('filter')
    end

    klass.define_instance_method('filter_gems_from_backtrace') do |method|
      method.define_rest_argument('gem_names')
    end

    klass.define_instance_method('filter_manager')

    klass.define_instance_method('filter_manager=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('filter_run') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('filter_run_excluding') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('filter_run_including') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('filter_run_when_matching') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('fixed_color')

    klass.define_instance_method('fixed_color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('fixed_color?')

    klass.define_instance_method('force') do |method|
      method.define_argument('hash')
    end

    klass.define_instance_method('format_docstrings') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('format_docstrings_block')

    klass.define_instance_method('formatter=') do |method|
      method.define_argument('formatter_to_use')
      method.define_rest_argument('paths')
    end

    klass.define_instance_method('formatter_loader')

    klass.define_instance_method('formatters')

    klass.define_instance_method('full_backtrace=') do |method|
      method.define_argument('true_or_false')
    end

    klass.define_instance_method('full_backtrace?')

    klass.define_instance_method('full_description')

    klass.define_instance_method('full_description=') do |method|
      method.define_argument('description')
    end

    klass.define_instance_method('hooks')

    klass.define_instance_method('in_project_source_dir_regex')

    klass.define_instance_method('include') do |method|
      method.define_argument('mod')
      method.define_rest_argument('filters')
    end

    klass.define_instance_method('include_context') do |method|
      method.define_argument('shared_group_name')
      method.define_rest_argument('filters')
    end

    klass.define_instance_method('inclusion_filter')

    klass.define_instance_method('inclusion_filter=') do |method|
      method.define_argument('filter')
    end

    klass.define_instance_method('initialize')

    klass.define_instance_method('last_run_statuses')

    klass.define_instance_method('libs')

    klass.define_instance_method('libs=') do |method|
      method.define_argument('libs')
    end

    klass.define_instance_method('load_spec_files')

    klass.define_instance_method('loaded_spec_files')

    klass.define_instance_method('max_displayed_failure_line_count')

    klass.define_instance_method('max_displayed_failure_line_count=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('max_displayed_failure_line_count?')

    klass.define_instance_method('mock_framework')

    klass.define_instance_method('mock_framework=') do |method|
      method.define_argument('framework')
    end

    klass.define_instance_method('mock_with') do |method|
      method.define_argument('framework')
    end

    klass.define_instance_method('on_example_group_definition') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('on_example_group_definition_callbacks')

    klass.define_instance_method('only_failures')

    klass.define_instance_method('only_failures?')

    klass.define_instance_method('only_failures_but_not_configured?')

    klass.define_instance_method('order=') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('ordering_manager')

    klass.define_instance_method('ordering_registry') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('output_stream')

    klass.define_instance_method('output_stream=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('pattern')

    klass.define_instance_method('pattern=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('pending_color')

    klass.define_instance_method('pending_color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_color?')

    klass.define_instance_method('prepend') do |method|
      method.define_argument('mod')
      method.define_rest_argument('filters')
    end

    klass.define_instance_method('prepend_after') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepend_before') do |method|
      method.define_optional_argument('scope')
      method.define_rest_argument('meta')
      method.define_block_argument('block')
    end

    klass.define_instance_method('profile_examples')

    klass.define_instance_method('profile_examples=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('profile_examples?')

    klass.define_instance_method('project_source_dirs')

    klass.define_instance_method('project_source_dirs=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('project_source_dirs?')

    klass.define_instance_method('raise_errors_for_deprecations!')

    klass.define_instance_method('raise_on_warning=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('register_ordering') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('reporter')

    klass.define_instance_method('requires')

    klass.define_instance_method('requires=') do |method|
      method.define_argument('paths')
    end

    klass.define_instance_method('reset')

    klass.define_instance_method('reset_filters')

    klass.define_instance_method('run_all_when_everything_filtered')

    klass.define_instance_method('run_all_when_everything_filtered=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('run_all_when_everything_filtered?')

    klass.define_instance_method('seed') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('seed=') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('seed_used?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('shared_context_metadata_behavior')

    klass.define_instance_method('shared_context_metadata_behavior=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('silence_filter_announcements')

    klass.define_instance_method('silence_filter_announcements=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('silence_filter_announcements?')

    klass.define_instance_method('spec_files_with_failures')

    klass.define_instance_method('start_time')

    klass.define_instance_method('start_time=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('start_time?')

    klass.define_instance_method('static_config_filter_manager')

    klass.define_instance_method('static_config_filter_manager=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('success_color')

    klass.define_instance_method('success_color=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('success_color?')

    klass.define_instance_method('threadsafe')

    klass.define_instance_method('threadsafe=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('threadsafe?')

    klass.define_instance_method('treat_symbols_as_metadata_keys_with_true_values=') do |method|
      method.define_argument('_value')
    end

    klass.define_instance_method('tty')

    klass.define_instance_method('tty=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('tty?')

    klass.define_instance_method('warnings=') do |method|
      method.define_argument('value')
    end

    klass.define_instance_method('warnings?')

    klass.define_instance_method('when_first_matching_example_defined') do |method|
      method.define_rest_argument('filters')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_suite_hooks')

    klass.define_instance_method('world')

    klass.define_instance_method('world=') do |method|
      method.define_argument('arg1')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::AfterContextHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('run') do |method|
      method.define_argument('example')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::AfterHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('run') do |method|
      method.define_argument('example')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::AroundHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('execute_with') do |method|
      method.define_argument('example')
      method.define_argument('procsy')
    end

    klass.define_instance_method('hook_description')
  end

  defs.define_constant('RSpec::Core::Configuration::BeforeHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('run') do |method|
      method.define_argument('example')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::DEFAULT_FORMATTER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Configuration::DeprecationReporterBuffer') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('deprecation') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('initialize')

    klass.define_instance_method('play_onto') do |method|
      method.define_argument('reporter')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::ExposeCurrentExample') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Configuration::FAILED_STATUS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Configuration::Hook') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('block')

    klass.define_instance_method('block=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('options')

    klass.define_instance_method('options=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::HookCollections') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('all_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('owner')
      method.define_argument('filterable_item_repo_class')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('matching_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('example_or_group')
    end

    klass.define_instance_method('processable_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('host')
    end

    klass.define_instance_method('register') do |method|
      method.define_argument('prepend_or_append')
      method.define_argument('position')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('register_global_singleton_context_hooks') do |method|
      method.define_argument('example')
      method.define_argument('globals')
    end

    klass.define_instance_method('register_globals') do |method|
      method.define_argument('host')
      method.define_argument('globals')
    end

    klass.define_instance_method('run') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('example_or_group')
    end

    klass.define_instance_method('run_owned_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('example_or_group')
    end
  end

  defs.define_constant('RSpec::Core::Configuration::MOCKING_ADAPTERS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Configuration::MustBeConfiguredBeforeExampleGroupsError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Configuration::RAISE_ERROR_WARNING_NOTIFIER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Configuration::Readers') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('default_color')

    klass.define_instance_method('default_path')

    klass.define_instance_method('deprecation_stream')

    klass.define_instance_method('detail_color')

    klass.define_instance_method('drb')

    klass.define_instance_method('drb_port')

    klass.define_instance_method('dry_run')

    klass.define_instance_method('error_stream')

    klass.define_instance_method('example_status_persistence_file_path')

    klass.define_instance_method('exclude_pattern')

    klass.define_instance_method('fail_fast')

    klass.define_instance_method('failure_color')

    klass.define_instance_method('failure_exit_code')

    klass.define_instance_method('fixed_color')

    klass.define_instance_method('libs')

    klass.define_instance_method('max_displayed_failure_line_count')

    klass.define_instance_method('only_failures')

    klass.define_instance_method('output_stream')

    klass.define_instance_method('pattern')

    klass.define_instance_method('pending_color')

    klass.define_instance_method('profile_examples')

    klass.define_instance_method('project_source_dirs')

    klass.define_instance_method('requires')

    klass.define_instance_method('run_all_when_everything_filtered')

    klass.define_instance_method('shared_context_metadata_behavior')

    klass.define_instance_method('silence_filter_announcements')

    klass.define_instance_method('start_time')

    klass.define_instance_method('success_color')

    klass.define_instance_method('threadsafe')

    klass.define_instance_method('tty')
  end

  defs.define_constant('RSpec::Core::Configuration::UNKNOWN_STATUS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ConfigurationOptions') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('args')

    klass.define_instance_method('configure') do |method|
      method.define_argument('config')
    end

    klass.define_instance_method('configure_filter_manager') do |method|
      method.define_argument('filter_manager')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('options')
  end

  defs.define_constant('RSpec::Core::ConfigurationOptions::OPTIONS_ORDER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ConfigurationOptions::UNFORCED_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ConfigurationOptions::UNPROCESSABLE_OPTIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::DSL') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('change_global_dsl') do |method|
      method.define_block_argument('changes')
    end

    klass.define_method('example_group_aliases')

    klass.define_method('expose_example_group_alias') do |method|
      method.define_argument('name')
    end

    klass.define_method('expose_example_group_alias_globally') do |method|
      method.define_argument('method_name')
    end

    klass.define_method('expose_globally!')

    klass.define_method('exposed_globally?')

    klass.define_method('remove_globally!')

    klass.define_method('top_level')

    klass.define_method('top_level=') do |method|
      method.define_argument('arg1')
    end
  end

  defs.define_constant('RSpec::Core::DeprecationError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Example') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('delegate_to_metadata') do |method|
      method.define_argument('key')
    end

    klass.define_method('parse_id') do |method|
      method.define_argument('id')
    end

    klass.define_instance_method('clock')

    klass.define_instance_method('clock=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('description')

    klass.define_instance_method('display_exception')

    klass.define_instance_method('display_exception=') do |method|
      method.define_argument('ex')
    end

    klass.define_instance_method('duplicate_with') do |method|
      method.define_optional_argument('metadata_overrides')
    end

    klass.define_instance_method('example_group')

    klass.define_instance_method('example_group_instance')

    klass.define_instance_method('exception')

    klass.define_instance_method('execution_result')

    klass.define_instance_method('fail_with_exception') do |method|
      method.define_argument('reporter')
      method.define_argument('exception')
    end

    klass.define_instance_method('file_path')

    klass.define_instance_method('full_description')

    klass.define_instance_method('id')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('example_group_class')
      method.define_argument('description')
      method.define_argument('user_metadata')
      method.define_optional_argument('example_block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('inspect_output')

    klass.define_instance_method('instance_exec') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('location')

    klass.define_instance_method('location_rerun_argument')

    klass.define_instance_method('metadata')

    klass.define_instance_method('pending')

    klass.define_instance_method('pending?')

    klass.define_instance_method('reporter')

    klass.define_instance_method('rerun_argument')

    klass.define_instance_method('run') do |method|
      method.define_argument('example_group_instance')
      method.define_argument('reporter')
    end

    klass.define_instance_method('set_aggregate_failures_exception') do |method|
      method.define_argument('exception')
    end

    klass.define_instance_method('set_exception') do |method|
      method.define_argument('exception')
    end

    klass.define_instance_method('skip')

    klass.define_instance_method('skip_with_exception') do |method|
      method.define_argument('reporter')
      method.define_argument('exception')
    end

    klass.define_instance_method('skipped?')

    klass.define_instance_method('to_s')

    klass.define_instance_method('update_inherited_metadata') do |method|
      method.define_argument('updates')
    end
  end

  defs.define_constant('RSpec::Core::Example::AllExceptionsExcludingDangerousOnesOnRubiesThatAllowIt') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('===') do |method|
      method.define_argument('exception')
    end
  end

  defs.define_constant('RSpec::Core::Example::ExecutionResult') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::HashImitatable', RubyLint.registry))

    klass.define_instance_method('ensure_timing_set') do |method|
      method.define_argument('clock')
    end

    klass.define_instance_method('example_skipped?')

    klass.define_instance_method('exception')

    klass.define_instance_method('exception=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('finished_at')

    klass.define_instance_method('finished_at=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_exception')

    klass.define_instance_method('pending_exception=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_fixed')

    klass.define_instance_method('pending_fixed=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_fixed?')

    klass.define_instance_method('pending_message')

    klass.define_instance_method('pending_message=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('record_finished') do |method|
      method.define_argument('status')
      method.define_argument('finished_at')
    end

    klass.define_instance_method('run_time')

    klass.define_instance_method('run_time=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('started_at')

    klass.define_instance_method('started_at=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('status')

    klass.define_instance_method('status=') do |method|
      method.define_argument('arg1')
    end
  end

  defs.define_constant('RSpec::Core::Example::ExecutionResult::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('attr_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('hash_attribute_names')
  end

  defs.define_constant('RSpec::Core::Example::Procsy') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('===') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('[]') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('arity') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('binding') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('call') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('clock') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('clock=') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('clone') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('curry') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('description') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('dup') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('duplicate_with') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('example')

    klass.define_instance_method('example_group') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('example_group_instance') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('exception') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('executed?')

    klass.define_instance_method('execution_result') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('file_path') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('full_description') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('hash') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('id') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('example')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('inspect_output') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('lambda?') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('location') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('location_rerun_argument') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('metadata') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('parameters') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('pending') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('pending?') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('reporter') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('rerun_argument') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('run') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('skip') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('skipped?') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('source_location') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('to_proc')

    klass.define_instance_method('update_inherited_metadata') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('wrap') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('yield') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end
  end

  defs.define_constant('RSpec::Core::ExampleGroup') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::Pending', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::MemoizedHelpers', RubyLint.registry))

    klass.define_method('add_example') do |method|
      method.define_argument('example')
    end

    klass.define_method('before_context_ivars')

    klass.define_method('children')

    klass.define_method('context') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('currently_executing_a_context_hook?')

    klass.define_method('declaration_locations')

    klass.define_method('define_example_group_method') do |method|
      method.define_argument('name')
      method.define_optional_argument('metadata')
    end

    klass.define_method('define_example_method') do |method|
      method.define_argument('name')
      method.define_optional_argument('extra_options')
    end

    klass.define_method('define_nested_shared_group_method') do |method|
      method.define_argument('new_name')
      method.define_optional_argument('report_label')
    end

    klass.define_method('delegate_to_metadata') do |method|
      method.define_rest_argument('names')
    end

    klass.define_method('descendant_filtered_examples')

    klass.define_method('descendants')

    klass.define_method('describe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('described_class')

    klass.define_method('description')

    klass.define_method('each_instance_variable_for_example') do |method|
      method.define_argument('group')
    end

    klass.define_method('ensure_example_groups_are_configured')

    klass.define_method('example') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('example_group') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('examples')

    klass.define_method('fcontext') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('fdescribe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('fexample') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('file_path')

    klass.define_method('filtered_examples')

    klass.define_method('find_and_eval_shared') do |method|
      method.define_argument('label')
      method.define_argument('name')
      method.define_argument('inclusion_location')
      method.define_rest_argument('args')
      method.define_block_argument('customization_block')
    end

    klass.define_method('fit') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('focus') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('for_filtered_examples') do |method|
      method.define_argument('reporter')
      method.define_block_argument('block')
    end

    klass.define_method('fspecify') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('id')

    klass.define_method('idempotently_define_singleton_method') do |method|
      method.define_argument('name')
      method.define_block_argument('definition')
    end

    klass.define_method('include_context') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('include_examples') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('it') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('it_behaves_like') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('customization_block')
    end

    klass.define_method('it_should_behave_like') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('customization_block')
    end

    klass.define_method('location')

    klass.define_method('metadata')

    klass.define_method('next_runnable_index_for') do |method|
      method.define_argument('file')
    end

    klass.define_method('ordering_strategy')

    klass.define_method('parent_groups')

    klass.define_method('pending') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('remove_example') do |method|
      method.define_argument('example')
    end

    klass.define_method('reset_memoized')

    klass.define_method('run') do |method|
      method.define_optional_argument('reporter')
    end

    klass.define_method('run_after_context_hooks') do |method|
      method.define_argument('example_group_instance')
    end

    klass.define_method('run_before_context_hooks') do |method|
      method.define_argument('example_group_instance')
    end

    klass.define_method('run_examples') do |method|
      method.define_argument('reporter')
    end

    klass.define_method('set_it_up') do |method|
      method.define_argument('description')
      method.define_argument('args')
      method.define_argument('registration_collection')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('set_ivars') do |method|
      method.define_argument('instance')
      method.define_argument('ivars')
    end

    klass.define_method('skip') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('specify') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('store_before_context_ivars') do |method|
      method.define_argument('example_group_instance')
    end

    klass.define_method('subclass') do |method|
      method.define_argument('parent')
      method.define_argument('description')
      method.define_argument('args')
      method.define_argument('registration_collection')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('superclass_before_context_ivars')

    klass.define_method('superclass_metadata')

    klass.define_method('top_level?')

    klass.define_method('top_level_description')

    klass.define_method('traverse_tree_until') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('update_inherited_metadata') do |method|
      method.define_argument('updates')
    end

    klass.define_method('with_replaced_metadata') do |method|
      method.define_argument('meta')
    end

    klass.define_method('xcontext') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('xdescribe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('example_group_block')
    end

    klass.define_method('xexample') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('xit') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_method('xspecify') do |method|
      method.define_rest_argument('all_args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('described_class')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('inspect_output')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')
  end

  defs.define_constant('RSpec::Core::ExampleGroup::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('let') do |method|
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('let!') do |method|
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject') do |method|
      method.define_optional_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject!') do |method|
      method.define_optional_argument('name')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::ExampleGroup::ContextHookMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('fetch_or_store') do |method|
      method.define_argument('key')
      method.define_block_argument('_block')
    end

    klass.define_method('isolate_for_context_hook') do |method|
      method.define_argument('example_group_instance')
    end
  end

  defs.define_constant('RSpec::Core::ExampleGroup::INSTANCE_VARIABLE_TO_IGNORE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ExampleGroup::NOT_YET_IMPLEMENTED') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ExampleGroup::NO_REASON_GIVEN') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ExampleGroup::NonThreadSafeMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch_or_store') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::ExampleGroup::PendingExampleFixedError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ExampleGroup::SkipDeclaredInExample') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

    klass.define_instance_method('argument')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('argument')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Core::ExampleGroup::ThreadsafeMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch_or_store') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::ExampleGroup::WrongScopeError') do |klass|
    klass.inherits(defs.constant_proxy('NoMethodError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::ExampleStatusPersister') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('load_from') do |method|
      method.define_argument('file_name')
    end

    klass.define_method('persist') do |method|
      method.define_argument('examples')
      method.define_argument('file_name')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('examples')
      method.define_argument('file_name')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('persist')
  end

  defs.define_constant('RSpec::Core::ExclusionRules') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('build')

    klass.define_instance_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('add') do |method|
      method.define_argument('updated')
    end

    klass.define_instance_method('add_with_low_priority') do |method|
      method.define_argument('updated')
    end

    klass.define_instance_method('clear')

    klass.define_instance_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('description')

    klass.define_instance_method('each_pair') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('empty?')

    klass.define_instance_method('fetch') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('include_example?') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('rules')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('opposite')

    klass.define_instance_method('opposite=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('rules')

    klass.define_instance_method('use_only') do |method|
      method.define_argument('updated')
    end
  end

  defs.define_constant('RSpec::Core::FilterManager') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('add_ids') do |method|
      method.define_argument('rerun_path')
      method.define_argument('scoped_ids')
    end

    klass.define_instance_method('add_location') do |method|
      method.define_argument('file_path')
      method.define_argument('line_numbers')
    end

    klass.define_instance_method('empty?')

    klass.define_instance_method('exclude') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('exclude_only') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('exclude_with_low_priority') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('exclusions')

    klass.define_instance_method('include') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('include_only') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('include_with_low_priority') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('inclusions')

    klass.define_instance_method('initialize')

    klass.define_instance_method('prune') do |method|
      method.define_argument('examples')
    end
  end

  defs.define_constant('RSpec::Core::FilterRules') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('build')

    klass.define_instance_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('add') do |method|
      method.define_argument('updated')
    end

    klass.define_instance_method('add_with_low_priority') do |method|
      method.define_argument('updated')
    end

    klass.define_instance_method('clear')

    klass.define_instance_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('description')

    klass.define_instance_method('each_pair') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('empty?')

    klass.define_instance_method('fetch') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('include_example?') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('rules')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('opposite')

    klass.define_instance_method('opposite=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('rules')

    klass.define_instance_method('use_only') do |method|
      method.define_argument('updated')
    end
  end

  defs.define_constant('RSpec::Core::FilterRules::PROC_HEX_NUMBER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::FilterRules::PROJECT_DIR') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::FilterableItemRepository') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::FilterableItemRepository::QueryOptimized') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::FilterableItemRepository::UpdateOptimized', RubyLint.registry))

    klass.define_instance_method('append') do |method|
      method.define_argument('item')
      method.define_argument('metadata')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('applies_predicate')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('items_for') do |method|
      method.define_argument('metadata')
    end

    klass.define_instance_method('prepend') do |method|
      method.define_argument('item')
      method.define_argument('metadata')
    end
  end

  defs.define_constant('RSpec::Core::FilterableItemRepository::UpdateOptimized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('append') do |method|
      method.define_argument('item')
      method.define_argument('metadata')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('applies_predicate')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('items_and_filters')

    klass.define_instance_method('items_for') do |method|
      method.define_argument('request_meta')
    end

    klass.define_instance_method('prepend') do |method|
      method.define_argument('item')
      method.define_argument('metadata')
    end
  end

  defs.define_constant('RSpec::Core::FlatMap') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('flat_map') do |method|
      method.define_argument('array')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::Formatters') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('register') do |method|
      method.define_argument('formatter_class')
      method.define_rest_argument('notifications')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::BisectFormatter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('example_failed') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_passed') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_pending') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_started') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('_output')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('start') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('start_dump') do |method|
      method.define_argument('_notification')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::BisectFormatter::RunResults') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('all_example_ids')

    klass.define_instance_method('all_example_ids=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('failed_example_ids')

    klass.define_instance_method('failed_example_ids=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::BisectFormatter::RunResults::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::BisectFormatter::RunResults::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::BisectFormatter::RunResults::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('count')

    klass.define_instance_method('deprecation') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('deprecation_message_for') do |method|
      method.define_argument('data')
    end

    klass.define_instance_method('deprecation_stream')

    klass.define_instance_method('deprecation_summary') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('deprecation_stream')
      method.define_argument('summary_stream')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('output')

    klass.define_instance_method('printer')

    klass.define_instance_method('summary_stream')
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::DEPRECATION_STREAM_NOTICE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::DelayedPrinter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('deprecation_formatter')

    klass.define_instance_method('deprecation_stream')

    klass.define_instance_method('deprecation_summary')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('deprecation_stream')
      method.define_argument('summary_stream')
      method.define_argument('deprecation_formatter')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('print_deferred_deprecation_warnings')

    klass.define_instance_method('print_deprecation_message') do |method|
      method.define_argument('data')
    end

    klass.define_instance_method('stash_deprecation_message') do |method|
      method.define_argument('deprecation_message')
    end

    klass.define_instance_method('summary_stream')
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::DelayedPrinter::TOO_MANY_USES_LIMIT') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::FileStream') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('file')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('puts') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('summarize') do |method|
      method.define_argument('summary_stream')
      method.define_argument('deprecation_count')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::GeneratedDeprecationMessage') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('data')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('to_s')

    klass.define_instance_method('too_many_warnings_message')

    klass.define_instance_method('type')

    klass.define_instance_method('type=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::GeneratedDeprecationMessage::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::GeneratedDeprecationMessage::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::GeneratedDeprecationMessage::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::ImmediatePrinter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('deprecation_formatter')

    klass.define_instance_method('deprecation_stream')

    klass.define_instance_method('deprecation_summary')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('deprecation_stream')
      method.define_argument('summary_stream')
      method.define_argument('deprecation_formatter')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('print_deprecation_message') do |method|
      method.define_argument('data')
    end

    klass.define_instance_method('summary_stream')
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::RAISE_ERROR_CONFIG_NOTICE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::RaiseErrorStream') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('puts') do |method|
      method.define_argument('message')
    end

    klass.define_instance_method('summarize') do |method|
      method.define_argument('summary_stream')
      method.define_argument('deprecation_count')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::SpecifiedDeprecationMessage') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('data')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('to_s')

    klass.define_instance_method('too_many_warnings_message')

    klass.define_instance_method('type')

    klass.define_instance_method('type=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::SpecifiedDeprecationMessage::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::SpecifiedDeprecationMessage::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DeprecationFormatter::SpecifiedDeprecationMessage::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::DocumentationFormatter') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Formatters::BaseTextFormatter', RubyLint.registry))

    klass.define_instance_method('example_failed') do |method|
      method.define_argument('failure')
    end

    klass.define_instance_method('example_group_finished') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('example_group_started') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_passed') do |method|
      method.define_argument('passed')
    end

    klass.define_instance_method('example_pending') do |method|
      method.define_argument('pending')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('output')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Core::Formatters::ExceptionPresenter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('colorized_formatted_backtrace') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('colorized_message_lines') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('description')

    klass.define_instance_method('example')

    klass.define_instance_method('exception')

    klass.define_instance_method('formatted_backtrace') do |method|
      method.define_optional_argument('exception')
    end

    klass.define_instance_method('formatted_cause') do |method|
      method.define_argument('exception')
    end

    klass.define_instance_method('fully_formatted') do |method|
      method.define_argument('failure_number')
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('fully_formatted_lines') do |method|
      method.define_argument('failure_number')
      method.define_argument('colorizer')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('exception')
      method.define_argument('example')
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message_lines')
  end

  defs.define_constant('RSpec::Core::Formatters::ExceptionPresenter::Factory') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('build')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('example')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Core::Formatters::ExceptionPresenter::Factory::CommonBacktraceTruncater') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('parent')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('with_truncated_backtrace') do |method|
      method.define_argument('child')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::ExceptionPresenter::Factory::EmptyBacktraceFormatter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('format_backtrace') do |method|
      method.define_rest_argument('arg1')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::ExceptionPresenter::PENDING_DETAIL_FORMATTER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::FallbackMessageFormatter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('output')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('output')
  end

  defs.define_constant('RSpec::Core::Formatters::Helpers') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('format_duration') do |method|
      method.define_argument('duration')
    end

    klass.define_method('format_seconds') do |method|
      method.define_argument('float')
      method.define_optional_argument('precision')
    end

    klass.define_method('organize_ids') do |method|
      method.define_argument('ids')
    end

    klass.define_method('pluralize') do |method|
      method.define_argument('count')
      method.define_argument('string')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::Helpers::DEFAULT_PRECISION') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::Helpers::SUB_SECOND_PRECISION') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::HtmlFormatter') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Formatters::BaseFormatter', RubyLint.registry))

    klass.define_instance_method('dump_summary') do |method|
      method.define_argument('summary')
    end

    klass.define_instance_method('example_failed') do |method|
      method.define_argument('failure')
    end

    klass.define_instance_method('example_group_started') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_passed') do |method|
      method.define_argument('passed')
    end

    klass.define_instance_method('example_pending') do |method|
      method.define_argument('pending')
    end

    klass.define_instance_method('example_started') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('output')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('start') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('start_dump') do |method|
      method.define_argument('_notification')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::JsonFormatter') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Formatters::BaseFormatter', RubyLint.registry))

    klass.define_instance_method('close') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('dump_profile') do |method|
      method.define_argument('profile')
    end

    klass.define_instance_method('dump_profile_slowest_example_groups') do |method|
      method.define_argument('profile')
    end

    klass.define_instance_method('dump_profile_slowest_examples') do |method|
      method.define_argument('profile')
    end

    klass.define_instance_method('dump_summary') do |method|
      method.define_argument('summary')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('output')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('output_hash')

    klass.define_instance_method('stop') do |method|
      method.define_argument('notification')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::Loader') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('formatters')

    klass.define_instance_method('add') do |method|
      method.define_argument('formatter_to_use')
      method.define_rest_argument('paths')
    end

    klass.define_instance_method('default_formatter')

    klass.define_instance_method('default_formatter=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('formatters')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('reporter')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('reporter')

    klass.define_instance_method('setup_default') do |method|
      method.define_argument('output_stream')
      method.define_argument('deprecation_stream')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::ProfileFormatter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('dump_profile') do |method|
      method.define_argument('profile')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('output')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('output')
  end

  defs.define_constant('RSpec::Core::Formatters::ProgressFormatter') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Formatters::BaseTextFormatter', RubyLint.registry))

    klass.define_instance_method('example_failed') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('example_passed') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('example_pending') do |method|
      method.define_argument('_notification')
    end

    klass.define_instance_method('start_dump') do |method|
      method.define_argument('_notification')
    end
  end

  defs.define_constant('RSpec::Core::Formatters::SnippetExtractor') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('extract_expression_lines_at') do |method|
      method.define_argument('file_path')
      method.define_argument('beginning_line_number')
      method.define_optional_argument('max_line_count')
    end

    klass.define_method('extract_line_at') do |method|
      method.define_argument('file_path')
      method.define_argument('line_number')
    end

    klass.define_method('least_indentation_from') do |method|
      method.define_argument('lines')
    end

    klass.define_method('source_from_file') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('beginning_line_number')

    klass.define_instance_method('expression_lines')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('source')
      method.define_argument('beginning_line_number')
      method.define_optional_argument('max_line_count')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('max_line_count')

    klass.define_instance_method('source')
  end

  defs.define_constant('RSpec::Core::Formatters::SnippetExtractor::NoExpressionAtLineError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::SnippetExtractor::NoSuchFileError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Formatters::SnippetExtractor::NoSuchLineError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::HashImitatable') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('included') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('value')
    end

    klass.define_instance_method('all?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('any?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('assoc') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('chunk') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('clear') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('collect') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('collect_concat') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('compare_by_identity') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('compare_by_identity?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('count') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('default') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('default=') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('default_proc') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('default_proc=') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('delete') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('delete_if') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('detect') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('drop') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('drop_while') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_cons') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_key') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_pair') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_slice') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_value') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_with_index') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_with_object') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('empty?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('fetch') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('find') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('find_all') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('find_index') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('first') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('flat_map') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('flatten') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('grep') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('group_by') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('has_key?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('has_value?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('include?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('index') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('inject') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('invert') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('keep_if') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('key') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('key?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('keys') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('lazy') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('length') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('map') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('max') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('max_by') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('member?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('merge') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('merge!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('min') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('min_by') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('minmax') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('minmax_by') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('none?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('one?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('partition') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('rassoc') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('reduce') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('rehash') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('reject') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('reject!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('replace') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('reverse_each') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('select') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('select!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('shift') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('size') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('slice_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('slice_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('slice_when') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('sort') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('sort_by') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('store') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('take') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('take_while') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('to_a') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('to_h')

    klass.define_instance_method('to_hash') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('to_set') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('update') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('value?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('values') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('values_at') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::HashImitatable::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('attr_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('hash_attribute_names')
  end

  defs.define_constant('RSpec::Core::Hooks') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('around') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('hooks')

    klass.define_instance_method('prepend_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepend_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterContextHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('run') do |method|
      method.define_argument('example')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterContextHook::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterContextHook::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterContextHook::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('run') do |method|
      method.define_argument('example')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterHook::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterHook::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AfterHook::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AroundHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('execute_with') do |method|
      method.define_argument('example')
      method.define_argument('procsy')
    end

    klass.define_instance_method('hook_description')
  end

  defs.define_constant('RSpec::Core::Hooks::AroundHook::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AroundHook::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::AroundHook::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::BeforeHook') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Hooks::Hook', RubyLint.registry))

    klass.define_instance_method('run') do |method|
      method.define_argument('example')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::BeforeHook::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::BeforeHook::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::BeforeHook::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::Hook') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('block')

    klass.define_instance_method('block=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('options')

    klass.define_instance_method('options=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::Hook::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::Hook::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::Hook::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::HookCollections') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('all_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('owner')
      method.define_argument('filterable_item_repo_class')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('matching_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('example_or_group')
    end

    klass.define_instance_method('processable_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('host')
    end

    klass.define_instance_method('register') do |method|
      method.define_argument('prepend_or_append')
      method.define_argument('position')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('register_global_singleton_context_hooks') do |method|
      method.define_argument('example')
      method.define_argument('globals')
    end

    klass.define_instance_method('register_globals') do |method|
      method.define_argument('host')
      method.define_argument('globals')
    end

    klass.define_instance_method('run') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('example_or_group')
    end

    klass.define_instance_method('run_owned_hooks_for') do |method|
      method.define_argument('position')
      method.define_argument('scope')
      method.define_argument('example_or_group')
    end
  end

  defs.define_constant('RSpec::Core::Hooks::HookCollections::EMPTY_HOOK_ARRAY') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Hooks::HookCollections::HOOK_TYPES') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Hooks::HookCollections::SCOPES') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Hooks::HookCollections::SCOPE_ALIASES') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::InclusionRules') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::FilterRules', RubyLint.registry))

    klass.define_instance_method('add') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('add_with_low_priority') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('include_example?') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('split_file_scoped_rules')

    klass.define_instance_method('standalone?')
  end

  defs.define_constant('RSpec::Core::InclusionRules::PROC_HEX_NUMBER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::InclusionRules::PROJECT_DIR') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Invocations') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Invocations::Bisect') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('call') do |method|
      method.define_argument('options')
      method.define_argument('_err')
      method.define_argument('_out')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::DRbWithFallback') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('call') do |method|
      method.define_argument('options')
      method.define_argument('err')
      method.define_argument('out')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::InitializeProject') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('call') do |method|
      method.define_rest_argument('_args')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::PrintHelp') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('call') do |method|
      method.define_argument('_options')
      method.define_argument('_err')
      method.define_argument('out')
    end

    klass.define_instance_method('invalid_options')

    klass.define_instance_method('invalid_options=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('parser')

    klass.define_instance_method('parser=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::PrintHelp::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::PrintHelp::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::PrintHelp::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Invocations::PrintVersion') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('call') do |method|
      method.define_argument('_options')
      method.define_argument('_err')
      method.define_argument('out')
    end
  end

  defs.define_constant('RSpec::Core::LegacyExampleGroupHash') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::HashImitatable', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('metadata')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('to_h')
  end

  defs.define_constant('RSpec::Core::LegacyExampleGroupHash::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('attr_accessor') do |method|
      method.define_rest_argument('names')
    end

    klass.define_instance_method('hash_attribute_names')
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('define_helpers_on') do |method|
      method.define_argument('example_group')
    end

    klass.define_method('get_constant_or_yield') do |method|
      method.define_argument('example_group')
      method.define_argument('name')
    end

    klass.define_method('module_for') do |method|
      method.define_argument('example_group')
    end

    klass.define_instance_method('is_expected')

    klass.define_instance_method('should') do |method|
      method.define_optional_argument('matcher')
      method.define_optional_argument('message')
    end

    klass.define_instance_method('should_not') do |method|
      method.define_optional_argument('matcher')
      method.define_optional_argument('message')
    end

    klass.define_instance_method('subject')
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::ClassMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('let') do |method|
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('let!') do |method|
      method.define_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject') do |method|
      method.define_optional_argument('name')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject!') do |method|
      method.define_optional_argument('name')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::ContextHookMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('fetch_or_store') do |method|
      method.define_argument('key')
      method.define_block_argument('_block')
    end

    klass.define_method('isolate_for_context_hook') do |method|
      method.define_argument('example_group_instance')
    end
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::ContextHookMemoized::After') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::MemoizedHelpers::ContextHookMemoized', RubyLint.registry))

    klass.define_method('article')

    klass.define_method('hook_expression')

    klass.define_method('hook_intention')
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::ContextHookMemoized::Before') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::MemoizedHelpers::ContextHookMemoized', RubyLint.registry))

    klass.define_method('article')

    klass.define_method('hook_expression')

    klass.define_method('hook_intention')
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::ContextHookMemoized::Before::After') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::MemoizedHelpers::ContextHookMemoized', RubyLint.registry))

    klass.define_method('article')

    klass.define_method('hook_expression')

    klass.define_method('hook_intention')
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::NonThreadSafeMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch_or_store') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::MemoizedHelpers::ThreadsafeMemoized') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch_or_store') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::Metadata') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('ascend') do |method|
      method.define_argument('metadata')
    end

    klass.define_method('ascending') do |method|
      method.define_argument('metadata')
    end

    klass.define_method('build_hash_from') do |method|
      method.define_argument('args')
      method.define_optional_argument('warn_about_example_group_filtering')
    end

    klass.define_method('deep_hash_dup') do |method|
      method.define_argument('object')
    end

    klass.define_method('id_from') do |method|
      method.define_argument('metadata')
    end

    klass.define_method('location_tuple_from') do |method|
      method.define_argument('metadata')
    end

    klass.define_method('relative_path') do |method|
      method.define_argument('line')
    end

    klass.define_method('relative_path_regex')
  end

  defs.define_constant('RSpec::Core::Metadata::ExampleGroupHash') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Metadata::HashPopulator', RubyLint.registry))

    klass.define_method('backwards_compatibility_default_proc') do |method|
      method.define_block_argument('example_group_selector')
    end

    klass.define_method('create') do |method|
      method.define_argument('parent_group_metadata')
      method.define_argument('user_metadata')
      method.define_argument('example_group_index')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('hash_with_backwards_compatibility_default_proc')
  end

  defs.define_constant('RSpec::Core::Metadata::ExampleHash') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Metadata::HashPopulator', RubyLint.registry))

    klass.define_method('create') do |method|
      method.define_argument('group_metadata')
      method.define_argument('user_metadata')
      method.define_argument('index_provider')
      method.define_argument('description')
      method.define_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::Metadata::HashPopulator') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('block')

    klass.define_instance_method('description_args')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('metadata')
      method.define_argument('user_metadata')
      method.define_argument('index_provider')
      method.define_argument('description_args')
      method.define_argument('block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('metadata')

    klass.define_instance_method('populate')

    klass.define_instance_method('user_metadata')
  end

  defs.define_constant('RSpec::Core::Metadata::RESERVED_KEYS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::MetadataFilter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('apply?') do |method|
      method.define_argument('predicate')
      method.define_argument('filters')
      method.define_argument('metadata')
    end

    klass.define_method('filter_applies?') do |method|
      method.define_argument('key')
      method.define_argument('value')
      method.define_argument('metadata')
    end

    klass.define_method('silence_metadata_example_group_deprecations')
  end

  defs.define_constant('RSpec::Core::MultipleExceptionError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::MultipleExceptionError::InterfaceTag', RubyLint.registry))

    klass.define_instance_method('aggregation_block_label')

    klass.define_instance_method('aggregation_metadata')

    klass.define_instance_method('all_exceptions')

    klass.define_instance_method('exception_count_description')

    klass.define_instance_method('failures')

    klass.define_instance_method('initialize') do |method|
      method.define_rest_argument('exceptions')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message')

    klass.define_instance_method('other_errors')

    klass.define_instance_method('summary')
  end

  defs.define_constant('RSpec::Core::MultipleExceptionError::InterfaceTag') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('for') do |method|
      method.define_argument('ex')
    end

    klass.define_instance_method('add') do |method|
      method.define_argument('exception')
    end
  end

  defs.define_constant('RSpec::Core::Notifications') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Notifications::CustomNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('for') do |method|
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::CustomNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::CustomNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::CustomNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::DeprecationNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('from_hash') do |method|
      method.define_argument('data')
    end

    klass.define_method('members')

    klass.define_instance_method('call_site')

    klass.define_instance_method('call_site=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('deprecated')

    klass.define_instance_method('deprecated=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('message')

    klass.define_instance_method('message=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('replacement')

    klass.define_instance_method('replacement=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::DeprecationNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::DeprecationNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::DeprecationNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::ExampleNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('for') do |method|
      method.define_argument('example')
    end

    klass.define_method('members')

    klass.define_instance_method('example')

    klass.define_instance_method('example=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::ExampleNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::ExampleNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::ExampleNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::ExamplesNotification') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('examples')

    klass.define_instance_method('failed_examples')

    klass.define_instance_method('failure_notifications')

    klass.define_instance_method('fully_formatted_failed_examples') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('fully_formatted_pending_examples') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('reporter')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('notifications')

    klass.define_instance_method('pending_examples')

    klass.define_instance_method('pending_notifications')
  end

  defs.define_constant('RSpec::Core::Notifications::FailedExampleNotification') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Notifications::ExampleNotification', RubyLint.registry))

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('colorized_formatted_backtrace') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('colorized_message_lines') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('description')

    klass.define_instance_method('exception')

    klass.define_instance_method('formatted_backtrace')

    klass.define_instance_method('fully_formatted') do |method|
      method.define_argument('failure_number')
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('example')
      method.define_optional_argument('exception_presenter')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message_lines')
  end

  defs.define_constant('RSpec::Core::Notifications::FailedExampleNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::FailedExampleNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::FailedExampleNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::GroupNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('group')

    klass.define_instance_method('group=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::GroupNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::GroupNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::GroupNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::MessageNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message')

    klass.define_instance_method('message=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::MessageNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::MessageNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::MessageNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::NullColorizer') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('wrap') do |method|
      method.define_argument('line')
      method.define_argument('_code_or_symbol')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::NullNotification') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFailedAsExpectedNotification') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Notifications::FailedExampleNotification', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFailedAsExpectedNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFailedAsExpectedNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFailedAsExpectedNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFixedNotification') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Notifications::FailedExampleNotification', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFixedNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFixedNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::PendingExampleFixedNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::ProfileNotification') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('duration')

    klass.define_instance_method('examples')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('duration')
      method.define_argument('examples')
      method.define_argument('number_of_examples')
      method.define_argument('example_groups')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('number_of_examples')

    klass.define_instance_method('percentage')

    klass.define_instance_method('slow_duration')

    klass.define_instance_method('slowest_examples')

    klass.define_instance_method('slowest_groups')
  end

  defs.define_constant('RSpec::Core::Notifications::SeedNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('fully_formatted')

    klass.define_instance_method('seed')

    klass.define_instance_method('seed=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('seed_used?')

    klass.define_instance_method('used=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SeedNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SeedNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SeedNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SkippedExampleNotification') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Notifications::ExampleNotification', RubyLint.registry))

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('fully_formatted') do |method|
      method.define_argument('pending_number')
      method.define_optional_argument('colorizer')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SkippedExampleNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SkippedExampleNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SkippedExampleNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::StartNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('count')

    klass.define_instance_method('count=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('load_time')

    klass.define_instance_method('load_time=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::StartNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::StartNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::StartNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SummaryNotification') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::ShellEscape', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('colorized_rerun_commands') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('colorized_totals_line') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('duration')

    klass.define_instance_method('duration=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('example_count')

    klass.define_instance_method('examples')

    klass.define_instance_method('examples=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('failed_examples')

    klass.define_instance_method('failed_examples=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('failure_count')

    klass.define_instance_method('formatted_duration')

    klass.define_instance_method('formatted_load_time')

    klass.define_instance_method('fully_formatted') do |method|
      method.define_optional_argument('colorizer')
    end

    klass.define_instance_method('load_time')

    klass.define_instance_method('load_time=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('pending_count')

    klass.define_instance_method('pending_examples')

    klass.define_instance_method('pending_examples=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('totals_line')
  end

  defs.define_constant('RSpec::Core::Notifications::SummaryNotification::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SummaryNotification::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Notifications::SummaryNotification::SHELLS_ALLOWING_UNQUOTED_IDS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Notifications::SummaryNotification::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::NullReporter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Ordering') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Ordering::ConfigurationManager') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('force') do |method|
      method.define_argument('hash')
    end

    klass.define_instance_method('initialize')

    klass.define_instance_method('order=') do |method|
      method.define_argument('type')
    end

    klass.define_instance_method('ordering_registry')

    klass.define_instance_method('register_ordering') do |method|
      method.define_argument('name')
      method.define_optional_argument('strategy')
    end

    klass.define_instance_method('seed')

    klass.define_instance_method('seed=') do |method|
      method.define_argument('seed')
    end

    klass.define_instance_method('seed_used?')
  end

  defs.define_constant('RSpec::Core::Ordering::Custom') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('callable')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('order') do |method|
      method.define_argument('list')
    end
  end

  defs.define_constant('RSpec::Core::Ordering::Identity') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('order') do |method|
      method.define_argument('items')
    end
  end

  defs.define_constant('RSpec::Core::Ordering::Random') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('configuration')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('order') do |method|
      method.define_argument('items')
    end

    klass.define_instance_method('used?')
  end

  defs.define_constant('RSpec::Core::Ordering::Random::MAX_32_BIT') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Ordering::Registry') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('fetch') do |method|
      method.define_argument('name')
      method.define_block_argument('fallback')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('configuration')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('register') do |method|
      method.define_argument('sym')
      method.define_argument('strategy')
    end

    klass.define_instance_method('used_random_seed?')
  end

  defs.define_constant('RSpec::Core::Parser') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('parse') do |method|
      method.define_argument('args')
      method.define_optional_argument('source')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('original_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('original_args')

    klass.define_instance_method('parse') do |method|
      method.define_optional_argument('source')
    end
  end

  defs.define_constant('RSpec::Core::Pending') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('mark_fixed!') do |method|
      method.define_argument('example')
    end

    klass.define_method('mark_pending!') do |method|
      method.define_argument('example')
      method.define_argument('message_or_bool')
    end

    klass.define_method('mark_skipped!') do |method|
      method.define_argument('example')
      method.define_argument('message_or_bool')
    end

    klass.define_instance_method('pending') do |method|
      method.define_optional_argument('message')
    end

    klass.define_instance_method('skip') do |method|
      method.define_optional_argument('message')
    end
  end

  defs.define_constant('RSpec::Core::Pending::NOT_YET_IMPLEMENTED') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Pending::NO_REASON_GIVEN') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Pending::PendingExampleFixedError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Pending::SkipDeclaredInExample') do |klass|
    klass.inherits(defs.constant_proxy('StandardError', RubyLint.registry))

    klass.define_instance_method('argument')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('argument')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Core::Profiler') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('example_group_finished') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_group_started') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('example_groups')

    klass.define_instance_method('example_started') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('initialize')
  end

  defs.define_constant('RSpec::Core::Profiler::NOTIFICATIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Reporter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('abort_with') do |method|
      method.define_argument('msg')
      method.define_argument('exit_status')
    end

    klass.define_instance_method('close_after')

    klass.define_instance_method('deprecation') do |method|
      method.define_argument('hash')
    end

    klass.define_instance_method('example_failed') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('example_finished') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('example_group_finished') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('example_group_started') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('example_passed') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('example_pending') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('example_started') do |method|
      method.define_argument('example')
    end

    klass.define_instance_method('examples')

    klass.define_instance_method('fail_fast_limit_met?')

    klass.define_instance_method('failed_examples')

    klass.define_instance_method('finish')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('configuration')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('message') do |method|
      method.define_argument('message')
    end

    klass.define_instance_method('notify') do |method|
      method.define_argument('event')
      method.define_argument('notification')
    end

    klass.define_instance_method('notify_non_example_exception') do |method|
      method.define_argument('exception')
      method.define_argument('context_description')
    end

    klass.define_instance_method('pending_examples')

    klass.define_instance_method('publish') do |method|
      method.define_argument('event')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('register_listener') do |method|
      method.define_argument('listener')
      method.define_rest_argument('notifications')
    end

    klass.define_instance_method('registered_listeners') do |method|
      method.define_argument('notification')
    end

    klass.define_instance_method('report') do |method|
      method.define_argument('expected_example_count')
    end

    klass.define_instance_method('reset')

    klass.define_instance_method('setup_profiler')

    klass.define_instance_method('start') do |method|
      method.define_argument('expected_example_count')
      method.define_optional_argument('time')
    end

    klass.define_instance_method('stop')
  end

  defs.define_constant('RSpec::Core::Reporter::RSPEC_NOTIFICATIONS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::RubyProject') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('add_dir_to_load_path') do |method|
      method.define_argument('dir')
    end

    klass.define_method('add_to_load_path') do |method|
      method.define_rest_argument('dirs')
    end

    klass.define_method('ascend_until')

    klass.define_method('determine_root')

    klass.define_method('find_first_parent_containing') do |method|
      method.define_argument('dir')
    end

    klass.define_method('root')
  end

  defs.define_constant('RSpec::Core::Runner') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('autorun')

    klass.define_method('autorun_disabled?')

    klass.define_method('disable_autorun!')

    klass.define_method('handle_interrupt')

    klass.define_method('installed_at_exit?')

    klass.define_method('invoke')

    klass.define_method('perform_at_exit')

    klass.define_method('run') do |method|
      method.define_argument('args')
      method.define_optional_argument('err')
      method.define_optional_argument('out')
    end

    klass.define_method('running_in_drb?')

    klass.define_method('trap_interrupt')

    klass.define_instance_method('configuration')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('options')
      method.define_optional_argument('configuration')
      method.define_optional_argument('world')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('options')

    klass.define_instance_method('run') do |method|
      method.define_argument('err')
      method.define_argument('out')
    end

    klass.define_instance_method('run_specs') do |method|
      method.define_argument('example_groups')
    end

    klass.define_instance_method('setup') do |method|
      method.define_argument('err')
      method.define_argument('out')
    end

    klass.define_instance_method('world')
  end

  defs.define_constant('RSpec::Core::Set') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('Enumerable', RubyLint.registry))

    klass.define_instance_method('<<') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('each') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('empty?')

    klass.define_instance_method('include?') do |method|
      method.define_argument('key')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('array')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('merge') do |method|
      method.define_argument('values')
    end
  end

  defs.define_constant('RSpec::Core::SharedContext') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('record') do |method|
      method.define_argument('methods')
    end

    klass.define_instance_method('__shared_context_recordings')

    klass.define_instance_method('after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('around') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('context') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('describe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('hooks') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('included') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('let') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('let!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepend_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepend_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::SharedContext::Recording') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('args')

    klass.define_instance_method('args=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('block')

    klass.define_instance_method('block=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('method_name')

    klass.define_instance_method('method_name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('playback_onto') do |method|
      method.define_argument('group')
    end
  end

  defs.define_constant('RSpec::Core::SharedContext::Recording::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::SharedContext::Recording::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::SharedContext::Recording::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::SharedExampleGroup') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('shared_context') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('shared_examples') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('shared_examples_for') do |method|
      method.define_argument('name')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Core::SharedExampleGroup::Registry') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('add') do |method|
      method.define_argument('context')
      method.define_argument('name')
      method.define_rest_argument('metadata_args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('find') do |method|
      method.define_argument('lookup_contexts')
      method.define_argument('name')
    end
  end

  defs.define_constant('RSpec::Core::SharedExampleGroup::TopLevelDSL') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('definitions')

    klass.define_method('expose_globally!')

    klass.define_method('exposed_globally?')

    klass.define_method('remove_globally!')
  end

  defs.define_constant('RSpec::Core::SharedExampleGroupInclusionStackFrame') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('current_backtrace')

    klass.define_method('shared_example_group_inclusions')

    klass.define_method('with_frame') do |method|
      method.define_argument('name')
      method.define_argument('location')
    end

    klass.define_instance_method('description')

    klass.define_instance_method('formatted_inclusion_location')

    klass.define_instance_method('inclusion_location')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('shared_group_name')
      method.define_argument('inclusion_location')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('shared_group_name')
  end

  defs.define_constant('RSpec::Core::SharedExampleGroupModule') do |klass|
    klass.inherits(defs.constant_proxy('Module', RubyLint.registry))

    klass.define_instance_method('definition')

    klass.define_instance_method('include_in') do |method|
      method.define_argument('klass')
      method.define_argument('inclusion_line')
      method.define_argument('args')
      method.define_argument('customization_block')
    end

    klass.define_instance_method('included') do |method|
      method.define_argument('klass')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('description')
      method.define_argument('definition')
      method.define_argument('metadata')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('to_s')
  end

  defs.define_constant('RSpec::Core::ShellEscape') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('conditionally_quote') do |method|
      method.define_argument('id')
    end

    klass.define_method('escape') do |method|
      method.define_argument('shell_command')
    end

    klass.define_method('quote') do |method|
      method.define_argument('argument')
    end

    klass.define_method('shell_allows_unquoted_ids?')
  end

  defs.define_constant('RSpec::Core::ShellEscape::SHELLS_ALLOWING_UNQUOTED_IDS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Source') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('from_file') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('ast')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('source_string')
      method.define_optional_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('lines')

    klass.define_instance_method('nodes_by_line_number')

    klass.define_instance_method('path')

    klass.define_instance_method('source')

    klass.define_instance_method('tokens')

    klass.define_instance_method('tokens_by_line_number')
  end

  defs.define_constant('RSpec::Core::Source::Cache') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('configuration')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('source_from_file') do |method|
      method.define_argument('path')
    end

    klass.define_instance_method('syntax_highlighter')
  end

  defs.define_constant('RSpec::Core::Source::GroupNode') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Source::Node', RubyLint.registry))

    klass.define_instance_method('type')
  end

  defs.define_constant('RSpec::Core::Source::Location') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('location?') do |method|
      method.define_argument('array')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('column')

    klass.define_instance_method('column=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('line')

    klass.define_instance_method('line=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Source::Location::Group') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('mem')

    klass.define_instance_method('mem=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Source::Location::Passwd') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('each')

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('change')

    klass.define_instance_method('change=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('dir')

    klass.define_instance_method('dir=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('expire')

    klass.define_instance_method('expire=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gecos')

    klass.define_instance_method('gecos=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('gid')

    klass.define_instance_method('gid=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('name')

    klass.define_instance_method('name=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('passwd')

    klass.define_instance_method('passwd=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('shell')

    klass.define_instance_method('shell=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uclass')

    klass.define_instance_method('uclass=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('uid')

    klass.define_instance_method('uid=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Source::Location::Tms') do |klass|
    klass.inherits(defs.constant_proxy('Struct', RubyLint.registry))

    klass.define_method('[]') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_method('members')

    klass.define_method('new') do |method|
      method.define_rest_argument('arg1')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('cstime')

    klass.define_instance_method('cstime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('cutime')

    klass.define_instance_method('cutime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('stime')

    klass.define_instance_method('stime=') do |method|
      method.define_argument('_')
    end

    klass.define_instance_method('utime')

    klass.define_instance_method('utime=') do |method|
      method.define_argument('_')
    end
  end

  defs.define_constant('RSpec::Core::Source::Node') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('Enumerable', RubyLint.registry))

    klass.define_method('sexp?') do |method|
      method.define_argument('array')
    end

    klass.define_instance_method('args')

    klass.define_instance_method('children')

    klass.define_instance_method('each') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_ancestor')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('ripper_sexp')
      method.define_optional_argument('parent')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('location')

    klass.define_instance_method('parent')

    klass.define_instance_method('sexp')

    klass.define_instance_method('type')
  end

  defs.define_constant('RSpec::Core::Source::SyntaxHighlighter') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('highlight') do |method|
      method.define_argument('lines')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('configuration')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Core::Source::SyntaxHighlighter::CodeRayImplementation') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('highlight_syntax') do |method|
      method.define_argument('lines')
    end
  end

  defs.define_constant('RSpec::Core::Source::SyntaxHighlighter::CodeRayImplementation::RESET_CODE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Source::SyntaxHighlighter::NoSyntaxHighlightingImplementation') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('highlight_syntax') do |method|
      method.define_argument('lines')
    end
  end

  defs.define_constant('RSpec::Core::Source::SyntaxHighlighter::WindowsImplementation') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('highlight_syntax') do |method|
      method.define_argument('lines')
    end
  end

  defs.define_constant('RSpec::Core::Source::Token') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('tokens_from_ripper_tokens') do |method|
      method.define_argument('ripper_tokens')
    end

    klass.define_instance_method('==') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('closed_by?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('eql?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('ripper_token')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('keyword?')

    klass.define_instance_method('location')

    klass.define_instance_method('opening?')

    klass.define_instance_method('string')

    klass.define_instance_method('token')

    klass.define_instance_method('type')
  end

  defs.define_constant('RSpec::Core::Source::Token::CLOSING_KEYWORDS_BY_OPENING_KEYWORD') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Source::Token::CLOSING_TYPES_BY_OPENING_TYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::SuiteHookContext') do |klass|
    klass.inherits(defs.constant_proxy('RSpec::Core::Example', RubyLint.registry))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('hook_description')
      method.define_argument('reporter')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('set_exception') do |method|
      method.define_argument('exception')
    end
  end

  defs.define_constant('RSpec::Core::SuiteHookContext::AllExceptionsExcludingDangerousOnesOnRubiesThatAllowIt') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('===') do |method|
      method.define_argument('exception')
    end
  end

  defs.define_constant('RSpec::Core::SuiteHookContext::ExecutionResult') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('RSpec::Core::HashImitatable', RubyLint.registry))

    klass.define_instance_method('ensure_timing_set') do |method|
      method.define_argument('clock')
    end

    klass.define_instance_method('example_skipped?')

    klass.define_instance_method('exception')

    klass.define_instance_method('exception=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('finished_at')

    klass.define_instance_method('finished_at=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_exception')

    klass.define_instance_method('pending_exception=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_fixed')

    klass.define_instance_method('pending_fixed=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('pending_fixed?')

    klass.define_instance_method('pending_message')

    klass.define_instance_method('pending_message=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('record_finished') do |method|
      method.define_argument('status')
      method.define_argument('finished_at')
    end

    klass.define_instance_method('run_time')

    klass.define_instance_method('run_time=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('started_at')

    klass.define_instance_method('started_at=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('status')

    klass.define_instance_method('status=') do |method|
      method.define_argument('arg1')
    end
  end

  defs.define_constant('RSpec::Core::SuiteHookContext::Procsy') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('===') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('[]') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('arity') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('binding') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('call') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('clock') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('clock=') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('clone') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('curry') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('description') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('dup') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('duplicate_with') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('example')

    klass.define_instance_method('example_group') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('example_group_instance') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('exception') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('executed?')

    klass.define_instance_method('execution_result') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('file_path') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('full_description') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('hash') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('id') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('example')
      method.define_block_argument('block')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('inspect_output') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('lambda?') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('location') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('location_rerun_argument') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('metadata') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('parameters') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('pending') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('pending?') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('reporter') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('rerun_argument') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('run') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('skip') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('skipped?') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('source_location') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('to_proc')

    klass.define_instance_method('update_inherited_metadata') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('wrap') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('yield') do |method|
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end
  end

  defs.define_constant('RSpec::Core::Time') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('now')
  end

  defs.define_constant('RSpec::Core::Version') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Version::STRING') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Core::Warnings') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('deprecate') do |method|
      method.define_argument('deprecated')
      method.define_optional_argument('data')
    end

    klass.define_instance_method('warn_deprecation') do |method|
      method.define_argument('message')
      method.define_optional_argument('opts')
    end

    klass.define_instance_method('warn_with') do |method|
      method.define_argument('message')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('RSpec::Core::World') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('all_example_groups')

    klass.define_instance_method('all_examples')

    klass.define_instance_method('announce_exclusion_filter') do |method|
      method.define_argument('announcements')
    end

    klass.define_instance_method('announce_filters')

    klass.define_instance_method('announce_inclusion_filter') do |method|
      method.define_argument('announcements')
    end

    klass.define_instance_method('everything_filtered_message')

    klass.define_instance_method('example_count') do |method|
      method.define_optional_argument('groups')
    end

    klass.define_instance_method('example_groups')

    klass.define_instance_method('exclusion_filter')

    klass.define_instance_method('filter_manager')

    klass.define_instance_method('filtered_examples')

    klass.define_instance_method('inclusion_filter')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('configuration')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('non_example_failure')

    klass.define_instance_method('non_example_failure=') do |method|
      method.define_argument('arg1')
    end

    klass.define_instance_method('num_example_groups_defined_in') do |method|
      method.define_argument('file')
    end

    klass.define_instance_method('ordered_example_groups')

    klass.define_instance_method('preceding_declaration_line') do |method|
      method.define_argument('absolute_file_name')
      method.define_argument('filter_line')
    end

    klass.define_instance_method('record') do |method|
      method.define_argument('example_group')
    end

    klass.define_instance_method('registered_example_group_files')

    klass.define_instance_method('report_filter_message') do |method|
      method.define_argument('message')
    end

    klass.define_instance_method('reporter')

    klass.define_instance_method('reset')

    klass.define_instance_method('shared_example_group_registry')

    klass.define_instance_method('source_cache')

    klass.define_instance_method('traverse_example_group_trees_until') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('wants_to_quit')

    klass.define_instance_method('wants_to_quit=') do |method|
      method.define_argument('arg1')
    end
  end

  defs.define_constant('RSpec::Core::World::Null') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('all_example_groups')

    klass.define_method('example_groups')

    klass.define_method('non_example_failure')

    klass.define_method('non_example_failure=') do |method|
      method.define_argument('_')
    end

    klass.define_method('registered_example_group_files')

    klass.define_method('traverse_example_group_trees_until')
  end

  defs.define_constant('RSpec::ExampleGroups') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('assign_const') do |method|
      method.define_argument('group')
    end

    klass.define_method('base_name_for') do |method|
      method.define_argument('group')
    end

    klass.define_method('constant_scope_for') do |method|
      method.define_argument('group')
    end

    klass.define_method('disambiguate') do |method|
      method.define_argument('name')
      method.define_argument('const_scope')
    end

    klass.define_method('remove_all_constants')
  end

  defs.define_constant('RSpec::MODULES_TO_AUTOLOAD') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::SharedContext') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('record') do |method|
      method.define_argument('methods')
    end

    klass.define_instance_method('__shared_context_recordings')

    klass.define_instance_method('after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('append_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('around') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('context') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('describe') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('hooks') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('included') do |method|
      method.define_argument('group')
    end

    klass.define_instance_method('let') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('let!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepend_after') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('prepend_before') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('subject!') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end
  end

  defs.define_constant('RSpec::Support') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('define_optimized_require_for_rspec') do |method|
      method.define_argument('lib')
      method.define_block_argument('require_relative')
    end

    klass.define_method('deregister_matcher_definition') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('failure_notifier')

    klass.define_method('failure_notifier=') do |method|
      method.define_argument('callable')
    end

    klass.define_method('is_a_matcher?') do |method|
      method.define_argument('object')
    end

    klass.define_method('matcher_definitions')

    klass.define_method('method_handle_for') do |method|
      method.define_argument('object')
      method.define_argument('method_name')
    end

    klass.define_method('notify_failure') do |method|
      method.define_argument('failure')
      method.define_optional_argument('options')
    end

    klass.define_method('register_matcher_definition') do |method|
      method.define_block_argument('block')
    end

    klass.define_method('require_rspec_core') do |method|
      method.define_argument('f')
    end

    klass.define_method('require_rspec_support') do |method|
      method.define_argument('f')
    end

    klass.define_method('rspec_description_for_object') do |method|
      method.define_argument('object')
    end

    klass.define_method('thread_local_data')

    klass.define_method('warning_notifier')

    klass.define_method('warning_notifier=') do |method|
      method.define_argument('arg1')
    end

    klass.define_method('with_failure_notifier') do |method|
      method.define_argument('callable')
    end
  end

  defs.define_constant('RSpec::Support::AllExceptionsExceptOnesWeMustNotRescue') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('===') do |method|
      method.define_argument('exception')
    end
  end

  defs.define_constant('RSpec::Support::AllExceptionsExceptOnesWeMustNotRescue::AVOID_RESCUING') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::ComparableVersion') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))
    klass.inherits(defs.constant_proxy('Comparable', RubyLint.registry))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('string')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('segments')

    klass.define_instance_method('string')
  end

  defs.define_constant('RSpec::Support::DEFAULT_FAILURE_NOTIFIER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::DEFAULT_WARNING_NOTIFIER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::Differ') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('color?')

    klass.define_instance_method('diff') do |method|
      method.define_argument('actual')
      method.define_argument('expected')
    end

    klass.define_instance_method('diff_as_object') do |method|
      method.define_argument('actual')
      method.define_argument('expected')
    end

    klass.define_instance_method('diff_as_string') do |method|
      method.define_argument('actual')
      method.define_argument('expected')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('opts')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('RSpec::Support::DirectoryMaker') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('mkdir_p') do |method|
      method.define_argument('path')
    end
  end

  defs.define_constant('RSpec::Support::EncodedString') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('pick_encoding') do |method|
      method.define_argument('source_a')
      method.define_argument('source_b')
    end

    klass.define_instance_method('<<') do |method|
      method.define_argument('string')
    end

    klass.define_instance_method('==') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('empty?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('encoding') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('eql?') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('string')
      method.define_optional_argument('encoding')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('lines') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('source_encoding')

    klass.define_instance_method('split') do |method|
      method.define_argument('regex_or_string')
    end

    klass.define_instance_method('to_s')

    klass.define_instance_method('to_str')
  end

  defs.define_constant('RSpec::Support::EncodedString::ENCODE_NO_CONVERTER') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::EncodedString::ENCODE_UNCONVERTABLE_BYTES') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::EncodedString::REPLACE') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::EncodedString::US_ASCII') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::EncodedString::UTF_8') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::KERNEL_METHOD_METHOD') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::Mutex') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('lock')

    klass.define_instance_method('locked?')

    klass.define_instance_method('owned?')

    klass.define_instance_method('sleep') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_instance_method('synchronize')

    klass.define_instance_method('try_lock')

    klass.define_instance_method('unlock')
  end

  defs.define_constant('RSpec::Support::OS') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('windows?')

    klass.define_method('windows_file_path?')
  end

  defs.define_constant('RSpec::Support::RecursiveConstMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('const_defined_on?') do |method|
      method.define_argument('mod')
      method.define_argument('const_name')
    end

    klass.define_instance_method('constants_defined_on') do |method|
      method.define_argument('mod')
    end

    klass.define_instance_method('get_const_defined_on') do |method|
      method.define_argument('mod')
      method.define_argument('const_name')
    end

    klass.define_instance_method('normalize_const_name') do |method|
      method.define_argument('const_name')
    end

    klass.define_instance_method('recursive_const_defined?') do |method|
      method.define_argument('const_name')
    end

    klass.define_instance_method('recursive_const_get') do |method|
      method.define_argument('const_name')
    end
  end

  defs.define_constant('RSpec::Support::ReentrantMutex') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('initialize')

    klass.define_instance_method('synchronize')
  end

  defs.define_constant('RSpec::Support::Ruby') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('jruby?')

    klass.define_method('mri?')

    klass.define_method('non_mri?')

    klass.define_method('rbx?')
  end

  defs.define_constant('RSpec::Support::RubyFeatures') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_method('caller_locations_supported?')

    klass.define_method('kw_args_supported?')

    klass.define_method('module_prepends_supported?')

    klass.define_method('optional_and_splat_args_supported?')

    klass.define_method('required_kw_args_supported?')

    klass.define_method('ripper_supported?')

    klass.define_method('supports_exception_cause?')

    klass.define_method('supports_rebinding_module_methods?')
  end

  defs.define_constant('RSpec::Support::Version') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::Version::STRING') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Support::Warnings') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

    klass.define_instance_method('deprecate') do |method|
      method.define_argument('deprecated')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('warn_deprecation') do |method|
      method.define_argument('message')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('warn_with') do |method|
      method.define_argument('message')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('warning') do |method|
      method.define_argument('text')
      method.define_optional_argument('options')
    end
  end

  defs.define_constant('RSpec::Version') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end

  defs.define_constant('RSpec::Version::STRING') do |klass|
    klass.inherits(defs.constant_proxy('Object', RubyLint.registry))

  end
end
