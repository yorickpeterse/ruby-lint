# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('LoadError') do |defs|
  defs.define_constant('LoadError') do |klass|
    klass.inherits(defs.constant_proxy('ScriptError'))

    klass.define_instance_method('path')

    klass.define_instance_method('path=')
  end

  defs.define_constant('LoadError::InvalidExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError'))

  end

  defs.define_constant('LoadError::InvalidExtensionError::MRIExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError::InvalidExtensionError'))

  end

  defs.define_constant('LoadError::MRIExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError::InvalidExtensionError'))

  end

  defs.define_constant('LoadError::MRIExtensionError::InvalidExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError'))

  end
end
