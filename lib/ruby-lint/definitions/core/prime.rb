# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Prime') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('all?')

  klass.define_method('any?')

  klass.define_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_method('collect')

  klass.define_method('collect_concat')

  klass.define_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_method('drop_while')

  klass.define_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_method('find') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_method('find_all')

  klass.define_method('find_index') do |method|
    method.define_optional_argument('value')
  end

  klass.define_method('first') do |method|
    method.define_optional_argument('n')
  end

  klass.define_method('flat_map')

  klass.define_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_method('group_by')

  klass.define_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_method('instance')

  klass.define_method('int_from_prime_division') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('lazy')

  klass.define_method('map')

  klass.define_method('max')

  klass.define_method('max_by')

  klass.define_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_method('method_added') do |method|
    method.define_argument('method')
  end

  klass.define_method('min')

  klass.define_method('min_by')

  klass.define_method('minmax')

  klass.define_method('minmax_by')

  klass.define_method('none?')

  klass.define_method('one?')

  klass.define_method('partition')

  klass.define_method('prime?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('prime_division') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_method('reject')

  klass.define_method('reverse_each')

  klass.define_method('select')

  klass.define_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_method('sort')

  klass.define_method('sort_by')

  klass.define_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_method('take_while')

  klass.define_method('to_a') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_method('zip') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat')

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

  klass.define_instance_method('each') do |method|
    method.define_optional_argument('ubound')
    method.define_optional_argument('generator')
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('flat_map')

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
  end

  klass.define_instance_method('int_from_prime_division') do |method|
    method.define_argument('pd')
  end

  klass.define_instance_method('lazy')

  klass.define_instance_method('map')

  klass.define_instance_method('max')

  klass.define_instance_method('max_by')

  klass.define_instance_method('member?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('min_by')

  klass.define_instance_method('minmax')

  klass.define_instance_method('minmax_by')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('prime?') do |method|
    method.define_argument('value')
    method.define_optional_argument('generator')
  end

  klass.define_instance_method('prime_division') do |method|
    method.define_argument('value')
    method.define_optional_argument('generator')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('select')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

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

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Prime').deep_freeze
