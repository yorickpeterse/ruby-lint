# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('DRbUndumped') do |defs|
  defs.define_constant('DRbUndumped') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_dump') do |method|
      method.define_argument('dummy')
    end
  end
end
