# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Vector') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('Fail') do |method|
    method.define_optional_argument('err')
    method.define_rest_argument('rest')
  end

  klass.define_method('Raise') do |method|
    method.define_optional_argument('err')
    method.define_rest_argument('rest')
  end

  klass.define_method('[]') do |method|
    method.define_rest_argument('array')
  end

  klass.define_method('bind') do |method|
    method.define_argument('cl')
  end

  klass.define_method('def_e2message') do |method|
    method.define_argument('c')
    method.define_argument('m')
  end

  klass.define_method('def_exception') do |method|
    method.define_argument('n')
    method.define_argument('m')
    method.define_optional_argument('s')
  end

  klass.define_method('elements') do |method|
    method.define_argument('array')
    method.define_optional_argument('copy')
  end

  klass.define_method('fail') do |method|
    method.define_optional_argument('err')
    method.define_rest_argument('rest')
  end

  klass.define_method('included') do |method|
    method.define_argument('mod')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('x')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('v')
  end

  klass.define_instance_method('-') do |method|
    method.define_argument('v')
  end

  klass.define_instance_method('/') do |method|
    method.define_argument('x')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('Fail') do |method|
    method.define_optional_argument('err')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('Raise') do |method|
    method.define_optional_argument('err')
    method.define_rest_argument('rest')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('i')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('clone')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('collect') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect2') do |method|
    method.define_argument('v')
  end

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('component') do |method|
    method.define_argument('i')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('covector')

  klass.define_instance_method('cross_product') do |method|
    method.define_argument('v')
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
    method.define_block_argument('block')
  end

  klass.define_instance_method('each2') do |method|
    method.define_argument('v')
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

  klass.define_instance_method('element') do |method|
    method.define_argument('i')
  end

  klass.define_instance_method('elements')

  klass.define_instance_method('elements_to_f')

  klass.define_instance_method('elements_to_i')

  klass.define_instance_method('elements_to_r')

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
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

  klass.define_instance_method('hash')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('inner_product') do |method|
    method.define_argument('v')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('lazy')

  klass.define_instance_method('magnitude')

  klass.define_instance_method('map') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('map2') do |method|
    method.define_argument('v')
    method.define_block_argument('block')
  end

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

  klass.define_instance_method('norm')

  klass.define_instance_method('normalize')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('r')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('select')

  klass.define_instance_method('size')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')

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

RubyLint::GlobalScope.definitions.lookup(:const, 'Vector').deep_freeze
