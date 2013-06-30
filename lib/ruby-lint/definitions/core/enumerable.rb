##
# Constant: Enumerable
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('sort_proc')

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

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

  klass.define_instance_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('drop_while')

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

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
    method.define_block_argument('block')
  end

  klass.define_instance_method('map')

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
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_block_argument('prc')
  end

  klass.define_instance_method('sort_by')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Enumerable::Enumerator
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::Enumerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('each') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_with_index')

  klass.define_instance_method('enum_with_index')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('obj')
    method.define_optional_argument('iter')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('next')

  klass.define_instance_method('peek')

  klass.define_instance_method('peek_values')

  klass.define_instance_method('rewind')

  klass.define_instance_method('with_index') do |method|
    method.define_optional_argument('offset')
  end
end

##
# Constant: Enumerable::Enumerator::FiberGenerator
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::Enumerator::FiberGenerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('next')

  klass.define_instance_method('next?')

  klass.define_instance_method('reset')

  klass.define_instance_method('rewind')
end

##
# Constant: Enumerable::Enumerator::Generator
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::Enumerator::Generator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('each')

  klass.define_instance_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

##
# Constant: Enumerable::Enumerator::SortedElement
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::Enumerator::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end

##
# Constant: Enumerable::Enumerator::ThreadGenerator
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::Enumerator::ThreadGenerator') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('enum')
    method.define_argument('obj')
    method.define_argument('meth')
    method.define_argument('args')
  end

  klass.define_instance_method('kill') do |method|
    method.define_argument('obj_id')
  end

  klass.define_instance_method('next')

  klass.define_instance_method('next?')

  klass.define_instance_method('reset')

  klass.define_instance_method('rewind')
end

##
# Constant: Enumerable::Enumerator::Yielder
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::Enumerator::Yielder') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<<') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('yield') do |method|
    method.define_rest_argument('args')
  end
end

##
# Constant: Enumerable::SortedElement
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Enumerable::SortedElement') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('val')
    method.define_argument('sort_id')
  end

  klass.define_instance_method('sort_id')

  klass.define_instance_method('value')
end