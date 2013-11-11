# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('PP') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('PrettyPrint'))

  klass.define_method('format') do |method|
    method.define_optional_argument('output')
    method.define_optional_argument('maxwidth')
    method.define_optional_argument('newline')
    method.define_optional_argument('genspace')
  end

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_method('mcall') do |method|
    method.define_argument('obj')
    method.define_argument('mod')
    method.define_argument('meth')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('pp') do |method|
    method.define_argument('obj')
    method.define_optional_argument('out')
    method.define_optional_argument('width')
  end

  klass.define_method('sharing_detection')

  klass.define_method('sharing_detection=')

  klass.define_method('singleline_format') do |method|
    method.define_optional_argument('output')
    method.define_optional_argument('maxwidth')
    method.define_optional_argument('newline')
    method.define_optional_argument('genspace')
  end

  klass.define_method('singleline_pp') do |method|
    method.define_argument('obj')
    method.define_optional_argument('out')
  end

  klass.define_instance_method('break_outmost_groups')

  klass.define_instance_method('breakable') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('width')
  end

  klass.define_instance_method('check_inspect_key') do |method|
    method.define_argument('id')
  end

  klass.define_instance_method('comma_breakable')

  klass.define_instance_method('current_group')

  klass.define_instance_method('fill_breakable') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('width')
  end

  klass.define_instance_method('first?')

  klass.define_instance_method('flush')

  klass.define_instance_method('genspace')

  klass.define_instance_method('group') do |method|
    method.define_optional_argument('indent')
    method.define_optional_argument('open_obj')
    method.define_optional_argument('close_obj')
    method.define_optional_argument('open_width')
    method.define_optional_argument('close_width')
  end

  klass.define_instance_method('group_queue')

  klass.define_instance_method('group_sub')

  klass.define_instance_method('guard_inspect_key')

  klass.define_instance_method('indent')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('output')
    method.define_optional_argument('maxwidth')
    method.define_optional_argument('newline')
    method.define_block_argument('genspace')
  end

  klass.define_instance_method('maxwidth')

  klass.define_instance_method('nest') do |method|
    method.define_argument('indent')
  end

  klass.define_instance_method('newline')

  klass.define_instance_method('object_address_group') do |method|
    method.define_argument('obj')
    method.define_block_argument('block')
  end

  klass.define_instance_method('object_group') do |method|
    method.define_argument('obj')
    method.define_block_argument('block')
  end

  klass.define_instance_method('output')

  klass.define_instance_method('pop_inspect_key') do |method|
    method.define_argument('id')
  end

  klass.define_instance_method('pp') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('pp_hash') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('pp_object') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('push_inspect_key') do |method|
    method.define_argument('id')
  end

  klass.define_instance_method('seplist') do |method|
    method.define_argument('list')
    method.define_optional_argument('sep')
    method.define_optional_argument('iter_method')
  end

  klass.define_instance_method('text') do |method|
    method.define_argument('obj')
    method.define_optional_argument('width')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'PP').deep_freeze
