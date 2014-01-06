# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('Monitor') do |defs|
  defs.define_constant('Monitor') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('enter')

    klass.define_instance_method('exit')

    klass.define_instance_method('mon_enter')

    klass.define_instance_method('mon_exit')

    klass.define_instance_method('mon_synchronize')

    klass.define_instance_method('mon_try_enter')

    klass.define_instance_method('new_cond')

    klass.define_instance_method('synchronize')

    klass.define_instance_method('try_enter')

    klass.define_instance_method('try_mon_enter')
  end

  defs.define_constant('Monitor::ConditionVariable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('broadcast')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('monitor')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('signal')

    klass.define_instance_method('wait') do |method|
      method.define_optional_argument('timeout')
    end

    klass.define_instance_method('wait_until')

    klass.define_instance_method('wait_while')
  end
end
