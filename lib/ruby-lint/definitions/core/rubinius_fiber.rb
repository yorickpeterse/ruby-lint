##
# Constant: Rubinius::Fiber
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Rubinius::Fiber') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('create') do |method|
    method.define_argument('callable')
  end

  klass.define_method('current')

  klass.define_method('new') do |method|
    method.define_optional_argument('size')
    method.define_block_argument('block')
  end

  klass.define_method('yield') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('alive?')

  klass.define_instance_method('resume') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('transfer') do |method|
    method.define_rest_argument('args')
  end
end
