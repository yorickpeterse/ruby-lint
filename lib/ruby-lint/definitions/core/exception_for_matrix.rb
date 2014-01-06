# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('ExceptionForMatrix') do |defs|
  defs.define_constant('ExceptionForMatrix') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('Fail') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_method('Raise') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_method('bind') do |method|
      method.define_argument('cl')
    end

    klass.define_method('def_e2message') do |method|
      method.define_argument('c')
      method.define_argument('m')
    end

    klass.define_method('def_exception') do |method|
      method.define_argument('n')
      method.define_argument('m')
      method.define_optional_argument('s')
    end

    klass.define_method('fail') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_method('included') do |method|
      method.define_argument('mod')
    end

    klass.define_method('initialize')

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

  end

  defs.define_constant('ExceptionForMatrix::ErrNotRegular') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

  end

  defs.define_constant('ExceptionForMatrix::ErrOperationNotDefined') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

  end

  defs.define_constant('ExceptionForMatrix::ErrOperationNotImplemented') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

  end
end
