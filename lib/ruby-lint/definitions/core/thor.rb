# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Thor') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('all_tasks')

  klass.define_method('argument') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_method('arguments')

  klass.define_method('attr_accessor') do |method|
    method.define_rest_argument('arg1')
  end

  klass.define_method('attr_reader') do |method|
    method.define_rest_argument('arg1')
  end

  klass.define_method('attr_writer') do |method|
    method.define_rest_argument('arg1')
  end

  klass.define_method('banner') do |method|
    method.define_argument('task')
    method.define_optional_argument('namespace')
    method.define_optional_argument('subcommand')
  end

  klass.define_method('baseclass')

  klass.define_method('basename')

  klass.define_method('build_option') do |method|
    method.define_argument('name')
    method.define_argument('options')
    method.define_argument('scope')
  end

  klass.define_method('build_options') do |method|
    method.define_argument('options')
    method.define_argument('scope')
  end

  klass.define_method('check_unknown_options')

  klass.define_method('check_unknown_options!') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('check_unknown_options?') do |method|
    method.define_argument('config')
  end

  klass.define_method('class_option') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_method('class_options') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('class_options_help') do |method|
    method.define_argument('shell')
    method.define_optional_argument('groups')
  end

  klass.define_method('create_task') do |method|
    method.define_argument('meth')
  end

  klass.define_method('default_task') do |method|
    method.define_optional_argument('meth')
  end

  klass.define_method('desc') do |method|
    method.define_argument('usage')
    method.define_argument('description')
    method.define_optional_argument('options')
  end

  klass.define_method('dispatch') do |method|
    method.define_argument('meth')
    method.define_argument('given_args')
    method.define_argument('given_opts')
    method.define_argument('config')
  end

  klass.define_method('exit_on_failure?')

  klass.define_method('find_and_refresh_task') do |method|
    method.define_argument('name')
  end

  klass.define_method('find_task_possibilities') do |method|
    method.define_argument('meth')
  end

  klass.define_method('from_superclass') do |method|
    method.define_argument('method')
    method.define_optional_argument('default')
  end

  klass.define_method('group') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('handle_argument_error') do |method|
    method.define_argument('task')
    method.define_argument('error')
    method.define_optional_argument('arity')
  end

  klass.define_method('handle_no_task_error') do |method|
    method.define_argument('task')
    method.define_optional_argument('has_namespace')
  end

  klass.define_method('help') do |method|
    method.define_argument('shell')
    method.define_optional_argument('subcommand')
  end

  klass.define_method('inherited') do |method|
    method.define_argument('klass')
  end

  klass.define_method('initialize_added')

  klass.define_method('is_thor_reserved_word?') do |method|
    method.define_argument('word')
    method.define_argument('type')
  end

  klass.define_method('long_desc') do |method|
    method.define_argument('long_description')
    method.define_optional_argument('options')
  end

  klass.define_method('map') do |method|
    method.define_optional_argument('mappings')
  end

  klass.define_method('method_added') do |method|
    method.define_argument('meth')
  end

  klass.define_method('method_option') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_method('method_options') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('namespace') do |method|
    method.define_optional_argument('name')
  end

  klass.define_method('no_tasks')

  klass.define_method('normalize_task_name') do |method|
    method.define_argument('meth')
  end

  klass.define_method('option') do |method|
    method.define_argument('name')
    method.define_optional_argument('options')
  end

  klass.define_method('options') do |method|
    method.define_optional_argument('options')
  end

  klass.define_method('prepare_for_invocation') do |method|
    method.define_argument('key')
    method.define_argument('name')
  end

  klass.define_method('print_options') do |method|
    method.define_argument('shell')
    method.define_argument('options')
    method.define_optional_argument('group_name')
  end

  klass.define_method('printable_tasks') do |method|
    method.define_optional_argument('all')
    method.define_optional_argument('subcommand')
  end

  klass.define_method('public_task') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('register') do |method|
    method.define_argument('klass')
    method.define_argument('subcommand_name')
    method.define_argument('usage')
    method.define_argument('description')
    method.define_optional_argument('options')
  end

  klass.define_method('remove_argument') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('remove_class_option') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('remove_task') do |method|
    method.define_rest_argument('names')
  end

  klass.define_method('retrieve_task_name') do |method|
    method.define_argument('args')
  end

  klass.define_method('start') do |method|
    method.define_optional_argument('given_args')
    method.define_optional_argument('config')
  end

  klass.define_method('stop_on_unknown_option!') do |method|
    method.define_rest_argument('task_names')
  end

  klass.define_method('stop_on_unknown_option?') do |method|
    method.define_argument('task')
  end

  klass.define_method('strict_args_position')

  klass.define_method('strict_args_position!')

  klass.define_method('strict_args_position?') do |method|
    method.define_argument('config')
  end

  klass.define_method('subcommand') do |method|
    method.define_argument('subcommand')
    method.define_argument('subcommand_class')
  end

  klass.define_method('subcommand_help') do |method|
    method.define_argument('cmd')
  end

  klass.define_method('subcommands')

  klass.define_method('task_help') do |method|
    method.define_argument('shell')
    method.define_argument('task_name')
  end

  klass.define_method('tasks')

  klass.define_instance_method('_parse_initialization_options') do |method|
    method.define_argument('args')
    method.define_argument('opts')
    method.define_argument('config')
  end

  klass.define_instance_method('_retrieve_class_and_task') do |method|
    method.define_argument('name')
    method.define_optional_argument('sent_task')
  end

  klass.define_instance_method('_shared_configuration')

  klass.define_instance_method('args')

  klass.define_instance_method('args=')

  klass.define_instance_method('ask') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('error') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('file_collision') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('help') do |method|
    method.define_optional_argument('task')
    method.define_optional_argument('subcommand')
  end

  klass.define_instance_method('invoke') do |method|
    method.define_optional_argument('name')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('invoke_all')

  klass.define_instance_method('invoke_task') do |method|
    method.define_argument('task')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('invoke_with_padding') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('no?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('options')

  klass.define_instance_method('options=')

  klass.define_instance_method('parent_options')

  klass.define_instance_method('parent_options=')

  klass.define_instance_method('print_in_columns') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('print_table') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('print_wrapped') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('say') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('say_status') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('set_color') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shell')

  klass.define_instance_method('shell=') do |method|
    method.define_argument('shell')
  end

  klass.define_instance_method('terminal_width') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_padding')

  klass.define_instance_method('yes?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Thor').deep_freeze
