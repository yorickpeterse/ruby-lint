# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('LoadError') do |defs|
  defs.define_constant('LoadError') do |klass|
    klass.inherits(defs.constant_proxy('ScriptError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('path')

    klass.define_instance_method('path=')
  end

  defs.define_constant('LoadError::InvalidExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('LoadError::InvalidExtensionError::MRIExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError::InvalidExtensionError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('LoadError::MRIExtensionError') do |klass|
    klass.inherits(defs.constant_proxy('LoadError::InvalidExtensionError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end
end
