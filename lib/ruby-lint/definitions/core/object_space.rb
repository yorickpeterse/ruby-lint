##
# Constant: ObjectSpace
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('ObjectSpace') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('_id2ref') do |method|
    method.define_argument('id')
  end

  klass.define_method('define_finalizer') do |method|
    method.define_argument('obj')
    method.define_optional_argument('prc')
    method.define_block_argument('block')
  end

  klass.define_method('each_object') do |method|
    method.define_optional_argument('what')
    method.define_block_argument('block')
  end

  klass.define_method('find_object') do |method|
    method.define_argument('query')
    method.define_argument('callable')
  end

  klass.define_method('find_references') do |method|
    method.define_argument('obj')
  end

  klass.define_method('garbage_collect')

  klass.define_method('run_finalizers')

  klass.define_method('undefine_finalizer') do |method|
    method.define_argument('obj')
  end
end
