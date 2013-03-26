##
# Constant: OpenStruct
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('OpenStruct') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('delete_field') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('x')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('mid')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('modifiable')

  klass.define_instance_method('new_ostruct_member') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('table')

  klass.define_instance_method('to_s')
end
