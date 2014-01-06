# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('Delegator') do |defs|
  defs.define_constant('Delegator') do |klass|
    klass.inherits(defs.constant_proxy('BasicObject'))

    klass.define_method('const_missing') do |method|
      method.define_argument('n')
    end

    klass.define_method('delegating_block') do |method|
      method.define_argument('mid')
    end

    klass.define_method('public_api')

    klass.define_instance_method('!')

    klass.define_instance_method('!=') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('==') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('__class__')

    klass.define_instance_method('__extend__') do |method|
      method.define_rest_argument('modules')
    end

    klass.define_instance_method('__getobj__')

    klass.define_instance_method('__instance_variable_defined_p__') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('__instance_variable_get__') do |method|
      method.define_argument('sym')
    end

    klass.define_instance_method('__instance_variable_set__') do |method|
      method.define_argument('sym')
      method.define_argument('value')
    end

    klass.define_instance_method('__respond_to_p__') do |method|
      method.define_argument('meth')
      method.define_optional_argument('include_private')
    end

    klass.define_instance_method('__setobj__') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('class')

    klass.define_instance_method('clone')

    klass.define_instance_method('define_singleton_method') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('display') do |method|
      method.define_optional_argument('port')
    end

    klass.define_instance_method('dup')

    klass.define_instance_method('enum_for') do |method|
      method.define_optional_argument('method')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('extend') do |method|
      method.define_rest_argument('modules')
    end

    klass.define_instance_method('freeze')

    klass.define_instance_method('frozen?')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('obj')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('instance_of?') do |method|
      method.define_argument('cls')
    end

    klass.define_instance_method('instance_variable_defined?') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('instance_variable_get') do |method|
      method.define_argument('sym')
    end

    klass.define_instance_method('instance_variable_set') do |method|
      method.define_argument('sym')
      method.define_argument('value')
    end

    klass.define_instance_method('instance_variables')

    klass.define_instance_method('is_a?') do |method|
      method.define_argument('cls')
    end

    klass.define_instance_method('kind_of?') do |method|
      method.define_argument('cls')
    end

    klass.define_instance_method('marshal_dump')

    klass.define_instance_method('marshal_load') do |method|
      method.define_argument('data')
    end

    klass.define_instance_method('method') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('method_missing') do |method|
      method.define_argument('m')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('methods') do |method|
      method.define_optional_argument('all')
    end

    klass.define_instance_method('nil?')

    klass.define_instance_method('object_id')

    klass.define_instance_method('private_methods') do |method|
      method.define_optional_argument('all')
    end

    klass.define_instance_method('protected_methods') do |method|
      method.define_optional_argument('all')
    end

    klass.define_instance_method('public_method') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('public_methods') do |method|
      method.define_optional_argument('all')
    end

    klass.define_instance_method('public_send') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('remove_instance_variable') do |method|
      method.define_argument('sym')
    end

    klass.define_instance_method('respond_to?') do |method|
      method.define_argument('meth')
      method.define_optional_argument('include_private')
    end

    klass.define_instance_method('send') do |method|
      method.define_argument('message')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('singleton_class')

    klass.define_instance_method('singleton_methods') do |method|
      method.define_optional_argument('all')
    end

    klass.define_instance_method('taint')

    klass.define_instance_method('tainted?')

    klass.define_instance_method('tap')

    klass.define_instance_method('to_enum') do |method|
      method.define_optional_argument('method')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('trust')

    klass.define_instance_method('untaint')

    klass.define_instance_method('untrust')

    klass.define_instance_method('untrusted?')
  end

  defs.define_constant('Delegator::RUBYGEMS_ACTIVATION_MONITOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('enter')

    klass.define_method('exit')

    klass.define_method('mon_enter')

    klass.define_method('mon_exit')

    klass.define_method('mon_synchronize')

    klass.define_method('mon_try_enter')

    klass.define_method('new_cond')

    klass.define_method('synchronize')

    klass.define_method('try_enter')

    klass.define_method('try_mon_enter')
  end
end
