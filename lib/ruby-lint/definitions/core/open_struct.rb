# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('OpenStruct') do |defs|
  defs.define_constant('OpenStruct') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('==') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('delete_field') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('hash')

      method.returns { |object| object.instance }
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

    klass.define_instance_method('to_h')

    klass.define_instance_method('to_s')
  end

  defs.define_constant('OpenStruct::InspectKey') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('index')
      method.define_optional_argument('other')
    end

    klass.define_method('capitalize')

    klass.define_method('casecmp') do |method|
      method.define_argument('other')
    end

    klass.define_method('downcase')

    klass.define_method('empty?')

    klass.define_method('encoding')

    klass.define_method('id2name')

    klass.define_method('index')

    klass.define_method('intern')

    klass.define_method('is_constant?')

    klass.define_method('is_cvar?')

    klass.define_method('is_ivar?')

    klass.define_method('length')

    klass.define_method('match') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('next')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('index')
      method.define_optional_argument('other')
    end

    klass.define_method('succ')

    klass.define_method('swapcase')

    klass.define_method('to_proc')

    klass.define_method('to_sym')

    klass.define_method('upcase')
  end
end
