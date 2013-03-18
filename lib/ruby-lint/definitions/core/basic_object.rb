RubyLint.global_scope.define_constant('BasicObject') do |klass|
  klass.inherits(RubyLint.global_constant('Class'))

  klass.define_instance_method('!')

  klass.define_instance_method('!=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('__id__')

  klass.define_instance_method('__send__') do |method|
    method.define_argument('name')
    method.define_rest_argument('rest')
    method.define_block_argument('block')
  end

  klass.define_instance_method('equal?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('instance_eval') do |method|
    method.define_optional_argument('string')
    method.define_block_argument('block')
  end

  klass.define_instance_method('instance_exec') do |method|
    method.define_block_argument('block')
  end
end
