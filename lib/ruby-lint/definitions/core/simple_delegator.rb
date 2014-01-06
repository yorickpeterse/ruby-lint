# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('SimpleDelegator') do |defs|
  defs.define_constant('SimpleDelegator') do |klass|
    klass.inherits(defs.constant_proxy('Delegator'))

    klass.define_instance_method('__getobj__')

    klass.define_instance_method('__setobj__') do |method|
      method.define_argument('obj')
    end
  end

  defs.define_constant('SimpleDelegator::RUBYGEMS_ACTIVATION_MONITOR') do |klass|
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
