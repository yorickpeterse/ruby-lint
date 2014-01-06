# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('RbConfig') do |defs|
  defs.define_constant('RbConfig') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('expand') do |method|
      method.define_argument('val')
      method.define_optional_argument('config')
    end

    klass.define_method('ruby')
  end

  defs.define_constant('RbConfig::CONFIG') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('RbConfig::MAKEFILE_CONFIG') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end
end
