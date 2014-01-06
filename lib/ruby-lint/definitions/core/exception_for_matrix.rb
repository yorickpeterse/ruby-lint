# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('ExceptionForMatrix') do |defs|
  defs.define_constant('ExceptionForMatrix') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('included') do |method|
      method.define_argument('mod')
    end

    klass.define_instance_method('Fail') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_instance_method('Raise') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end
  end

  defs.define_constant('ExceptionForMatrix::ErrDimensionMismatch') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ExceptionForMatrix::ErrNotRegular') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ExceptionForMatrix::ErrOperationNotDefined') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end

  defs.define_constant('ExceptionForMatrix::ErrOperationNotImplemented') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

  end
end
