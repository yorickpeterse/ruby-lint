##
# Constant: OpenStruct
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('OpenStruct') do |klass|
  klass.inherits(RubyLint::VirtualMachine.global_constant('Object'))

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

##
# Constant: OpenStruct::InspectKey
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('OpenStruct::InspectKey') do |klass|
end