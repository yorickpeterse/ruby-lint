# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:57 +0200
# Platform: rbx 2.0.0.n198

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel') do |klass|
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

  klass.define_method('version')

  klass.define_instance_method('eager_load!')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::AttributeMethods') do |klass|
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

  klass.define_method('kind')

  klass.define_instance_method('attributes')

  klass.define_instance_method('check_validity!')

  klass.define_instance_method('kind')

  klass.define_instance_method('options')

  klass.define_instance_method('validate') do |method|
    method.define_argument('record')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Callbacks') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('extended') do |method|
    method.define_argument('base')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('define_model_callbacks') do |method|
    method.define_rest_argument('callbacks')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Conversion') do |klass|
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

  klass.define_instance_method('to_key')

  klass.define_instance_method('to_model')

  klass.define_instance_method('to_param')

  klass.define_instance_method('to_partial_path')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::DeprecatedMassAssignmentSecurity') do |klass|
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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Dirty') do |klass|
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

  klass.define_instance_method('changed')

  klass.define_instance_method('changed?')

  klass.define_instance_method('changed_attributes')

  klass.define_instance_method('changes')

  klass.define_instance_method('previous_changes')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::EachValidator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveModel::Validator'))

  klass.define_method('kind')

  klass.define_instance_method('attributes')

  klass.define_instance_method('check_validity!')

  klass.define_instance_method('kind')

  klass.define_instance_method('options')

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

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('as_json') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('blank?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
    method.define_block_argument('original_block')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('count')

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('delete') do |method|
    method.define_argument('key')
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

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('has_key?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('include?') do |method|
    method.define_argument('attribute')
  end

  klass.define_instance_method('index_by')

  klass.define_instance_method('initialize_dup') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('many?')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('messages')

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

  klass.define_instance_method('set') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

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

  klass.define_instance_method('to_hash') do |method|
    method.define_optional_argument('full_messages')
  end

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_xml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('values')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::ForbiddenAttributesProtection') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('sanitize_for_mass_assignment') do |method|
    method.define_argument('attributes')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Lint') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::MissingAttributeError') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('NoMethodError'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Model') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('included') do |method|
    method.define_argument('base')
  end

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('persisted?')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Name') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_instance_method('!~') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
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

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::SecurePassword') do |klass|
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

  klass.define_method('min_cost')

  klass.define_method('min_cost=')
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Serialization') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::StrictValidationFailed') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('StandardError'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::TestCase') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('ActiveSupport::TestCase'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Translation') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

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

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::VERSION') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::VirtualMachine.global_scope.define_constant('ActiveModel::Validations') do |klass|
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

