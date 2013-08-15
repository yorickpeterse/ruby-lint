# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:54:00 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord') do |klass|
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

  klass.define_method('version')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ActiveRecordError') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AdapterNotFound') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AdapterNotSpecified') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Aggregations') do |klass|
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

  klass.define_instance_method('clear_aggregation_cache')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AssociationTypeMismatch') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Associations') do |klass|
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

  klass.define_instance_method('association') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('association_cache')

  klass.define_instance_method('clear_association_cache')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AttributeAssignment') do |klass|
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

  klass.define_instance_method('assign_attributes') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('attributes=') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('sanitize_for_mass_assignment') do |method|
    method.define_argument('attributes')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AttributeAssignmentError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('attribute')

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

  klass.define_instance_method('exception')

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AttributeMethods') do |klass|
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

  klass.define_instance_method('[]') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('attr_name')
    method.define_argument('value')
  end

  klass.define_instance_method('arel_attributes_with_values_for_create') do |method|
    method.define_argument('attribute_names')
  end

  klass.define_instance_method('arel_attributes_with_values_for_update') do |method|
    method.define_argument('attribute_names')
  end

  klass.define_instance_method('attribute_for_inspect') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_method?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_missing') do |method|
    method.define_argument('match')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('attribute_names')

  klass.define_instance_method('attribute_present?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('attributes')

  klass.define_instance_method('clone_attribute_value') do |method|
    method.define_argument('reader_method')
    method.define_argument('attribute_name')
  end

  klass.define_instance_method('clone_attributes') do |method|
    method.define_optional_argument('reader_method')
    method.define_optional_argument('attributes')
  end

  klass.define_instance_method('column_for_attribute') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('has_attribute?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('name')
    method.define_optional_argument('include_private')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::AutosaveAssociation') do |klass|
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

  klass.define_instance_method('changed_for_autosave?')

  klass.define_instance_method('destroyed_by_association')

  klass.define_instance_method('destroyed_by_association=') do |method|
    method.define_argument('reflection')
  end

  klass.define_instance_method('mark_for_destruction')

  klass.define_instance_method('marked_for_destruction?')

  klass.define_instance_method('reload') do |method|
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Base') do |klass|
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

  klass.define_method('_attr_readonly')

  klass.define_method('_attr_readonly=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_attr_readonly?')

  klass.define_method('_commit_callbacks')

  klass.define_method('_commit_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_commit_callbacks?')

  klass.define_method('_create_callbacks')

  klass.define_method('_create_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_create_callbacks?')

  klass.define_method('_destroy_callbacks')

  klass.define_method('_destroy_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_destroy_callbacks?')

  klass.define_method('_find_callbacks')

  klass.define_method('_find_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_find_callbacks?')

  klass.define_method('_initialize_callbacks')

  klass.define_method('_initialize_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_initialize_callbacks?')

  klass.define_method('_parse_validates_options') do |method|
    method.define_argument('options')
  end

  klass.define_method('_rollback_callbacks')

  klass.define_method('_rollback_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_rollback_callbacks?')

  klass.define_method('_save_callbacks')

  klass.define_method('_save_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_save_callbacks?')

  klass.define_method('_store_accessors_module')

  klass.define_method('_to_partial_path')

  klass.define_method('_touch_callbacks')

  klass.define_method('_touch_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_touch_callbacks?')

  klass.define_method('_update_callbacks')

  klass.define_method('_update_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_update_callbacks?')

  klass.define_method('_validate_callbacks')

  klass.define_method('_validate_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_validate_callbacks?')

  klass.define_method('_validates_default_keys')

  klass.define_method('_validation_callbacks')

  klass.define_method('_validation_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_validation_callbacks?')

  klass.define_method('_validators')

  klass.define_method('_validators=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_validators?')

  klass.define_method('abstract_class')

  klass.define_method('abstract_class=')

  klass.define_method('abstract_class?')

  klass.define_method('accepts_nested_attributes_for') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('after_commit') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_rollback') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_touch') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_validation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('all') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('any?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('arel_engine')

  klass.define_method('arel_table')

  klass.define_method('around_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('around_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('around_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('around_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('attr_accessible') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('attr_protected') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('attr_readonly') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('attribute_aliases')

  klass.define_method('attribute_aliases=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_aliases?')

  klass.define_method('attribute_method?') do |method|
    method.define_argument('attribute')
  end

  klass.define_method('attribute_method_affix') do |method|
    method.define_rest_argument('affixes')
  end

  klass.define_method('attribute_method_matchers')

  klass.define_method('attribute_method_matchers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_method_matchers?')

  klass.define_method('attribute_method_prefix') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_method('attribute_method_suffix') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_method('attribute_methods_generated?')

  klass.define_method('attribute_names')

  klass.define_method('attribute_types_cached_by_default')

  klass.define_method('attribute_types_cached_by_default=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_types_cached_by_default?')

  klass.define_method('average') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('base_class')

  klass.define_method('before_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_remove_const')

  klass.define_method('before_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_validation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('belongs_to') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
  end

  klass.define_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_method('build_default_scope')

  klass.define_method('cache') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('cache_attribute?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('cache_attributes') do |method|
    method.define_rest_argument('attribute_names')
  end

  klass.define_method('cache_timestamp_format')

  klass.define_method('cache_timestamp_format=') do |method|
    method.define_argument('val')
  end

  klass.define_method('cache_timestamp_format?')

  klass.define_method('cached_attributes')

  klass.define_method('calculate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_active_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_all_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_cache!')

  klass.define_method('clear_reloadable_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_validators!')

  klass.define_method('collecting_queries_for_explain')

  klass.define_method('column_defaults')

  klass.define_method('column_methods_hash')

  klass.define_method('column_names')

  klass.define_method('column_types')

  klass.define_method('columns')

  klass.define_method('columns_hash')

  klass.define_method('composed_of') do |method|
    method.define_argument('part_id')
    method.define_optional_argument('options')
  end

  klass.define_method('compute_type') do |method|
    method.define_argument('type_name')
  end

  klass.define_method('configurations')

  klass.define_method('configurations=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('connected?')

  klass.define_method('connection')

  klass.define_method('connection_config')

  klass.define_method('connection_handler')

  klass.define_method('connection_handler=') do |method|
    method.define_argument('handler')
  end

  klass.define_method('connection_id')

  klass.define_method('connection_id=') do |method|
    method.define_argument('connection_id')
  end

  klass.define_method('connection_pool')

  klass.define_method('content_columns')

  klass.define_method('count') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('count_by_sql') do |method|
    method.define_argument('sql')
  end

  klass.define_method('create') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_method('create!') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_method('create_reflection') do |method|
    method.define_argument('macro')
    method.define_argument('name')
    method.define_argument('scope')
    method.define_argument('options')
    method.define_argument('active_record')
  end

  klass.define_method('create_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('current_scope')

  klass.define_method('current_scope=') do |method|
    method.define_argument('scope')
  end

  klass.define_method('dangerous_attribute_method?') do |method|
    method.define_argument('method_name')
  end

  klass.define_method('decorate_columns') do |method|
    method.define_argument('columns_hash')
  end

  klass.define_method('decrement_counter') do |method|
    method.define_argument('counter_name')
    method.define_argument('id')
  end

  klass.define_method('default_connection_handler')

  klass.define_method('default_connection_handler=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_connection_handler?')

  klass.define_method('default_scope') do |method|
    method.define_optional_argument('scope')
    method.define_block_argument('block')
  end

  klass.define_method('default_scopes')

  klass.define_method('default_scopes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_scopes?')

  klass.define_method('default_timezone')

  klass.define_method('default_timezone=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('define_attribute_method') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('define_attribute_methods')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('define_method_attribute') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('define_method_attribute=') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('define_model_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('delete_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('descends_from_active_record?')

  klass.define_method('destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('destroy_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('direct_descendants')

  klass.define_method('disable_implicit_join_references')

  klass.define_method('disable_implicit_join_references=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('distinct') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('eager_load') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('establish_connection') do |method|
    method.define_optional_argument('spec')
  end

  klass.define_method('evaluate_default_scope')

  klass.define_method('except') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('exec_explain') do |method|
    method.define_argument('queries')
  end

  klass.define_method('exists?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('expand_hash_conditions_for_aggregates') do |method|
    method.define_argument('attrs')
  end

  klass.define_method('find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_by_sql') do |method|
    method.define_argument('sql')
    method.define_optional_argument('binds')
  end

  klass.define_method('find_each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_in_batches') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_or_create_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_or_create_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_or_initialize_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('finder_needs_type_condition?')

  klass.define_method('first') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first_or_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first_or_create!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first_or_initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('from') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('full_table_name_prefix')

  klass.define_method('generated_attribute_methods')

  klass.define_method('generated_feature_methods')

  klass.define_method('get_primary_key') do |method|
    method.define_argument('base_name')
  end

  klass.define_method('group') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('has_and_belongs_to_many') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
    method.define_block_argument('extension')
  end

  klass.define_method('has_many') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
    method.define_block_argument('extension')
  end

  klass.define_method('has_one') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
  end

  klass.define_method('has_secure_password') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('having') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('human_attribute_name') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('options')
  end

  klass.define_method('i18n_scope')

  klass.define_method('ids') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('ignore_default_scope=') do |method|
    method.define_argument('ignore')
  end

  klass.define_method('ignore_default_scope?')

  klass.define_method('include_root_in_json')

  klass.define_method('include_root_in_json=') do |method|
    method.define_argument('val')
  end

  klass.define_method('include_root_in_json?')

  klass.define_method('includes') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('increment_counter') do |method|
    method.define_argument('counter_name')
    method.define_argument('id')
  end

  klass.define_method('inheritance_column')

  klass.define_method('inheritance_column=') do |method|
    method.define_argument('value')
  end

  klass.define_method('inherited') do |method|
    method.define_argument('child_class')
  end

  klass.define_method('initialize_attributes') do |method|
    method.define_argument('attributes')
    method.define_optional_argument('options')
  end

  klass.define_method('initialize_generated_modules')

  klass.define_method('instance_method_already_implemented?') do |method|
    method.define_argument('method_name')
  end

  klass.define_method('instantiate') do |method|
    method.define_argument('record')
    method.define_optional_argument('column_types')
  end

  klass.define_method('joins') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('last') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('last!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('limit') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('lock') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('lock_optimistically')

  klass.define_method('lock_optimistically=') do |method|
    method.define_argument('val')
  end

  klass.define_method('lock_optimistically?')

  klass.define_method('locking_column')

  klass.define_method('locking_column=') do |method|
    method.define_argument('value')
  end

  klass.define_method('locking_enabled?')

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('lookup_ancestors')

  klass.define_method('many?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('maximum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('method_defined_within?') do |method|
    method.define_argument('name')
    method.define_argument('klass')
    method.define_optional_argument('sup')
  end

  klass.define_method('minimum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('model_name')

  klass.define_method('nested_attributes_options')

  klass.define_method('nested_attributes_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('nested_attributes_options?')

  klass.define_method('none') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('offset') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('order') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_with_deprecation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_with_deprecation=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_with_deprecation?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_without_deprecation')

  klass.define_method('partial_updates_without_deprecation=') do |method|
    method.define_argument('v')
  end

  klass.define_method('partial_updates_without_deprecation?')

  klass.define_method('partial_writes')

  klass.define_method('partial_writes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('partial_writes?')

  klass.define_method('pluck') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('pluralize_table_names')

  klass.define_method('pluralize_table_names=') do |method|
    method.define_argument('val')
  end

  klass.define_method('pluralize_table_names?')

  klass.define_method('preload') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('primary_key')

  klass.define_method('primary_key=') do |method|
    method.define_argument('value')
  end

  klass.define_method('primary_key_prefix_type')

  klass.define_method('primary_key_prefix_type=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('quote_bound_value') do |method|
    method.define_argument('value')
    method.define_optional_argument('c')
  end

  klass.define_method('quote_value') do |method|
    method.define_argument('value')
    method.define_optional_argument('column')
  end

  klass.define_method('quoted_locking_column')

  klass.define_method('quoted_primary_key')

  klass.define_method('quoted_table_name')

  klass.define_method('raise_if_bind_arity_mismatch') do |method|
    method.define_argument('statement')
    method.define_argument('expected')
    method.define_argument('provided')
  end

  klass.define_method('readonly') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('readonly_attributes')

  klass.define_method('record_timestamps')

  klass.define_method('record_timestamps=') do |method|
    method.define_argument('val')
  end

  klass.define_method('record_timestamps?')

  klass.define_method('references') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('reflect_on_aggregation') do |method|
    method.define_argument('aggregation')
  end

  klass.define_method('reflect_on_all_aggregations')

  klass.define_method('reflect_on_all_associations') do |method|
    method.define_optional_argument('macro')
  end

  klass.define_method('reflect_on_all_autosave_associations')

  klass.define_method('reflect_on_association') do |method|
    method.define_argument('association')
  end

  klass.define_method('reflections')

  klass.define_method('reflections=') do |method|
    method.define_argument('val')
  end

  klass.define_method('reflections?')

  klass.define_method('remove_connection') do |method|
    method.define_optional_argument('klass')
  end

  klass.define_method('reorder') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('replace_bind_variables') do |method|
    method.define_argument('statement')
    method.define_argument('values')
  end

  klass.define_method('replace_named_bind_variables') do |method|
    method.define_argument('statement')
    method.define_argument('bind_vars')
  end

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('reset_column_information')

  klass.define_method('reset_counters') do |method|
    method.define_argument('id')
    method.define_rest_argument('counters')
  end

  klass.define_method('reset_locking_column')

  klass.define_method('reset_primary_key')

  klass.define_method('reset_sequence_name')

  klass.define_method('reset_table_name')

  klass.define_method('retrieve_connection')

  klass.define_method('sanitize') do |method|
    method.define_argument('object')
  end

  klass.define_method('sanitize_conditions') do |method|
    method.define_argument('condition')
    method.define_optional_argument('table_name')
  end

  klass.define_method('sanitize_sql') do |method|
    method.define_argument('condition')
    method.define_optional_argument('table_name')
  end

  klass.define_method('sanitize_sql_array') do |method|
    method.define_argument('ary')
  end

  klass.define_method('sanitize_sql_for_assignment') do |method|
    method.define_argument('assignments')
    method.define_optional_argument('default_table_name')
  end

  klass.define_method('sanitize_sql_for_conditions') do |method|
    method.define_argument('condition')
    method.define_optional_argument('table_name')
  end

  klass.define_method('sanitize_sql_hash') do |method|
    method.define_argument('attrs')
    method.define_optional_argument('default_table_name')
  end

  klass.define_method('sanitize_sql_hash_for_assignment') do |method|
    method.define_argument('attrs')
    method.define_argument('table')
  end

  klass.define_method('sanitize_sql_hash_for_conditions') do |method|
    method.define_argument('attrs')
    method.define_optional_argument('default_table_name')
  end

  klass.define_method('schema_format')

  klass.define_method('schema_format=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('scope') do |method|
    method.define_argument('name')
    method.define_optional_argument('body')
    method.define_block_argument('block')
  end

  klass.define_method('scope_attributes')

  klass.define_method('scope_attributes?')

  klass.define_method('scoped') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('sequence_name')

  klass.define_method('sequence_name=') do |method|
    method.define_argument('value')
  end

  klass.define_method('serialize') do |method|
    method.define_argument('attr_name')
    method.define_optional_argument('class_name')
  end

  klass.define_method('serialized_attributes')

  klass.define_method('serialized_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('serialized_attributes?')

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

  klass.define_method('skip_time_zone_conversion_for_attributes')

  klass.define_method('skip_time_zone_conversion_for_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('skip_time_zone_conversion_for_attributes?')

  klass.define_method('sti_name')

  klass.define_method('store') do |method|
    method.define_argument('store_attribute')
    method.define_optional_argument('options')
  end

  klass.define_method('store_accessor') do |method|
    method.define_argument('store_attribute')
    method.define_rest_argument('keys')
  end

  klass.define_method('store_full_sti_class')

  klass.define_method('store_full_sti_class=') do |method|
    method.define_argument('val')
  end

  klass.define_method('store_full_sti_class?')

  klass.define_method('stored_attributes')

  klass.define_method('stored_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('stored_attributes?')

  klass.define_method('sum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('symbolized_base_class')

  klass.define_method('symbolized_sti_name')

  klass.define_method('table_exists?')

  klass.define_method('table_name')

  klass.define_method('table_name=') do |method|
    method.define_argument('value')
  end

  klass.define_method('table_name_prefix')

  klass.define_method('table_name_prefix=') do |method|
    method.define_argument('val')
  end

  klass.define_method('table_name_prefix?')

  klass.define_method('table_name_suffix')

  klass.define_method('table_name_suffix=') do |method|
    method.define_argument('val')
  end

  klass.define_method('table_name_suffix?')

  klass.define_method('take') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('take!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('time_zone_aware_attributes')

  klass.define_method('time_zone_aware_attributes=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('timestamped_migrations')

  klass.define_method('timestamped_migrations=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('transaction') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('uncached') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('undefine_attribute_methods')

  klass.define_method('uniq') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('unscope') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('unscoped')

  klass.define_method('update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('update_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('update_counters') do |method|
    method.define_argument('id')
    method.define_argument('counters')
  end

  klass.define_method('validate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('validates') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('validates!') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('validates_absence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_acceptance_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_associated') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_confirmation_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_each') do |method|
    method.define_rest_argument('attr_names')
    method.define_block_argument('block')
  end

  klass.define_method('validates_exclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_format_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_inclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_length_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_numericality_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_presence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_size_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_uniqueness_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('validators')

  klass.define_method('validators_on') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('where') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('with_exclusive_scope') do |method|
    method.define_optional_argument('method_scoping')
    method.define_block_argument('block')
  end

  klass.define_method('with_scope') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('action')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('attr_name')
    method.define_argument('value')
  end

  klass.define_instance_method('_attr_readonly')

  klass.define_instance_method('_commit_callbacks')

  klass.define_instance_method('_commit_callbacks=')

  klass.define_instance_method('_commit_callbacks?')

  klass.define_instance_method('_create_callbacks')

  klass.define_instance_method('_create_callbacks=')

  klass.define_instance_method('_create_callbacks?')

  klass.define_instance_method('_destroy')

  klass.define_instance_method('_destroy_callbacks')

  klass.define_instance_method('_destroy_callbacks=')

  klass.define_instance_method('_destroy_callbacks?')

  klass.define_instance_method('_find_callbacks')

  klass.define_instance_method('_find_callbacks=')

  klass.define_instance_method('_find_callbacks?')

  klass.define_instance_method('_initialize_callbacks')

  klass.define_instance_method('_initialize_callbacks=')

  klass.define_instance_method('_initialize_callbacks?')

  klass.define_instance_method('_rollback_callbacks')

  klass.define_instance_method('_rollback_callbacks=')

  klass.define_instance_method('_rollback_callbacks?')

  klass.define_instance_method('_save_callbacks')

  klass.define_instance_method('_save_callbacks=')

  klass.define_instance_method('_save_callbacks?')

  klass.define_instance_method('_touch_callbacks')

  klass.define_instance_method('_touch_callbacks=')

  klass.define_instance_method('_touch_callbacks?')

  klass.define_instance_method('_update_callbacks')

  klass.define_instance_method('_update_callbacks=')

  klass.define_instance_method('_update_callbacks?')

  klass.define_instance_method('_validate_callbacks')

  klass.define_instance_method('_validate_callbacks=')

  klass.define_instance_method('_validate_callbacks?')

  klass.define_instance_method('_validation_callbacks')

  klass.define_instance_method('_validation_callbacks=')

  klass.define_instance_method('_validation_callbacks?')

  klass.define_instance_method('_validators')

  klass.define_instance_method('_validators=')

  klass.define_instance_method('_validators?')

  klass.define_instance_method('add_to_transaction')

  klass.define_instance_method('arel_attributes_with_values_for_create') do |method|
    method.define_argument('attribute_names')
  end

  klass.define_instance_method('arel_attributes_with_values_for_update') do |method|
    method.define_argument('attribute_names')
  end

  klass.define_instance_method('assign_attributes') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('association') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('association_cache')

  klass.define_instance_method('attribute_aliases')

  klass.define_instance_method('attribute_aliases?')

  klass.define_instance_method('attribute_for_inspect') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_method?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_method_matchers')

  klass.define_instance_method('attribute_method_matchers?')

  klass.define_instance_method('attribute_missing') do |method|
    method.define_argument('match')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('attribute_names')

  klass.define_instance_method('attribute_present?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('attribute_types_cached_by_default')

  klass.define_instance_method('attribute_types_cached_by_default?')

  klass.define_instance_method('attributes')

  klass.define_instance_method('attributes=') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('attributes_before_type_cast')

  klass.define_instance_method('becomes') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('becomes!') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('cache_key')

  klass.define_instance_method('cache_timestamp_format')

  klass.define_instance_method('cache_timestamp_format?')

  klass.define_instance_method('changed')

  klass.define_instance_method('changed?')

  klass.define_instance_method('changed_attributes')

  klass.define_instance_method('changed_for_autosave?')

  klass.define_instance_method('changes')

  klass.define_instance_method('clear_aggregation_cache')

  klass.define_instance_method('clear_association_cache')

  klass.define_instance_method('clear_transaction_record_state')

  klass.define_instance_method('clone_attribute_value') do |method|
    method.define_argument('reader_method')
    method.define_argument('attribute_name')
  end

  klass.define_instance_method('clone_attributes') do |method|
    method.define_optional_argument('reader_method')
    method.define_optional_argument('attributes')
  end

  klass.define_instance_method('column_for_attribute') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('committed!')

  klass.define_instance_method('configurations')

  klass.define_instance_method('connection')

  klass.define_instance_method('connection_handler')

  klass.define_instance_method('decrement') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('decrement!') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('default_connection_handler')

  klass.define_instance_method('default_connection_handler?')

  klass.define_instance_method('default_scopes')

  klass.define_instance_method('default_timezone')

  klass.define_instance_method('delete')

  klass.define_instance_method('destroy')

  klass.define_instance_method('destroy!')

  klass.define_instance_method('destroyed?')

  klass.define_instance_method('destroyed_by_association')

  klass.define_instance_method('destroyed_by_association=') do |method|
    method.define_argument('reflection')
  end

  klass.define_instance_method('disable_implicit_join_references')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('errors')

  klass.define_instance_method('from_json') do |method|
    method.define_argument('json')
    method.define_optional_argument('include_root')
  end

  klass.define_instance_method('from_xml') do |method|
    method.define_argument('xml')
  end

  klass.define_instance_method('has_attribute?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('has_transactional_callbacks?')

  klass.define_instance_method('id')

  klass.define_instance_method('id=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('id?')

  klass.define_instance_method('id_before_type_cast')

  klass.define_instance_method('include_root_in_json')

  klass.define_instance_method('include_root_in_json=')

  klass.define_instance_method('include_root_in_json?')

  klass.define_instance_method('increment') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('increment!') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('init_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('invalid?') do |method|
    method.define_optional_argument('context')
  end

  klass.define_instance_method('lock!') do |method|
    method.define_optional_argument('lock')
  end

  klass.define_instance_method('lock_optimistically')

  klass.define_instance_method('lock_optimistically?')

  klass.define_instance_method('locking_enabled?')

  klass.define_instance_method('logger')

  klass.define_instance_method('mark_for_destruction')

  klass.define_instance_method('marked_for_destruction?')

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('nested_attributes_options')

  klass.define_instance_method('nested_attributes_options?')

  klass.define_instance_method('new_record?')

  klass.define_instance_method('partial_writes')

  klass.define_instance_method('partial_writes?')

  klass.define_instance_method('perform_validations') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('persisted?')

  klass.define_instance_method('pluralize_table_names')

  klass.define_instance_method('pluralize_table_names?')

  klass.define_instance_method('populate_with_current_scope_attributes')

  klass.define_instance_method('previous_changes')

  klass.define_instance_method('primary_key_prefix_type')

  klass.define_instance_method('query_attribute') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('quoted_id')

  klass.define_instance_method('raw_write_attribute') do |method|
    method.define_argument('attr_name')
    method.define_argument('value')
  end

  klass.define_instance_method('read_attribute') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('read_attribute_before_type_cast') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('read_attribute_for_serialization') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('read_attribute_for_validation') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('read_store_attribute') do |method|
    method.define_argument('store_attribute')
    method.define_argument('key')
  end

  klass.define_instance_method('readonly!')

  klass.define_instance_method('readonly?')

  klass.define_instance_method('record_timestamps')

  klass.define_instance_method('record_timestamps=')

  klass.define_instance_method('record_timestamps?')

  klass.define_instance_method('reflections')

  klass.define_instance_method('reflections=')

  klass.define_instance_method('reflections?')

  klass.define_instance_method('reload') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('remember_transaction_record_state')

  klass.define_instance_method('respond_to_without_attributes?') do |method|
    method.define_argument('meth')
    method.define_optional_argument('include_private')
  end

  klass.define_instance_method('restore_transaction_record_state') do |method|
    method.define_optional_argument('force')
  end

  klass.define_instance_method('rollback_active_record_state!')

  klass.define_instance_method('rolledback!') do |method|
    method.define_optional_argument('force_restore_state')
  end

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end

  klass.define_instance_method('run_validations!')

  klass.define_instance_method('sanitize_for_mass_assignment') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('save') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('save!') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('schema_format')

  klass.define_instance_method('serializable_hash') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('serialized_attributes')

  klass.define_instance_method('set_transaction_state') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('skip_time_zone_conversion_for_attributes')

  klass.define_instance_method('skip_time_zone_conversion_for_attributes?')

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('methods')
  end

  klass.define_instance_method('store_full_sti_class')

  klass.define_instance_method('store_full_sti_class?')

  klass.define_instance_method('table_name_prefix')

  klass.define_instance_method('table_name_prefix?')

  klass.define_instance_method('table_name_suffix')

  klass.define_instance_method('table_name_suffix?')

  klass.define_instance_method('time_zone_aware_attributes')

  klass.define_instance_method('timestamped_migrations')

  klass.define_instance_method('to_key')

  klass.define_instance_method('to_model')

  klass.define_instance_method('to_partial_path')

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('toggle') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('toggle!') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('touch') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('transaction') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('transaction_include_any_action?') do |method|
    method.define_argument('actions')
  end

  klass.define_instance_method('transaction_record_state') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update!') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_attribute') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('update_attributes') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_attributes!') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_column') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('update_columns') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('valid?') do |method|
    method.define_optional_argument('context')
  end

  klass.define_instance_method('validates_absence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_acceptance_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_confirmation_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_exclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_format_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_inclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_length_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_numericality_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_presence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_size_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('validation_context')

  klass.define_instance_method('validation_context=')

  klass.define_instance_method('with_lock') do |method|
    method.define_optional_argument('lock')
  end

  klass.define_instance_method('with_transaction_returning_status')

  klass.define_instance_method('write_store_attribute') do |method|
    method.define_argument('store_attribute')
    method.define_argument('key')
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Batches') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_each') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('find_in_batches') do |method|
    method.define_optional_argument('options')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Calculations') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('average') do |method|
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('calculate') do |method|
    method.define_argument('operation')
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('ids')

  klass.define_instance_method('maximum') do |method|
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('minimum') do |method|
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('pluck') do |method|
    method.define_rest_argument('column_names')
  end

  klass.define_instance_method('sum') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Callbacks') do |klass|
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

  klass.define_instance_method('destroy')

  klass.define_instance_method('touch') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Coders') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ConfigurationError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ConnectionAdapters') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ConnectionHandling') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_active_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_all_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_cache!')

  klass.define_instance_method('clear_reloadable_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('connected?')

  klass.define_instance_method('connection')

  klass.define_instance_method('connection_config')

  klass.define_instance_method('connection_id')

  klass.define_instance_method('connection_id=') do |method|
    method.define_argument('connection_id')
  end

  klass.define_instance_method('connection_pool')

  klass.define_instance_method('establish_connection') do |method|
    method.define_optional_argument('spec')
  end

  klass.define_instance_method('remove_connection') do |method|
    method.define_optional_argument('klass')
  end

  klass.define_instance_method('retrieve_connection')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ConnectionNotEstablished') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ConnectionTimeoutError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ConnectionNotEstablished'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Core') do |klass|
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

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other_object')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('comparison_object')
  end

  klass.define_instance_method('connection')

  klass.define_instance_method('connection_handler')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('comparison_object')
  end

  klass.define_instance_method('freeze')

  klass.define_instance_method('frozen?')

  klass.define_instance_method('has_transactional_callbacks?')

  klass.define_instance_method('hash')

  klass.define_instance_method('init_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('initialize_dup') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('readonly!')

  klass.define_instance_method('readonly?')

  klass.define_instance_method('set_transaction_state') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('methods')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::CounterCache') do |klass|
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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::DangerousAttributeError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Delegation') do |klass|
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

  klass.define_instance_method('all?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('columns_hash') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('connection') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('include?') do |method|
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

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('primary_key') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('quoted_primary_key') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('quoted_table_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('method')
    method.define_optional_argument('include_private')
  end

  klass.define_instance_method('table_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_ary') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_xml') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_yaml') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::DeleteRestrictionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::DeprecatedFinders') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('all') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('default_scope') do |method|
    method.define_optional_argument('scope')
    method.define_block_argument('block')
  end

  klass.define_instance_method('scope') do |method|
    method.define_argument('name')
    method.define_optional_argument('body')
    method.define_block_argument('block')
  end

  klass.define_instance_method('scoped') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('with_exclusive_scope') do |method|
    method.define_optional_argument('method_scoping')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_scope') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('action')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::DuplicateMigrationNameError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::DuplicateMigrationVersionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::DynamicMatchers') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('name')
    method.define_optional_argument('include_private')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::EagerLoadPolymorphicError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Explain') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('collecting_queries_for_explain')

  klass.define_instance_method('exec_explain') do |method|
    method.define_argument('queries')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ExplainRegistry') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect=')

  klass.define_instance_method('collect?')

  klass.define_instance_method('queries')

  klass.define_instance_method('queries=')

  klass.define_instance_method('reset')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::FinderMethods') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('apply_join_dependency') do |method|
    method.define_argument('relation')
    method.define_argument('join_dependency')
  end

  klass.define_instance_method('construct_join_dependency_for_association_find')

  klass.define_instance_method('construct_limited_ids_condition') do |method|
    method.define_argument('relation')
  end

  klass.define_instance_method('construct_relation_for_association_calculations')

  klass.define_instance_method('construct_relation_for_association_find') do |method|
    method.define_argument('join_dependency')
  end

  klass.define_instance_method('exists?') do |method|
    method.define_optional_argument('conditions')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_by') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_by!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_first')

  klass.define_instance_method('find_last')

  klass.define_instance_method('find_one') do |method|
    method.define_argument('id')
  end

  klass.define_instance_method('find_some') do |method|
    method.define_argument('ids')
  end

  klass.define_instance_method('find_take')

  klass.define_instance_method('find_with_associations')

  klass.define_instance_method('find_with_ids') do |method|
    method.define_rest_argument('ids')
  end

  klass.define_instance_method('first') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('first!')

  klass.define_instance_method('last') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('last!')

  klass.define_instance_method('raise_record_not_found_exception!') do |method|
    method.define_argument('ids')
    method.define_argument('result_size')
    method.define_argument('expected_size')
  end

  klass.define_instance_method('take') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('take!')

  klass.define_instance_method('using_limitable_reflections?') do |method|
    method.define_argument('reflections')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasAndBelongsToManyAssociationForeignKeyNeeded') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughAssociationNotFoundError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughAssociationPointlessSourceTypeError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughAssociationPolymorphicSourceError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughAssociationPolymorphicThroughError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughCantAssociateNewRecords') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughCantAssociateThroughHasOneOrManyReflection') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughCantDissociateNewRecords') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughNestedAssociationsAreReadonly') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasManyThroughSourceAssociationNotFoundError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::HasOneThroughCantAssociateThroughCollection') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::IllegalMigrationNameError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ImmutableRelation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Inheritance') do |klass|
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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Integration') do |klass|
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

  klass.define_instance_method('cache_key')

  klass.define_instance_method('to_param')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::InvalidForeignKey') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::WrappedDatabaseException'))

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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::InverseOfAssociationNotFoundError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::IrreversibleMigration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Locking') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Migration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('check_pending!')

  klass.define_method('delegate')

  klass.define_method('delegate=')

  klass.define_method('disable_ddl_transaction')

  klass.define_method('disable_ddl_transaction!')

  klass.define_method('disable_ddl_transaction=')

  klass.define_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('migrate') do |method|
    method.define_argument('direction')
  end

  klass.define_method('verbose')

  klass.define_method('verbose=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('announce') do |method|
    method.define_argument('message')
  end

  klass.define_instance_method('connection')

  klass.define_instance_method('copy') do |method|
    method.define_argument('destination')
    method.define_argument('sources')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('disable_ddl_transaction')

  klass.define_instance_method('down')

  klass.define_instance_method('exec_migration') do |method|
    method.define_argument('conn')
    method.define_argument('direction')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('arguments')
    method.define_block_argument('block')
  end

  klass.define_instance_method('migrate') do |method|
    method.define_argument('direction')
  end

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('next_migration_number') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('reversible')

  klass.define_instance_method('revert') do |method|
    method.define_rest_argument('migration_classes')
  end

  klass.define_instance_method('reverting?')

  klass.define_instance_method('run') do |method|
    method.define_rest_argument('migration_classes')
  end

  klass.define_instance_method('say') do |method|
    method.define_argument('message')
    method.define_optional_argument('subitem')
  end

  klass.define_instance_method('say_with_time') do |method|
    method.define_argument('message')
  end

  klass.define_instance_method('suppress_messages')

  klass.define_instance_method('up')

  klass.define_instance_method('verbose')

  klass.define_instance_method('verbose=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=')

  klass.define_instance_method('write') do |method|
    method.define_optional_argument('text')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::MigrationProxy') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('#<Class:0x22a58>'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('_specialize') do |method|
    method.define_argument('attrs')
  end

  klass.define_method('length')

  klass.define_method('make_struct') do |method|
    method.define_argument('name')
    method.define_argument('attrs')
  end

  klass.define_method('members')

  klass.define_method('subclass_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('var')
    method.define_argument('obj')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('announce') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('basename')

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

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('disable_ddl_transaction') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('each_pair')

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

  klass.define_instance_method('filename')

  klass.define_instance_method('filename=')

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

  klass.define_instance_method('length')

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('migrate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('mtime')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

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

  klass.define_instance_method('scope')

  klass.define_instance_method('scope=')

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

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('write') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Migrator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('current_version')

  klass.define_method('down') do |method|
    method.define_argument('migrations_paths')
    method.define_optional_argument('target_version')
    method.define_block_argument('block')
  end

  klass.define_method('forward') do |method|
    method.define_argument('migrations_paths')
    method.define_optional_argument('steps')
  end

  klass.define_method('get_all_versions')

  klass.define_method('last_migration')

  klass.define_method('last_version')

  klass.define_method('migrate') do |method|
    method.define_argument('migrations_paths')
    method.define_optional_argument('target_version')
    method.define_block_argument('block')
  end

  klass.define_method('migrations') do |method|
    method.define_argument('paths')
  end

  klass.define_method('migrations_path')

  klass.define_method('migrations_path=')

  klass.define_method('migrations_paths')

  klass.define_method('migrations_paths=')

  klass.define_method('needs_migration?')

  klass.define_method('open') do |method|
    method.define_argument('migrations_paths')
  end

  klass.define_method('proper_table_name') do |method|
    method.define_argument('name')
  end

  klass.define_method('rollback') do |method|
    method.define_argument('migrations_paths')
    method.define_optional_argument('steps')
  end

  klass.define_method('run') do |method|
    method.define_argument('direction')
    method.define_argument('migrations_paths')
    method.define_argument('target_version')
  end

  klass.define_method('schema_migrations_table_name')

  klass.define_method('up') do |method|
    method.define_argument('migrations_paths')
    method.define_optional_argument('target_version')
  end

  klass.define_instance_method('current')

  klass.define_instance_method('current_migration')

  klass.define_instance_method('current_version')

  klass.define_instance_method('migrate')

  klass.define_instance_method('migrated')

  klass.define_instance_method('migrations')

  klass.define_instance_method('pending_migrations')

  klass.define_instance_method('run')

  klass.define_instance_method('runnable')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ModelSchema') do |klass|
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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::MultiparameterAssignmentErrors') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

  klass.define_instance_method('errors')

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::NestedAttributes') do |klass|
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

  klass.define_instance_method('_destroy')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::NullMigration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::MigrationProxy'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('_specialize') do |method|
    method.define_argument('attrs')
  end

  klass.define_method('length')

  klass.define_method('make_struct') do |method|
    method.define_argument('name')
    method.define_argument('attrs')
  end

  klass.define_method('members')

  klass.define_method('subclass_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('var')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('var')
    method.define_argument('obj')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('announce') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('basename')

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

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('disable_ddl_transaction') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('each_pair')

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

  klass.define_instance_method('filename')

  klass.define_instance_method('filename=')

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

  klass.define_instance_method('length')

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('members')

  klass.define_instance_method('migrate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('mtime')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

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

  klass.define_instance_method('scope')

  klass.define_instance_method('scope=')

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

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_h')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('write') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::NullRelation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('calculate') do |method|
    method.define_argument('_operation')
    method.define_argument('_column_name')
    method.define_optional_argument('_options')
  end

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('_id_or_array')
  end

  klass.define_instance_method('delete_all') do |method|
    method.define_optional_argument('_conditions')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('exec_queries')

  klass.define_instance_method('exists?') do |method|
    method.define_optional_argument('_id')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('pluck') do |method|
    method.define_argument('_column_name')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('sum') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('to_sql')

  klass.define_instance_method('update_all') do |method|
    method.define_argument('_updates')
    method.define_optional_argument('_conditions')
    method.define_optional_argument('_options')
  end

  klass.define_instance_method('where_values_hash')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::PendingMigrationError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Persistence') do |klass|
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

  klass.define_instance_method('becomes') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('becomes!') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('decrement') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('decrement!') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('delete')

  klass.define_instance_method('destroy')

  klass.define_instance_method('destroy!')

  klass.define_instance_method('destroyed?')

  klass.define_instance_method('increment') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('increment!') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('new_record?')

  klass.define_instance_method('persisted?')

  klass.define_instance_method('reload') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('save') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('save!') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('toggle') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('toggle!') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('touch') do |method|
    method.define_optional_argument('name')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update!') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_attribute') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('update_attributes') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_attributes!') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_column') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('update_columns') do |method|
    method.define_argument('attributes')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::PredicateBuilder') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('build') do |method|
    method.define_argument('attribute')
    method.define_argument('value')
  end

  klass.define_method('build_from_hash') do |method|
    method.define_argument('klass')
    method.define_argument('attributes')
    method.define_argument('default_table')
  end

  klass.define_method('expand') do |method|
    method.define_argument('klass')
    method.define_argument('table')
    method.define_argument('column')
    method.define_argument('value')
  end

  klass.define_method('references') do |method|
    method.define_argument('attributes')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::PreparedStatementInvalid') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::QueryCache') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::QueryMethods') do |klass|
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

  klass.define_instance_method('arel')

  klass.define_instance_method('bind') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('bind!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('bind_values')

  klass.define_instance_method('bind_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('build_arel')

  klass.define_instance_method('create_with') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('create_with!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('create_with_value')

  klass.define_instance_method('create_with_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('distinct') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('distinct!') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('distinct_value')

  klass.define_instance_method('distinct_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('eager_load') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('eager_load!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('eager_load_values')

  klass.define_instance_method('eager_load_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('extending') do |method|
    method.define_rest_argument('modules')
    method.define_block_argument('block')
  end

  klass.define_instance_method('extending!') do |method|
    method.define_rest_argument('modules')
    method.define_block_argument('block')
  end

  klass.define_instance_method('extending_values')

  klass.define_instance_method('extending_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('extensions')

  klass.define_instance_method('from') do |method|
    method.define_argument('value')
    method.define_optional_argument('subquery_name')
  end

  klass.define_instance_method('from!') do |method|
    method.define_argument('value')
    method.define_optional_argument('subquery_name')
  end

  klass.define_instance_method('from_value')

  klass.define_instance_method('from_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('group!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('group_values')

  klass.define_instance_method('group_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('having') do |method|
    method.define_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('having!') do |method|
    method.define_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('having_values')

  klass.define_instance_method('having_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('includes') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('includes!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('includes_values')

  klass.define_instance_method('includes_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('joins') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('joins!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('joins_values')

  klass.define_instance_method('joins_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('limit') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('limit!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('limit_value')

  klass.define_instance_method('limit_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('lock') do |method|
    method.define_optional_argument('locks')
  end

  klass.define_instance_method('lock!') do |method|
    method.define_optional_argument('locks')
  end

  klass.define_instance_method('lock_value')

  klass.define_instance_method('lock_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('none')

  klass.define_instance_method('none!')

  klass.define_instance_method('offset') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('offset!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('offset_value')

  klass.define_instance_method('offset_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('order!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('order_values')

  klass.define_instance_method('order_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('preload') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('preload!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('preload_values')

  klass.define_instance_method('preload_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('readonly') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('readonly!') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('readonly_value')

  klass.define_instance_method('readonly_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('references') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('references!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('references_values')

  klass.define_instance_method('references_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('reorder') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('reorder!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('reordering_value')

  klass.define_instance_method('reordering_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('reverse_order')

  klass.define_instance_method('reverse_order!')

  klass.define_instance_method('reverse_order_value')

  klass.define_instance_method('reverse_order_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('select') do |method|
    method.define_rest_argument('fields')
  end

  klass.define_instance_method('select!') do |method|
    method.define_rest_argument('fields')
  end

  klass.define_instance_method('select_values')

  klass.define_instance_method('select_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('uniq') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('uniq!') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('uniq_value')

  klass.define_instance_method('uniq_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('unscope') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('unscope!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('where') do |method|
    method.define_optional_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('where!') do |method|
    method.define_optional_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('where_values')

  klass.define_instance_method('where_values=') do |method|
    method.define_argument('values')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Querying') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('average') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('calculate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('count_by_sql') do |method|
    method.define_argument('sql')
  end

  klass.define_instance_method('create_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('destroy_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('distinct') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('eager_load') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('except') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('exists?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_by_sql') do |method|
    method.define_argument('sql')
    method.define_optional_argument('binds')
  end

  klass.define_instance_method('find_each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_in_batches') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_or_create_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_or_create_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_or_initialize_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first_or_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first_or_create!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first_or_initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('from') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('having') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ids') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('includes') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('joins') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('last') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('last!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('limit') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('lock') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('many?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('maximum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('minimum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('none') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('offset') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pluck') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('preload') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('readonly') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('references') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reorder') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('take') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('take!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('uniq') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unscope') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('update_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('where') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Railtie') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ReadOnlyAssociation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ReadOnlyRecord') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ReadonlyAttributes') do |klass|
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

  klass.define_instance_method('_attr_readonly')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::RecordNotDestroyed') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::RecordNotFound') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::RecordNotSaved') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::RecordNotUnique') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::WrappedDatabaseException'))

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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Reflection') do |klass|
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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Relation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('all') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('all?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('apply_finder_options') do |method|
    method.define_argument('options')
    method.define_optional_argument('silence_deprecation')
  end

  klass.define_instance_method('apply_join_dependency') do |method|
    method.define_argument('relation')
    method.define_argument('join_dependency')
  end

  klass.define_instance_method('arel')

  klass.define_instance_method('as_json') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('average') do |method|
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('bind') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('bind!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('bind_values')

  klass.define_instance_method('bind_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('blank?')

  klass.define_instance_method('build') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('build_arel')

  klass.define_instance_method('calculate') do |method|
    method.define_argument('operation')
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('collect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collecting_queries_for_explain')

  klass.define_instance_method('columns_hash') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('connection') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('construct_join_dependency_for_association_find')

  klass.define_instance_method('construct_limited_ids_condition') do |method|
    method.define_argument('relation')
  end

  klass.define_instance_method('construct_relation_for_association_calculations')

  klass.define_instance_method('construct_relation_for_association_find') do |method|
    method.define_argument('join_dependency')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('create!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('create_with') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('create_with!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('create_with_value')

  klass.define_instance_method('create_with_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('default_scoped')

  klass.define_instance_method('default_scoped=')

  klass.define_instance_method('default_scoped?')

  klass.define_instance_method('delete') do |method|
    method.define_argument('id_or_array')
  end

  klass.define_instance_method('delete_all') do |method|
    method.define_optional_argument('conditions')
  end

  klass.define_instance_method('destroy') do |method|
    method.define_argument('id')
  end

  klass.define_instance_method('destroy_all') do |method|
    method.define_optional_argument('conditions')
  end

  klass.define_instance_method('distinct') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('distinct!') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('distinct_value')

  klass.define_instance_method('distinct_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('eager_load') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('eager_load!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('eager_load_values')

  klass.define_instance_method('eager_load_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('eager_loading?')

  klass.define_instance_method('empty?')

  klass.define_instance_method('except') do |method|
    method.define_rest_argument('skips')
  end

  klass.define_instance_method('exec_explain') do |method|
    method.define_argument('queries')
  end

  klass.define_instance_method('exists?') do |method|
    method.define_optional_argument('conditions')
  end

  klass.define_instance_method('explain')

  klass.define_instance_method('extending') do |method|
    method.define_rest_argument('modules')
    method.define_block_argument('block')
  end

  klass.define_instance_method('extending!') do |method|
    method.define_rest_argument('modules')
    method.define_block_argument('block')
  end

  klass.define_instance_method('extending_values')

  klass.define_instance_method('extending_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('extensions')

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_by') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_by!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('find_each') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('find_first')

  klass.define_instance_method('find_in_batches') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_last')

  klass.define_instance_method('find_one') do |method|
    method.define_argument('id')
  end

  klass.define_instance_method('find_or_create_by') do |method|
    method.define_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_or_create_by!') do |method|
    method.define_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_or_initialize_by') do |method|
    method.define_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_some') do |method|
    method.define_argument('ids')
  end

  klass.define_instance_method('find_take')

  klass.define_instance_method('find_with_associations')

  klass.define_instance_method('find_with_ids') do |method|
    method.define_rest_argument('ids')
  end

  klass.define_instance_method('first') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('first!')

  klass.define_instance_method('first_or_create') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first_or_create!') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first_or_initialize') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_instance_method('from') do |method|
    method.define_argument('value')
    method.define_optional_argument('subquery_name')
  end

  klass.define_instance_method('from!') do |method|
    method.define_argument('value')
    method.define_optional_argument('subquery_name')
  end

  klass.define_instance_method('from_value')

  klass.define_instance_method('from_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('group') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('group!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('group_values')

  klass.define_instance_method('group_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('having') do |method|
    method.define_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('having!') do |method|
    method.define_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('having_values')

  klass.define_instance_method('having_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('ids')

  klass.define_instance_method('include?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('includes') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('includes!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('includes_values')

  klass.define_instance_method('includes_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('joined_includes_values')

  klass.define_instance_method('joins') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('joins!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('joins_values')

  klass.define_instance_method('joins_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('klass')

  klass.define_instance_method('last') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('last!')

  klass.define_instance_method('length') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('limit') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('limit!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('limit_value')

  klass.define_instance_method('limit_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('load')

  klass.define_instance_method('loaded')

  klass.define_instance_method('loaded?')

  klass.define_instance_method('lock') do |method|
    method.define_optional_argument('locks')
  end

  klass.define_instance_method('lock!') do |method|
    method.define_optional_argument('locks')
  end

  klass.define_instance_method('lock_value')

  klass.define_instance_method('lock_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('many?')

  klass.define_instance_method('map') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('maximum') do |method|
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('minimum') do |method|
    method.define_argument('column_name')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('model')

  klass.define_instance_method('new') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('none')

  klass.define_instance_method('none!')

  klass.define_instance_method('offset') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('offset!') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('offset_value')

  klass.define_instance_method('offset_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('only') do |method|
    method.define_rest_argument('onlies')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('order!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('order_values')

  klass.define_instance_method('order_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('pluck') do |method|
    method.define_rest_argument('column_names')
  end

  klass.define_instance_method('preload') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('preload!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('preload_values')

  klass.define_instance_method('preload_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('q')
  end

  klass.define_instance_method('primary_key') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('proxy_association')

  klass.define_instance_method('proxy_association=')

  klass.define_instance_method('quoted_primary_key') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('quoted_table_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('raise_record_not_found_exception!') do |method|
    method.define_argument('ids')
    method.define_argument('result_size')
    method.define_argument('expected_size')
  end

  klass.define_instance_method('readonly') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('readonly!') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('readonly_value')

  klass.define_instance_method('readonly_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('references') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('references!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('references_values')

  klass.define_instance_method('references_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('reload')

  klass.define_instance_method('reorder') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('reorder!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('reordering_value')

  klass.define_instance_method('reordering_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('reset')

  klass.define_instance_method('reverse_order')

  klass.define_instance_method('reverse_order!')

  klass.define_instance_method('reverse_order_value')

  klass.define_instance_method('reverse_order_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('scope_for_create')

  klass.define_instance_method('scoping')

  klass.define_instance_method('select') do |method|
    method.define_rest_argument('fields')
  end

  klass.define_instance_method('select!') do |method|
    method.define_rest_argument('fields')
  end

  klass.define_instance_method('select_values')

  klass.define_instance_method('select_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('spawn')

  klass.define_instance_method('sum') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('table')

  klass.define_instance_method('table_name') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('take') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('take!')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_sql')

  klass.define_instance_method('to_xml') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('uniq') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('uniq!') do |method|
    method.define_optional_argument('value')
  end

  klass.define_instance_method('uniq_value')

  klass.define_instance_method('uniq_value=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('unscope') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('unscope!') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('id')
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_all') do |method|
    method.define_argument('updates')
    method.define_optional_argument('conditions')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('update_all_with_deprecated_options') do |method|
    method.define_argument('updates')
    method.define_optional_argument('conditions')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('update_all_without_deprecated_options') do |method|
    method.define_argument('updates')
  end

  klass.define_instance_method('using_limitable_reflections?') do |method|
    method.define_argument('reflections')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('where') do |method|
    method.define_optional_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('where!') do |method|
    method.define_optional_argument('opts')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('where_values')

  klass.define_instance_method('where_values=') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('where_values_hash')

  klass.define_instance_method('with_default_scope')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Result') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect!')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('column_types')

  klass.define_instance_method('columns')

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

  klass.define_instance_method('empty?')

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

  klass.define_instance_method('last')

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('map!')

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

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('rows')

  klass.define_instance_method('select')

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

  klass.define_instance_method('to_hash')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Rollback') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::RuntimeRegistry') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('connection_handler')

  klass.define_instance_method('connection_handler=')

  klass.define_instance_method('connection_id')

  klass.define_instance_method('connection_id=')

  klass.define_instance_method('sql_runtime')

  klass.define_instance_method('sql_runtime=')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Sanitization') do |klass|
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

  klass.define_instance_method('quoted_id')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Schema') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::Migration'))

  klass.define_method('check_pending!')

  klass.define_method('define') do |method|
    method.define_optional_argument('info')
    method.define_block_argument('block')
  end

  klass.define_method('delegate=')

  klass.define_method('disable_ddl_transaction')

  klass.define_method('disable_ddl_transaction!')

  klass.define_method('disable_ddl_transaction=')

  klass.define_method('method_missing') do |method|
    method.define_argument('name')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('migrate') do |method|
    method.define_argument('direction')
  end

  klass.define_method('verbose')

  klass.define_method('verbose=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('announce') do |method|
    method.define_argument('message')
  end

  klass.define_instance_method('connection')

  klass.define_instance_method('copy') do |method|
    method.define_argument('destination')
    method.define_argument('sources')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('define') do |method|
    method.define_argument('info')
    method.define_block_argument('block')
  end

  klass.define_instance_method('disable_ddl_transaction')

  klass.define_instance_method('down')

  klass.define_instance_method('exec_migration') do |method|
    method.define_argument('conn')
    method.define_argument('direction')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('arguments')
    method.define_block_argument('block')
  end

  klass.define_instance_method('migrate') do |method|
    method.define_argument('direction')
  end

  klass.define_instance_method('migrations_paths')

  klass.define_instance_method('name')

  klass.define_instance_method('name=')

  klass.define_instance_method('next_migration_number') do |method|
    method.define_argument('number')
  end

  klass.define_instance_method('reversible')

  klass.define_instance_method('revert') do |method|
    method.define_rest_argument('migration_classes')
  end

  klass.define_instance_method('reverting?')

  klass.define_instance_method('run') do |method|
    method.define_rest_argument('migration_classes')
  end

  klass.define_instance_method('say') do |method|
    method.define_argument('message')
    method.define_optional_argument('subitem')
  end

  klass.define_instance_method('say_with_time') do |method|
    method.define_argument('message')
  end

  klass.define_instance_method('suppress_messages')

  klass.define_instance_method('up')

  klass.define_instance_method('verbose')

  klass.define_instance_method('verbose=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('version')

  klass.define_instance_method('version=')

  klass.define_instance_method('write') do |method|
    method.define_optional_argument('text')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::SchemaDumper') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('dump') do |method|
    method.define_optional_argument('connection')
    method.define_optional_argument('stream')
  end

  klass.define_method('ignore_tables')

  klass.define_method('ignore_tables=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('dump') do |method|
    method.define_argument('stream')
  end

  klass.define_instance_method('ignore_tables')

  klass.define_instance_method('ignore_tables=') do |method|
    method.define_argument('obj')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::SchemaMigration') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::Base'))

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

  klass.define_method('_attr_readonly')

  klass.define_method('_attr_readonly=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_attr_readonly?')

  klass.define_method('_commit_callbacks')

  klass.define_method('_commit_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_commit_callbacks?')

  klass.define_method('_create_callbacks')

  klass.define_method('_create_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_create_callbacks?')

  klass.define_method('_destroy_callbacks')

  klass.define_method('_destroy_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_destroy_callbacks?')

  klass.define_method('_find_callbacks')

  klass.define_method('_find_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_find_callbacks?')

  klass.define_method('_initialize_callbacks')

  klass.define_method('_initialize_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_initialize_callbacks?')

  klass.define_method('_parse_validates_options') do |method|
    method.define_argument('options')
  end

  klass.define_method('_rollback_callbacks')

  klass.define_method('_rollback_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_rollback_callbacks?')

  klass.define_method('_save_callbacks')

  klass.define_method('_save_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_save_callbacks?')

  klass.define_method('_store_accessors_module')

  klass.define_method('_to_partial_path')

  klass.define_method('_touch_callbacks')

  klass.define_method('_touch_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_touch_callbacks?')

  klass.define_method('_update_callbacks')

  klass.define_method('_update_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_update_callbacks?')

  klass.define_method('_validate_callbacks')

  klass.define_method('_validate_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_validate_callbacks?')

  klass.define_method('_validates_default_keys')

  klass.define_method('_validation_callbacks')

  klass.define_method('_validation_callbacks=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_validation_callbacks?')

  klass.define_method('_validators')

  klass.define_method('_validators=') do |method|
    method.define_argument('val')
  end

  klass.define_method('_validators?')

  klass.define_method('abstract_class')

  klass.define_method('abstract_class=')

  klass.define_method('abstract_class?')

  klass.define_method('accepts_nested_attributes_for') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('after_commit') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_rollback') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_touch') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('after_validation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('all') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('any?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('arel_engine')

  klass.define_method('arel_table')

  klass.define_method('around_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('around_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('around_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('around_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('attr_accessible') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('attr_protected') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('attr_readonly') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('attribute_aliases')

  klass.define_method('attribute_aliases=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_aliases?')

  klass.define_method('attribute_method?') do |method|
    method.define_argument('attribute')
  end

  klass.define_method('attribute_method_affix') do |method|
    method.define_rest_argument('affixes')
  end

  klass.define_method('attribute_method_matchers')

  klass.define_method('attribute_method_matchers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_method_matchers?')

  klass.define_method('attribute_method_prefix') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_method('attribute_method_suffix') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_method('attribute_methods_generated?')

  klass.define_method('attribute_names')

  klass.define_method('attribute_types_cached_by_default')

  klass.define_method('attribute_types_cached_by_default=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_types_cached_by_default?')

  klass.define_method('average') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('base_class')

  klass.define_method('before_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_remove_const')

  klass.define_method('before_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_validation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('belongs_to') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
  end

  klass.define_method('benchmark') do |method|
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_method('build_default_scope')

  klass.define_method('cache') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('cache_attribute?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('cache_attributes') do |method|
    method.define_rest_argument('attribute_names')
  end

  klass.define_method('cache_timestamp_format')

  klass.define_method('cache_timestamp_format=') do |method|
    method.define_argument('val')
  end

  klass.define_method('cache_timestamp_format?')

  klass.define_method('cached_attributes')

  klass.define_method('calculate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_active_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_all_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_cache!')

  klass.define_method('clear_reloadable_connections!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('clear_validators!')

  klass.define_method('collecting_queries_for_explain')

  klass.define_method('column_defaults')

  klass.define_method('column_methods_hash')

  klass.define_method('column_names')

  klass.define_method('column_types')

  klass.define_method('columns')

  klass.define_method('columns_hash')

  klass.define_method('composed_of') do |method|
    method.define_argument('part_id')
    method.define_optional_argument('options')
  end

  klass.define_method('compute_type') do |method|
    method.define_argument('type_name')
  end

  klass.define_method('configurations')

  klass.define_method('configurations=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('connected?')

  klass.define_method('connection')

  klass.define_method('connection_config')

  klass.define_method('connection_handler')

  klass.define_method('connection_handler=') do |method|
    method.define_argument('handler')
  end

  klass.define_method('connection_id')

  klass.define_method('connection_id=') do |method|
    method.define_argument('connection_id')
  end

  klass.define_method('connection_pool')

  klass.define_method('content_columns')

  klass.define_method('count') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('count_by_sql') do |method|
    method.define_argument('sql')
  end

  klass.define_method('create') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_method('create!') do |method|
    method.define_optional_argument('attributes')
    method.define_block_argument('block')
  end

  klass.define_method('create_reflection') do |method|
    method.define_argument('macro')
    method.define_argument('name')
    method.define_argument('scope')
    method.define_argument('options')
    method.define_argument('active_record')
  end

  klass.define_method('create_table') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('create_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('current_scope')

  klass.define_method('current_scope=') do |method|
    method.define_argument('scope')
  end

  klass.define_method('dangerous_attribute_method?') do |method|
    method.define_argument('method_name')
  end

  klass.define_method('decorate_columns') do |method|
    method.define_argument('columns_hash')
  end

  klass.define_method('decrement_counter') do |method|
    method.define_argument('counter_name')
    method.define_argument('id')
  end

  klass.define_method('default_connection_handler')

  klass.define_method('default_connection_handler=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_connection_handler?')

  klass.define_method('default_scope') do |method|
    method.define_optional_argument('scope')
    method.define_block_argument('block')
  end

  klass.define_method('default_scopes')

  klass.define_method('default_scopes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_scopes?')

  klass.define_method('default_timezone')

  klass.define_method('default_timezone=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('define_attribute_method') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('define_attribute_methods')

  klass.define_method('define_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('define_method_attribute') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('define_method_attribute=') do |method|
    method.define_argument('attr_name')
  end

  klass.define_method('define_model_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end

  klass.define_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('delete_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('descends_from_active_record?')

  klass.define_method('destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('destroy_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('direct_descendants')

  klass.define_method('disable_implicit_join_references')

  klass.define_method('disable_implicit_join_references=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('distinct') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('drop_table')

  klass.define_method('eager_load') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('establish_connection') do |method|
    method.define_optional_argument('spec')
  end

  klass.define_method('evaluate_default_scope')

  klass.define_method('except') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('exec_explain') do |method|
    method.define_argument('queries')
  end

  klass.define_method('exists?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('expand_hash_conditions_for_aggregates') do |method|
    method.define_argument('attrs')
  end

  klass.define_method('find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_by_sql') do |method|
    method.define_argument('sql')
    method.define_optional_argument('binds')
  end

  klass.define_method('find_each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_in_batches') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_or_create_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_or_create_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('find_or_initialize_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('finder_needs_type_condition?')

  klass.define_method('first') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first_or_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first_or_create!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('first_or_initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('from') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('full_table_name_prefix')

  klass.define_method('generated_attribute_methods')

  klass.define_method('generated_feature_methods')

  klass.define_method('get_primary_key') do |method|
    method.define_argument('base_name')
  end

  klass.define_method('group') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('has_and_belongs_to_many') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
    method.define_block_argument('extension')
  end

  klass.define_method('has_many') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
    method.define_block_argument('extension')
  end

  klass.define_method('has_one') do |method|
    method.define_argument('name')
    method.define_optional_argument('scope')
    method.define_optional_argument('options')
  end

  klass.define_method('has_secure_password') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('having') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('human_attribute_name') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('options')
  end

  klass.define_method('i18n_scope')

  klass.define_method('ids') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('ignore_default_scope=') do |method|
    method.define_argument('ignore')
  end

  klass.define_method('ignore_default_scope?')

  klass.define_method('include_root_in_json')

  klass.define_method('include_root_in_json=') do |method|
    method.define_argument('val')
  end

  klass.define_method('include_root_in_json?')

  klass.define_method('includes') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('increment_counter') do |method|
    method.define_argument('counter_name')
    method.define_argument('id')
  end

  klass.define_method('index_name')

  klass.define_method('inheritance_column')

  klass.define_method('inheritance_column=') do |method|
    method.define_argument('value')
  end

  klass.define_method('inherited') do |method|
    method.define_argument('child_class')
  end

  klass.define_method('initialize_attributes') do |method|
    method.define_argument('attributes')
    method.define_optional_argument('options')
  end

  klass.define_method('initialize_generated_modules')

  klass.define_method('instance_method_already_implemented?') do |method|
    method.define_argument('method_name')
  end

  klass.define_method('instantiate') do |method|
    method.define_argument('record')
    method.define_optional_argument('column_types')
  end

  klass.define_method('joins') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('last') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('last!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('limit') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('lock') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('lock_optimistically')

  klass.define_method('lock_optimistically=') do |method|
    method.define_argument('val')
  end

  klass.define_method('lock_optimistically?')

  klass.define_method('locking_column')

  klass.define_method('locking_column=') do |method|
    method.define_argument('value')
  end

  klass.define_method('locking_enabled?')

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('lookup_ancestors')

  klass.define_method('many?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('maximum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('method_defined_within?') do |method|
    method.define_argument('name')
    method.define_argument('klass')
    method.define_optional_argument('sup')
  end

  klass.define_method('minimum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('model_name')

  klass.define_method('nested_attributes_options')

  klass.define_method('nested_attributes_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('nested_attributes_options?')

  klass.define_method('none') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('offset') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('order') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_with_deprecation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_with_deprecation=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_with_deprecation?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('partial_updates_without_deprecation')

  klass.define_method('partial_updates_without_deprecation=') do |method|
    method.define_argument('v')
  end

  klass.define_method('partial_updates_without_deprecation?')

  klass.define_method('partial_writes')

  klass.define_method('partial_writes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('partial_writes?')

  klass.define_method('pluck') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('pluralize_table_names')

  klass.define_method('pluralize_table_names=') do |method|
    method.define_argument('val')
  end

  klass.define_method('pluralize_table_names?')

  klass.define_method('preload') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('primary_key')

  klass.define_method('primary_key=') do |method|
    method.define_argument('value')
  end

  klass.define_method('primary_key_prefix_type')

  klass.define_method('primary_key_prefix_type=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('quote_bound_value') do |method|
    method.define_argument('value')
    method.define_optional_argument('c')
  end

  klass.define_method('quote_value') do |method|
    method.define_argument('value')
    method.define_optional_argument('column')
  end

  klass.define_method('quoted_locking_column')

  klass.define_method('quoted_primary_key')

  klass.define_method('quoted_table_name')

  klass.define_method('raise_if_bind_arity_mismatch') do |method|
    method.define_argument('statement')
    method.define_argument('expected')
    method.define_argument('provided')
  end

  klass.define_method('readonly') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('readonly_attributes')

  klass.define_method('record_timestamps')

  klass.define_method('record_timestamps=') do |method|
    method.define_argument('val')
  end

  klass.define_method('record_timestamps?')

  klass.define_method('references') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('reflect_on_aggregation') do |method|
    method.define_argument('aggregation')
  end

  klass.define_method('reflect_on_all_aggregations')

  klass.define_method('reflect_on_all_associations') do |method|
    method.define_optional_argument('macro')
  end

  klass.define_method('reflect_on_all_autosave_associations')

  klass.define_method('reflect_on_association') do |method|
    method.define_argument('association')
  end

  klass.define_method('reflections')

  klass.define_method('reflections=') do |method|
    method.define_argument('val')
  end

  klass.define_method('reflections?')

  klass.define_method('remove_connection') do |method|
    method.define_optional_argument('klass')
  end

  klass.define_method('reorder') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('replace_bind_variables') do |method|
    method.define_argument('statement')
    method.define_argument('values')
  end

  klass.define_method('replace_named_bind_variables') do |method|
    method.define_argument('statement')
    method.define_argument('bind_vars')
  end

  klass.define_method('reset_callbacks') do |method|
    method.define_argument('symbol')
  end

  klass.define_method('reset_column_information')

  klass.define_method('reset_counters') do |method|
    method.define_argument('id')
    method.define_rest_argument('counters')
  end

  klass.define_method('reset_locking_column')

  klass.define_method('reset_primary_key')

  klass.define_method('reset_sequence_name')

  klass.define_method('reset_table_name')

  klass.define_method('retrieve_connection')

  klass.define_method('sanitize') do |method|
    method.define_argument('object')
  end

  klass.define_method('sanitize_conditions') do |method|
    method.define_argument('condition')
    method.define_optional_argument('table_name')
  end

  klass.define_method('sanitize_sql') do |method|
    method.define_argument('condition')
    method.define_optional_argument('table_name')
  end

  klass.define_method('sanitize_sql_array') do |method|
    method.define_argument('ary')
  end

  klass.define_method('sanitize_sql_for_assignment') do |method|
    method.define_argument('assignments')
    method.define_optional_argument('default_table_name')
  end

  klass.define_method('sanitize_sql_for_conditions') do |method|
    method.define_argument('condition')
    method.define_optional_argument('table_name')
  end

  klass.define_method('sanitize_sql_hash') do |method|
    method.define_argument('attrs')
    method.define_optional_argument('default_table_name')
  end

  klass.define_method('sanitize_sql_hash_for_assignment') do |method|
    method.define_argument('attrs')
    method.define_argument('table')
  end

  klass.define_method('sanitize_sql_hash_for_conditions') do |method|
    method.define_argument('attrs')
    method.define_optional_argument('default_table_name')
  end

  klass.define_method('schema_format')

  klass.define_method('schema_format=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('scope') do |method|
    method.define_argument('name')
    method.define_optional_argument('body')
    method.define_block_argument('block')
  end

  klass.define_method('scope_attributes')

  klass.define_method('scope_attributes?')

  klass.define_method('scoped') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('sequence_name')

  klass.define_method('sequence_name=') do |method|
    method.define_argument('value')
  end

  klass.define_method('serialize') do |method|
    method.define_argument('attr_name')
    method.define_optional_argument('class_name')
  end

  klass.define_method('serialized_attributes')

  klass.define_method('serialized_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('serialized_attributes?')

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

  klass.define_method('skip_time_zone_conversion_for_attributes')

  klass.define_method('skip_time_zone_conversion_for_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('skip_time_zone_conversion_for_attributes?')

  klass.define_method('sti_name')

  klass.define_method('store') do |method|
    method.define_argument('store_attribute')
    method.define_optional_argument('options')
  end

  klass.define_method('store_accessor') do |method|
    method.define_argument('store_attribute')
    method.define_rest_argument('keys')
  end

  klass.define_method('store_full_sti_class')

  klass.define_method('store_full_sti_class=') do |method|
    method.define_argument('val')
  end

  klass.define_method('store_full_sti_class?')

  klass.define_method('stored_attributes')

  klass.define_method('stored_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('stored_attributes?')

  klass.define_method('sum') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('symbolized_base_class')

  klass.define_method('symbolized_sti_name')

  klass.define_method('table_exists?')

  klass.define_method('table_name')

  klass.define_method('table_name=') do |method|
    method.define_argument('value')
  end

  klass.define_method('table_name_prefix')

  klass.define_method('table_name_prefix=') do |method|
    method.define_argument('val')
  end

  klass.define_method('table_name_prefix?')

  klass.define_method('table_name_suffix')

  klass.define_method('table_name_suffix=') do |method|
    method.define_argument('val')
  end

  klass.define_method('table_name_suffix?')

  klass.define_method('take') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('take!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('time_zone_aware_attributes')

  klass.define_method('time_zone_aware_attributes=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('timestamped_migrations')

  klass.define_method('timestamped_migrations=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('transaction') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('uncached') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('undefine_attribute_methods')

  klass.define_method('uniq') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('unscope') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('unscoped')

  klass.define_method('update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('update_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('update_counters') do |method|
    method.define_argument('id')
    method.define_argument('counters')
  end

  klass.define_method('validate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('validates') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('validates!') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('validates_absence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_acceptance_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_associated') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_confirmation_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_each') do |method|
    method.define_rest_argument('attr_names')
    method.define_block_argument('block')
  end

  klass.define_method('validates_exclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_format_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_inclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_length_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_numericality_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_presence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_size_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_uniqueness_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_method('validates_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('validators')

  klass.define_method('validators_on') do |method|
    method.define_rest_argument('attributes')
  end

  klass.define_method('where') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('with_exclusive_scope') do |method|
    method.define_optional_argument('method_scoping')
    method.define_block_argument('block')
  end

  klass.define_method('with_scope') do |method|
    method.define_optional_argument('scope')
    method.define_optional_argument('action')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('attr_name')
    method.define_argument('value')
  end

  klass.define_instance_method('_attr_readonly')

  klass.define_instance_method('_commit_callbacks')

  klass.define_instance_method('_commit_callbacks=')

  klass.define_instance_method('_commit_callbacks?')

  klass.define_instance_method('_create_callbacks')

  klass.define_instance_method('_create_callbacks=')

  klass.define_instance_method('_create_callbacks?')

  klass.define_instance_method('_destroy')

  klass.define_instance_method('_destroy_callbacks')

  klass.define_instance_method('_destroy_callbacks=')

  klass.define_instance_method('_destroy_callbacks?')

  klass.define_instance_method('_find_callbacks')

  klass.define_instance_method('_find_callbacks=')

  klass.define_instance_method('_find_callbacks?')

  klass.define_instance_method('_initialize_callbacks')

  klass.define_instance_method('_initialize_callbacks=')

  klass.define_instance_method('_initialize_callbacks?')

  klass.define_instance_method('_rollback_callbacks')

  klass.define_instance_method('_rollback_callbacks=')

  klass.define_instance_method('_rollback_callbacks?')

  klass.define_instance_method('_save_callbacks')

  klass.define_instance_method('_save_callbacks=')

  klass.define_instance_method('_save_callbacks?')

  klass.define_instance_method('_touch_callbacks')

  klass.define_instance_method('_touch_callbacks=')

  klass.define_instance_method('_touch_callbacks?')

  klass.define_instance_method('_update_callbacks')

  klass.define_instance_method('_update_callbacks=')

  klass.define_instance_method('_update_callbacks?')

  klass.define_instance_method('_validate_callbacks')

  klass.define_instance_method('_validate_callbacks=')

  klass.define_instance_method('_validate_callbacks?')

  klass.define_instance_method('_validation_callbacks')

  klass.define_instance_method('_validation_callbacks=')

  klass.define_instance_method('_validation_callbacks?')

  klass.define_instance_method('_validators')

  klass.define_instance_method('_validators=')

  klass.define_instance_method('_validators?')

  klass.define_instance_method('add_to_transaction')

  klass.define_instance_method('arel_attributes_with_values_for_create') do |method|
    method.define_argument('attribute_names')
  end

  klass.define_instance_method('arel_attributes_with_values_for_update') do |method|
    method.define_argument('attribute_names')
  end

  klass.define_instance_method('assign_attributes') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('association') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('association_cache')

  klass.define_instance_method('attribute_aliases')

  klass.define_instance_method('attribute_aliases?')

  klass.define_instance_method('attribute_for_inspect') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_method?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_method_matchers')

  klass.define_instance_method('attribute_method_matchers?')

  klass.define_instance_method('attribute_missing') do |method|
    method.define_argument('match')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('attribute_names')

  klass.define_instance_method('attribute_present?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('attribute_types_cached_by_default')

  klass.define_instance_method('attribute_types_cached_by_default?')

  klass.define_instance_method('attributes')

  klass.define_instance_method('attributes=') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('attributes_before_type_cast')

  klass.define_instance_method('becomes') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('becomes!') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('cache_key')

  klass.define_instance_method('cache_timestamp_format')

  klass.define_instance_method('cache_timestamp_format?')

  klass.define_instance_method('changed')

  klass.define_instance_method('changed?')

  klass.define_instance_method('changed_attributes')

  klass.define_instance_method('changed_for_autosave?')

  klass.define_instance_method('changes')

  klass.define_instance_method('clear_aggregation_cache')

  klass.define_instance_method('clear_association_cache')

  klass.define_instance_method('clear_transaction_record_state')

  klass.define_instance_method('clone_attribute_value') do |method|
    method.define_argument('reader_method')
    method.define_argument('attribute_name')
  end

  klass.define_instance_method('clone_attributes') do |method|
    method.define_optional_argument('reader_method')
    method.define_optional_argument('attributes')
  end

  klass.define_instance_method('column_for_attribute') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('committed!')

  klass.define_instance_method('configurations')

  klass.define_instance_method('connection')

  klass.define_instance_method('connection_handler')

  klass.define_instance_method('decrement') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('decrement!') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('default_connection_handler')

  klass.define_instance_method('default_connection_handler?')

  klass.define_instance_method('default_scopes')

  klass.define_instance_method('default_timezone')

  klass.define_instance_method('delete')

  klass.define_instance_method('destroy')

  klass.define_instance_method('destroy!')

  klass.define_instance_method('destroyed?')

  klass.define_instance_method('destroyed_by_association')

  klass.define_instance_method('destroyed_by_association=') do |method|
    method.define_argument('reflection')
  end

  klass.define_instance_method('disable_implicit_join_references')

  klass.define_instance_method('encode_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('errors')

  klass.define_instance_method('from_json') do |method|
    method.define_argument('json')
    method.define_optional_argument('include_root')
  end

  klass.define_instance_method('from_xml') do |method|
    method.define_argument('xml')
  end

  klass.define_instance_method('has_attribute?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('has_transactional_callbacks?')

  klass.define_instance_method('id')

  klass.define_instance_method('id=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('id?')

  klass.define_instance_method('id_before_type_cast')

  klass.define_instance_method('include_root_in_json')

  klass.define_instance_method('include_root_in_json=')

  klass.define_instance_method('include_root_in_json?')

  klass.define_instance_method('increment') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('increment!') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('by')
  end

  klass.define_instance_method('init_with') do |method|
    method.define_argument('coder')
  end

  klass.define_instance_method('invalid?') do |method|
    method.define_optional_argument('context')
  end

  klass.define_instance_method('lock!') do |method|
    method.define_optional_argument('lock')
  end

  klass.define_instance_method('lock_optimistically')

  klass.define_instance_method('lock_optimistically?')

  klass.define_instance_method('locking_enabled?')

  klass.define_instance_method('logger')

  klass.define_instance_method('mark_for_destruction')

  klass.define_instance_method('marked_for_destruction?')

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('nested_attributes_options')

  klass.define_instance_method('nested_attributes_options?')

  klass.define_instance_method('new_record?')

  klass.define_instance_method('partial_writes')

  klass.define_instance_method('partial_writes?')

  klass.define_instance_method('perform_validations') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('persisted?')

  klass.define_instance_method('pluralize_table_names')

  klass.define_instance_method('pluralize_table_names?')

  klass.define_instance_method('populate_with_current_scope_attributes')

  klass.define_instance_method('previous_changes')

  klass.define_instance_method('primary_key_prefix_type')

  klass.define_instance_method('query_attribute') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('quoted_id')

  klass.define_instance_method('raw_write_attribute') do |method|
    method.define_argument('attr_name')
    method.define_argument('value')
  end

  klass.define_instance_method('read_attribute') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('read_attribute_before_type_cast') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('read_attribute_for_serialization') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('read_attribute_for_validation') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('read_store_attribute') do |method|
    method.define_argument('store_attribute')
    method.define_argument('key')
  end

  klass.define_instance_method('readonly!')

  klass.define_instance_method('readonly?')

  klass.define_instance_method('record_timestamps')

  klass.define_instance_method('record_timestamps=')

  klass.define_instance_method('record_timestamps?')

  klass.define_instance_method('reflections')

  klass.define_instance_method('reflections=')

  klass.define_instance_method('reflections?')

  klass.define_instance_method('reload') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('remember_transaction_record_state')

  klass.define_instance_method('respond_to_without_attributes?') do |method|
    method.define_argument('meth')
    method.define_optional_argument('include_private')
  end

  klass.define_instance_method('restore_transaction_record_state') do |method|
    method.define_optional_argument('force')
  end

  klass.define_instance_method('rollback_active_record_state!')

  klass.define_instance_method('rolledback!') do |method|
    method.define_optional_argument('force_restore_state')
  end

  klass.define_instance_method('run_callbacks') do |method|
    method.define_argument('kind')
    method.define_block_argument('block')
  end

  klass.define_instance_method('run_validations!')

  klass.define_instance_method('sanitize_for_mass_assignment') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('save') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('save!') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('schema_format')

  klass.define_instance_method('serializable_hash') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('serialized_attributes')

  klass.define_instance_method('set_transaction_state') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('skip_time_zone_conversion_for_attributes')

  klass.define_instance_method('skip_time_zone_conversion_for_attributes?')

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('methods')
  end

  klass.define_instance_method('store_full_sti_class')

  klass.define_instance_method('store_full_sti_class?')

  klass.define_instance_method('table_name_prefix')

  klass.define_instance_method('table_name_prefix?')

  klass.define_instance_method('table_name_suffix')

  klass.define_instance_method('table_name_suffix?')

  klass.define_instance_method('time_zone_aware_attributes')

  klass.define_instance_method('timestamped_migrations')

  klass.define_instance_method('to_key')

  klass.define_instance_method('to_model')

  klass.define_instance_method('to_partial_path')

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('toggle') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('toggle!') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('touch') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('transaction') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('transaction_include_any_action?') do |method|
    method.define_argument('actions')
  end

  klass.define_instance_method('transaction_record_state') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('update') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update!') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_attribute') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('update_attributes') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_attributes!') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_column') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('update_columns') do |method|
    method.define_argument('attributes')
  end

  klass.define_instance_method('valid?') do |method|
    method.define_optional_argument('context')
  end

  klass.define_instance_method('validates_absence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_acceptance_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_confirmation_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_exclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_format_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_inclusion_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_length_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_numericality_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_presence_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_size_of') do |method|
    method.define_rest_argument('attr_names')
  end

  klass.define_instance_method('validates_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('validation_context')

  klass.define_instance_method('validation_context=')

  klass.define_instance_method('version')

  klass.define_instance_method('with_lock') do |method|
    method.define_optional_argument('lock')
  end

  klass.define_instance_method('with_transaction_returning_status')

  klass.define_instance_method('write_store_attribute') do |method|
    method.define_argument('store_attribute')
    method.define_argument('key')
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Scoping') do |klass|
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

  klass.define_instance_method('populate_with_current_scope_attributes')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Serialization') do |klass|
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

  klass.define_instance_method('serializable_hash') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::SerializationTypeMismatch') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::SpawnMethods') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('except') do |method|
    method.define_rest_argument('skips')
  end

  klass.define_instance_method('merge') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('merge!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('only') do |method|
    method.define_rest_argument('onlies')
  end

  klass.define_instance_method('spawn')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::StaleObjectError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('attempted_action')

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

  klass.define_instance_method('record')

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::StatementCache') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('execute')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::StatementInvalid') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Store') do |klass|
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

  klass.define_instance_method('read_store_attribute') do |method|
    method.define_argument('store_attribute')
    method.define_argument('key')
  end

  klass.define_instance_method('write_store_attribute') do |method|
    method.define_argument('store_attribute')
    method.define_argument('key')
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::SubclassNotFound') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Tasks') do |klass|
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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::TestCase') do |klass|
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

  klass.define_instance_method('_setup_callbacks')

  klass.define_instance_method('_setup_callbacks=')

  klass.define_instance_method('_setup_callbacks?')

  klass.define_instance_method('_teardown_callbacks')

  klass.define_instance_method('_teardown_callbacks=')

  klass.define_instance_method('_teardown_callbacks?')

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

  klass.define_instance_method('assert_date_from_db') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
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

  klass.define_instance_method('assert_empty') do |method|
    method.define_argument('obj')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_equal') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
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

  klass.define_instance_method('assert_no_queries') do |method|
    method.define_block_argument('block')
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

  klass.define_instance_method('assert_queries') do |method|
    method.define_optional_argument('num')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('assert_raise') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('assert_raises') do |method|
    method.define_rest_argument('exp')
  end

  klass.define_instance_method('assert_respond_to') do |method|
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_same') do |method|
    method.define_argument('exp')
    method.define_argument('act')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('assert_send') do |method|
    method.define_argument('send_ary')
    method.define_optional_argument('m')
  end

  klass.define_instance_method('assert_silent')

  klass.define_instance_method('assert_sql') do |method|
    method.define_rest_argument('patterns_to_match')
  end

  klass.define_instance_method('assert_throws') do |method|
    method.define_argument('sym')
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('before_setup')

  klass.define_instance_method('before_teardown')

  klass.define_instance_method('capture_io')

  klass.define_instance_method('capture_subprocess_io')

  klass.define_instance_method('diff') do |method|
    method.define_argument('exp')
    method.define_argument('act')
  end

  klass.define_instance_method('exception_details') do |method|
    method.define_argument('e')
    method.define_argument('msg')
  end

  klass.define_instance_method('flunk') do |method|
    method.define_optional_argument('msg')
  end

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

  klass.define_instance_method('method_name')

  klass.define_instance_method('mri?') do |method|
    method.define_optional_argument('platform')
  end

  klass.define_instance_method('mu_pp') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mu_pp_for_diff') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('pass') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_instance_method('passed?')

  klass.define_instance_method('pending') do |method|
    method.define_optional_argument('description')
    method.define_block_argument('block')
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

  klass.define_instance_method('skip') do |method|
    method.define_optional_argument('msg')
    method.define_optional_argument('bt')
  end

  klass.define_instance_method('skipped?')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('tagged_logger=')

  klass.define_instance_method('teardown')

  klass.define_instance_method('windows?') do |method|
    method.define_optional_argument('platform')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::TestFixtures') do |klass|
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

  klass.define_instance_method('after_teardown')

  klass.define_instance_method('before_setup')

  klass.define_instance_method('enlist_fixture_connections')

  klass.define_instance_method('run_in_transaction?')

  klass.define_instance_method('setup_fixtures')

  klass.define_instance_method('teardown_fixtures')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::ThrowResult') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Timestamp') do |klass|
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

  klass.define_instance_method('initialize_dup') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::TransactionIsolationError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Transactions') do |klass|
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

  klass.define_instance_method('add_to_transaction')

  klass.define_instance_method('clear_transaction_record_state')

  klass.define_instance_method('committed!')

  klass.define_instance_method('destroy')

  klass.define_instance_method('remember_transaction_record_state')

  klass.define_instance_method('restore_transaction_record_state') do |method|
    method.define_optional_argument('force')
  end

  klass.define_instance_method('rollback_active_record_state!')

  klass.define_instance_method('rolledback!') do |method|
    method.define_optional_argument('force_restore_state')
  end

  klass.define_instance_method('save') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('save!') do |method|
    method.define_rest_argument('')
  end

  klass.define_instance_method('transaction') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_instance_method('transaction_include_any_action?') do |method|
    method.define_argument('actions')
  end

  klass.define_instance_method('transaction_record_state') do |method|
    method.define_argument('state')
  end

  klass.define_instance_method('with_transaction_returning_status')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Translation') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('human_attribute_name') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('i18n_scope')

  klass.define_instance_method('lookup_ancestors')

  klass.define_instance_method('model_name')
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::UnknownAttributeError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('NoMethodError'))

  klass.define_method('exception') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('__initialize__') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('args')

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
    method.define_rest_argument('arguments')
  end

  klass.define_instance_method('location')

  klass.define_instance_method('locations')

  klass.define_instance_method('locations=')

  klass.define_instance_method('message')

  klass.define_instance_method('missing_name')

  klass.define_instance_method('missing_name?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('name')

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::UnknownMigrationVersionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::UnknownPrimaryKey') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::ActiveRecordError'))

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

  klass.define_instance_method('model')

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

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::Validations') do |klass|
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

  klass.define_instance_method('perform_validations') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('save') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('save!') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('valid?') do |method|
    method.define_optional_argument('context')
  end
end

RubyLint::GlobalScope.definitions.define_constant('ActiveRecord::WrappedDatabaseException') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ActiveRecord::StatementInvalid'))

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
end

