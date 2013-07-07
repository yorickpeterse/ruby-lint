# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-07 17:54:58 +0200
# Platform: rbx 2.0.0.rc1

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('eager_load!')

  klass.define_method('version')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ActiveRecordError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('StandardError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AdapterNotFound') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AdapterNotSpecified') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Aggregations') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('clear_aggregation_cache')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AssociationTypeMismatch') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Associations') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('association') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('association_cache')

  klass.define_instance_method('clear_association_cache')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AttributeAssignment') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('assign_attributes') do |method|
    method.define_argument('new_attributes')
  end

  klass.define_instance_method('attributes=') do |method|
    method.define_argument('new_attributes')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AttributeAssignmentError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_instance_method('attribute')

  klass.define_instance_method('exception')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AttributeMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::AutosaveAssociation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Base') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

  klass.define_method('attribute_aliases')

  klass.define_method('attribute_aliases=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_aliases?')

  klass.define_method('attribute_method_matchers')

  klass.define_method('attribute_method_matchers=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_method_matchers?')

  klass.define_method('attribute_types_cached_by_default')

  klass.define_method('attribute_types_cached_by_default=') do |method|
    method.define_argument('val')
  end

  klass.define_method('attribute_types_cached_by_default?')

  klass.define_method('before_create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_destroy') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_save') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('before_update') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('cache_timestamp_format')

  klass.define_method('cache_timestamp_format=') do |method|
    method.define_argument('val')
  end

  klass.define_method('cache_timestamp_format?')

  klass.define_method('configurations')

  klass.define_method('configurations=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('connection_handler')

  klass.define_method('connection_handler=') do |method|
    method.define_argument('handler')
  end

  klass.define_method('default_connection_handler')

  klass.define_method('default_connection_handler=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_connection_handler?')

  klass.define_method('default_scopes')

  klass.define_method('default_scopes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('default_scopes?')

  klass.define_method('default_timezone')

  klass.define_method('default_timezone=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('disable_implicit_join_references')

  klass.define_method('disable_implicit_join_references=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('include_root_in_json')

  klass.define_method('include_root_in_json=') do |method|
    method.define_argument('val')
  end

  klass.define_method('include_root_in_json?')

  klass.define_method('lock_optimistically')

  klass.define_method('lock_optimistically=') do |method|
    method.define_argument('val')
  end

  klass.define_method('lock_optimistically?')

  klass.define_method('logger')

  klass.define_method('logger=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('nested_attributes_options')

  klass.define_method('nested_attributes_options=') do |method|
    method.define_argument('val')
  end

  klass.define_method('nested_attributes_options?')

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

  klass.define_method('pluralize_table_names')

  klass.define_method('pluralize_table_names=') do |method|
    method.define_argument('val')
  end

  klass.define_method('pluralize_table_names?')

  klass.define_method('primary_key_prefix_type')

  klass.define_method('primary_key_prefix_type=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('record_timestamps')

  klass.define_method('record_timestamps=') do |method|
    method.define_argument('val')
  end

  klass.define_method('record_timestamps?')

  klass.define_method('reflections')

  klass.define_method('reflections=') do |method|
    method.define_argument('val')
  end

  klass.define_method('reflections?')

  klass.define_method('schema_format')

  klass.define_method('schema_format=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('serialized_attributes')

  klass.define_method('serialized_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('serialized_attributes?')

  klass.define_method('skip_time_zone_conversion_for_attributes')

  klass.define_method('skip_time_zone_conversion_for_attributes=') do |method|
    method.define_argument('val')
  end

  klass.define_method('skip_time_zone_conversion_for_attributes?')

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

  klass.define_method('time_zone_aware_attributes')

  klass.define_method('time_zone_aware_attributes=') do |method|
    method.define_argument('obj')
  end

  klass.define_method('timestamped_migrations')

  klass.define_method('timestamped_migrations=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('_commit_callbacks')

  klass.define_instance_method('_commit_callbacks=')

  klass.define_instance_method('_commit_callbacks?')

  klass.define_instance_method('_create_callbacks')

  klass.define_instance_method('_create_callbacks=')

  klass.define_instance_method('_create_callbacks?')

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

  klass.define_instance_method('attribute_aliases')

  klass.define_instance_method('attribute_aliases?')

  klass.define_instance_method('attribute_method_matchers')

  klass.define_instance_method('attribute_method_matchers?')

  klass.define_instance_method('attribute_types_cached_by_default')

  klass.define_instance_method('attribute_types_cached_by_default?')

  klass.define_instance_method('cache_timestamp_format')

  klass.define_instance_method('cache_timestamp_format?')

  klass.define_instance_method('configurations')

  klass.define_instance_method('default_connection_handler')

  klass.define_instance_method('default_connection_handler?')

  klass.define_instance_method('default_scopes')

  klass.define_instance_method('default_timezone')

  klass.define_instance_method('disable_implicit_join_references')

  klass.define_instance_method('include_root_in_json')

  klass.define_instance_method('include_root_in_json=')

  klass.define_instance_method('include_root_in_json?')

  klass.define_instance_method('lock_optimistically')

  klass.define_instance_method('lock_optimistically?')

  klass.define_instance_method('logger')

  klass.define_instance_method('nested_attributes_options')

  klass.define_instance_method('nested_attributes_options?')

  klass.define_instance_method('partial_writes')

  klass.define_instance_method('partial_writes?')

  klass.define_instance_method('pluralize_table_names')

  klass.define_instance_method('pluralize_table_names?')

  klass.define_instance_method('primary_key_prefix_type')

  klass.define_instance_method('record_timestamps')

  klass.define_instance_method('record_timestamps=')

  klass.define_instance_method('record_timestamps?')

  klass.define_instance_method('reflections')

  klass.define_instance_method('reflections=')

  klass.define_instance_method('reflections?')

  klass.define_instance_method('schema_format')

  klass.define_instance_method('skip_time_zone_conversion_for_attributes')

  klass.define_instance_method('skip_time_zone_conversion_for_attributes?')

  klass.define_instance_method('store_full_sti_class')

  klass.define_instance_method('store_full_sti_class?')

  klass.define_instance_method('table_name_prefix')

  klass.define_instance_method('table_name_prefix?')

  klass.define_instance_method('table_name_suffix')

  klass.define_instance_method('table_name_suffix?')

  klass.define_instance_method('time_zone_aware_attributes')

  klass.define_instance_method('timestamped_migrations')

  klass.define_instance_method('validation_context')

  klass.define_instance_method('validation_context=')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Batches') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('find_each') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('find_in_batches') do |method|
    method.define_optional_argument('options')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Calculations') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Callbacks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('destroy')

  klass.define_instance_method('touch') do |method|
    method.define_rest_argument('')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Coders') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ConfigurationError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ConnectionAdapters') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ConnectionHandling') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ConnectionNotEstablished') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ConnectionTimeoutError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ConnectionNotEstablished'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Core') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::CounterCache') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::DangerousAttributeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Delegation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::DeleteRestrictionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::DeprecatedFinders') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::DuplicateMigrationNameError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::DuplicateMigrationVersionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::DynamicMatchers') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('name')
    method.define_optional_argument('include_private')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::EagerLoadPolymorphicError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Explain') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('collecting_queries_for_explain')

  klass.define_instance_method('exec_explain') do |method|
    method.define_argument('queries')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ExplainRegistry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('collect')

  klass.define_instance_method('collect=')

  klass.define_instance_method('collect?')

  klass.define_instance_method('queries')

  klass.define_instance_method('queries=')

  klass.define_instance_method('reset')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::FinderMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasAndBelongsToManyAssociationForeignKeyNeeded') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughAssociationNotFoundError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughAssociationPointlessSourceTypeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughAssociationPolymorphicSourceError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughAssociationPolymorphicThroughError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughCantAssociateNewRecords') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughCantAssociateThroughHasOneOrManyReflection') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughCantDissociateNewRecords') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughNestedAssociationsAreReadonly') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasManyThroughSourceAssociationNotFoundError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::HasOneThroughCantAssociateThroughCollection') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::IllegalMigrationNameError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ImmutableRelation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Inheritance') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Integration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('cache_key')

  klass.define_instance_method('to_param')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::InvalidForeignKey') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::WrappedDatabaseException'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::InverseOfAssociationNotFoundError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::IrreversibleMigration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Locking') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Migration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::MigrationProxy') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('#<Class:0x17a7c>'))

  klass.define_instance_method('announce') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('basename')

  klass.define_instance_method('disable_ddl_transaction') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('migrate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('mtime')

  klass.define_instance_method('write') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Migrator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ModelSchema') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::MultiparameterAssignmentErrors') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_instance_method('errors')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::NestedAttributes') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('_destroy')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::NullMigration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::MigrationProxy'))

  klass.define_instance_method('mtime')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::NullRelation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::PendingMigrationError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Persistence') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::PredicateBuilder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::PreparedStatementInvalid') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::QueryCache') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('call') do |method|
    method.define_argument('env')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::QueryMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Querying') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Railtie'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ReadOnlyAssociation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ReadOnlyRecord') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ReadonlyAttributes') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('_attr_readonly')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::RecordNotDestroyed') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::RecordNotFound') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::RecordNotSaved') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::RecordNotUnique') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::WrappedDatabaseException'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Reflection') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Relation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('any?')

  klass.define_instance_method('as_json') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('blank?')

  klass.define_instance_method('build') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('create') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('create!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('eager_loading?')

  klass.define_instance_method('empty?')

  klass.define_instance_method('explain')

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

  klass.define_instance_method('insert') do |method|
    method.define_argument('values')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('joined_includes_values')

  klass.define_instance_method('klass')

  klass.define_instance_method('load')

  klass.define_instance_method('loaded')

  klass.define_instance_method('loaded?')

  klass.define_instance_method('many?')

  klass.define_instance_method('model')

  klass.define_instance_method('new') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pretty_print') do |method|
    method.define_argument('q')
  end

  klass.define_instance_method('proxy_association')

  klass.define_instance_method('proxy_association=')

  klass.define_instance_method('reload')

  klass.define_instance_method('reset')

  klass.define_instance_method('scope_for_create')

  klass.define_instance_method('scoping')

  klass.define_instance_method('size')

  klass.define_instance_method('table')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_sql')

  klass.define_instance_method('uniq_value')

  klass.define_instance_method('update') do |method|
    method.define_argument('id')
    method.define_argument('attributes')
  end

  klass.define_instance_method('update_all') do |method|
    method.define_argument('updates')
    method.define_optional_argument('conditions')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('update_all_without_deprecated_options') do |method|
    method.define_argument('updates')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('where_values_hash')

  klass.define_instance_method('with_default_scope')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Result') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('idx')
  end

  klass.define_instance_method('collect!')

  klass.define_instance_method('column_types')

  klass.define_instance_method('columns')

  klass.define_instance_method('each')

  klass.define_instance_method('empty?')

  klass.define_instance_method('last')

  klass.define_instance_method('map!')

  klass.define_instance_method('rows')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_hash')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Rollback') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::RuntimeRegistry') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('connection_handler')

  klass.define_instance_method('connection_handler=')

  klass.define_instance_method('connection_id')

  klass.define_instance_method('connection_id=')

  klass.define_instance_method('sql_runtime')

  klass.define_instance_method('sql_runtime=')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Sanitization') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('quoted_id')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Schema') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::Migration'))

  klass.define_method('define') do |method|
    method.define_optional_argument('info')
    method.define_block_argument('block')
  end

  klass.define_instance_method('define') do |method|
    method.define_argument('info')
    method.define_block_argument('block')
  end

  klass.define_instance_method('migrations_paths')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::SchemaDumper') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::SchemaMigration') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::Base'))

  klass.define_method('_validators')

  klass.define_method('create_table') do |method|
    method.define_optional_argument('limit')
  end

  klass.define_method('drop_table')

  klass.define_method('index_name')

  klass.define_method('table_name')

  klass.define_instance_method('version')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Scoping') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('populate_with_current_scope_attributes')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Serialization') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('serializable_hash') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::SerializationTypeMismatch') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::SpawnMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::StaleObjectError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_instance_method('attempted_action')

  klass.define_instance_method('record')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::StatementCache') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('execute')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::StatementInvalid') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_instance_method('original_exception')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Store') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::SubclassNotFound') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Tasks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::TestCase'))

  klass.define_instance_method('assert_date_from_db') do |method|
    method.define_argument('expected')
    method.define_argument('actual')
    method.define_optional_argument('message')
  end

  klass.define_instance_method('assert_no_queries') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('assert_queries') do |method|
    method.define_optional_argument('num')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('assert_sql') do |method|
    method.define_rest_argument('patterns_to_match')
  end

  klass.define_instance_method('teardown')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::TestFixtures') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('after_teardown')

  klass.define_instance_method('before_setup')

  klass.define_instance_method('enlist_fixture_connections')

  klass.define_instance_method('run_in_transaction?')

  klass.define_instance_method('setup_fixtures')

  klass.define_instance_method('teardown_fixtures')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::ThrowResult') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Timestamp') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('initialize_dup') do |method|
    method.define_argument('other')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::TransactionIsolationError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Transactions') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Translation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('i18n_scope')

  klass.define_instance_method('lookup_ancestors')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::UnknownAttributeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('NoMethodError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::UnknownMigrationVersionError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::UnknownPrimaryKey') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::ActiveRecordError'))

  klass.define_instance_method('model')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::Validations') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveRecord::WrappedDatabaseException') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveRecord::StatementInvalid'))
end

