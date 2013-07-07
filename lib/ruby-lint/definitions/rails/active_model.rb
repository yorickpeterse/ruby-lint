# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-07 17:54:58 +0200
# Platform: rbx 2.0.0.rc1

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('version')

  klass.define_instance_method('eager_load!')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::AttributeMethods') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('attribute_method?') do |method|
    method.define_argument('attr_name')
  end

  klass.define_instance_method('attribute_missing') do |method|
    method.define_argument('match')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('method')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('respond_to?') do |method|
    method.define_argument('method')
    method.define_optional_argument('include_private_methods')
  end

  klass.define_instance_method('respond_to_without_attributes?') do |method|
    method.define_argument('meth')
    method.define_optional_argument('include_private')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::BlockValidator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveModel::EachValidator'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Callbacks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('extended') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('define_model_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Conversion') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('to_key')

  klass.define_instance_method('to_model')

  klass.define_instance_method('to_param')

  klass.define_instance_method('to_partial_path')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::DeprecatedMassAssignmentSecurity') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Dirty') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('changed')

  klass.define_instance_method('changed?')

  klass.define_instance_method('changed_attributes')

  klass.define_instance_method('changes')

  klass.define_instance_method('previous_changes')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::EachValidator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveModel::Validator'))

  klass.define_instance_method('attributes')

  klass.define_instance_method('check_validity!')

  klass.define_instance_method('validate') do |method|
    method.define_argument('record')
  end

  klass.define_instance_method('validate_each') do |method|
    method.define_argument('record')
    method.define_argument('attribute')
    method.define_argument('value')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Errors') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('[]') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('attribute')
    method.define_argument('error')
  end

  klass.define_instance_method('add') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('add_on_blank') do |method|
    method.define_argument('attributes')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('add_on_empty') do |method|
    method.define_argument('attributes')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('added?') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('message')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('as_json') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('blank?')

  klass.define_instance_method('clear')

  klass.define_instance_method('count')

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('each')

  klass.define_instance_method('empty?')

  klass.define_instance_method('full_message') do |method|
    method.define_argument('attribute')
    method.define_argument('message')
  end

  klass.define_instance_method('full_messages')

  klass.define_instance_method('full_messages_for') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('generate_message') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('type')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('get') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('initialize_dup') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('messages')

  klass.define_instance_method('set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_hash') do |method|
    method.define_optional_argument('full_messages')
  end

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('values')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::ForbiddenAttributesProtection') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('sanitize_for_mass_assignment') do |method|
    method.define_argument('attributes')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Lint') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::MissingAttributeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('NoMethodError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Model') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('included') do |method|
    method.define_argument('base')
  end

  klass.define_instance_method('persisted?')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Name') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('!~') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('arg')
  end

  klass.define_instance_method('=~') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cache_key')

  klass.define_instance_method('collection')

  klass.define_instance_method('element')

  klass.define_instance_method('eql?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('human') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('i18n_key')

  klass.define_instance_method('name')

  klass.define_instance_method('param_key')

  klass.define_instance_method('plural')

  klass.define_instance_method('route_key')

  klass.define_instance_method('singular')

  klass.define_instance_method('singular_route_key')

  klass.define_instance_method('to_s') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_str') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Naming') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('param_key') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_method('plural') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_method('route_key') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_method('singular') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_method('singular_route_key') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_method('uncountable?') do |method|
    method.define_argument('record_or_class')
  end

  klass.define_instance_method('model_name')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Railtie') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Rails::Railtie'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::SecurePassword') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('min_cost')

  klass.define_method('min_cost=')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Serialization') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('read_attribute_for_serialization') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('serializable_hash') do |method|
    method.define_optional_argument('options')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Serializers') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::StrictValidationFailed') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('StandardError'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::TestCase'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Translation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('human_attribute_name') do |method|
    method.define_argument('attribute')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('i18n_scope')

  klass.define_instance_method('lookup_ancestors')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Validations') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('errors')

  klass.define_instance_method('initialize_dup') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('invalid?') do |method|
    method.define_optional_argument('context')
  end

  klass.define_instance_method('read_attribute_for_validation') do |method|
    method.define_argument('message')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('run_validations!')

  klass.define_instance_method('valid?') do |method|
    method.define_optional_argument('context')
  end

  klass.define_instance_method('validates_with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Validator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('kind')

  klass.define_instance_method('kind')

  klass.define_instance_method('options')

  klass.define_instance_method('validate') do |method|
    method.define_argument('record')
  end
end

