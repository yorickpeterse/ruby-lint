# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('PrettyPrint') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('format') do |method|
    method.define_optional_argument('output')
    method.define_optional_argument('maxwidth')
    method.define_optional_argument('newline')
    method.define_optional_argument('genspace')
  end

  klass.define_method('singleline_format') do |method|
    method.define_optional_argument('output')
    method.define_optional_argument('maxwidth')
    method.define_optional_argument('newline')
    method.define_optional_argument('genspace')
  end

  klass.define_instance_method('break_outmost_groups')

  klass.define_instance_method('breakable') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('width')
  end

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

  klass.define_instance_method('indent')

  klass.define_instance_method('maxwidth')

  klass.define_instance_method('nest') do |method|
    method.define_argument('indent')
  end

  klass.define_instance_method('newline')

  klass.define_instance_method('output')

  klass.define_instance_method('text') do |method|
    method.define_argument('obj')
    method.define_optional_argument('width')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'PrettyPrint').deep_freeze
