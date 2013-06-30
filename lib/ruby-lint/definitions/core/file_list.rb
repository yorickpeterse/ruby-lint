##
# Constant: FileList
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('FileList') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

  klass.define_method('[]') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('__class_init__')

  klass.define_instance_method('&') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('-') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('<<') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('[]') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('__append__') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('__rescue_match__') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('add') do |method|
    method.define_rest_argument('filenames')
  end

  klass.define_instance_method('all?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('any?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('assoc') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('at') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('clear_exclude')

  klass.define_instance_method('collect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('collect_concat') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('combination') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('compact') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('compact!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('concat') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete_at') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('delete_if') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('detect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('drop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('drop_while') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_cons') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_slice') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('egrep') do |method|
    method.define_argument('pattern')
    method.define_rest_argument('options')
  end

  klass.define_instance_method('empty?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('exclude') do |method|
    method.define_rest_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_instance_method('exclude?') do |method|
    method.define_argument('fn')
  end

  klass.define_instance_method('existing')

  klass.define_instance_method('existing!')

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fill') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_all') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('find_index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('first') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flat_map') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flatten') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flatten!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('grep') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('group_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gsub') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('import') do |method|
    method.define_argument('array')
  end

  klass.define_instance_method('include') do |method|
    method.define_rest_argument('filenames')
  end

  klass.define_instance_method('include?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('index') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('inject') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('insert') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('inspect') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('is_a?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('join') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('keep_if') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('kind_of?') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('last') do |method|
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

  klass.define_instance_method('map!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('max') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('max_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('member?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('min_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('minmax_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('new_range') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('new_reserved') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('nitems') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('none?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('one?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pack') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('partition') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('pathmap') do |method|
    method.define_optional_argument('spec')
  end

  klass.define_instance_method('permutation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pop') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('product') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('push') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rassoc') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reject!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('repeated_combination') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('repeated_permutation') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('replace') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('resolve')

  klass.define_instance_method('reverse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('reverse_each') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rindex') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rotate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('rotate!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sample') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('select') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('select!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shelljoin') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shift') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shuffle') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('shuffle!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('size') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('slice_before') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_by') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_by!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sort_inplace') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('start') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('start=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sub') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_argument('pat')
    method.define_argument('rep')
  end

  klass.define_instance_method('take') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('take_while') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_ary')

  klass.define_instance_method('to_generator') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_tuple') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('total') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('total=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('transpose') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tuple') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tuple=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('uniq') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('uniq!') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unshift') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('values_at') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('|') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end
end