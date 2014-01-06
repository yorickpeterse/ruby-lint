# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('ArgumentError') do |defs|
  defs.define_constant('ArgumentError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_instance_method('to_s')
  end
end
