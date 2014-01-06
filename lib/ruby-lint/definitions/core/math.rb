# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('Math') do |defs|
  defs.define_constant('Math') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('Math'))

    klass.define_method('acos') do |method|
      method.define_argument('z')
    end

    klass.define_method('acos!') do |method|
      method.define_argument('x')
    end

    klass.define_method('acosh') do |method|
      method.define_argument('z')
    end

    klass.define_method('acosh!') do |method|
      method.define_argument('x')
    end

    klass.define_method('asin') do |method|
      method.define_argument('z')
    end

    klass.define_method('asin!') do |method|
      method.define_argument('x')
    end

    klass.define_method('asinh') do |method|
      method.define_argument('z')
    end

    klass.define_method('asinh!') do |method|
      method.define_argument('x')
    end

    klass.define_method('atan') do |method|
      method.define_argument('z')
    end

    klass.define_method('atan!') do |method|
      method.define_argument('x')
    end

    klass.define_method('atan2') do |method|
      method.define_argument('y')
      method.define_argument('x')
    end

    klass.define_method('atan2!') do |method|
      method.define_argument('y')
      method.define_argument('x')
    end

    klass.define_method('atanh') do |method|
      method.define_argument('z')
    end

    klass.define_method('atanh!') do |method|
      method.define_argument('x')
    end

    klass.define_method('cbrt') do |method|
      method.define_argument('z')
    end

    klass.define_method('cbrt!') do |method|
      method.define_argument('x')
    end

    klass.define_method('cos') do |method|
      method.define_argument('z')
    end

    klass.define_method('cos!') do |method|
      method.define_argument('x')
    end

    klass.define_method('cosh') do |method|
      method.define_argument('z')
    end

    klass.define_method('cosh!') do |method|
      method.define_argument('x')
    end

    klass.define_method('erf') do |method|
      method.define_argument('x')
    end

    klass.define_method('erfc') do |method|
      method.define_argument('x')
    end

    klass.define_method('exp') do |method|
      method.define_argument('z')
    end

    klass.define_method('exp!') do |method|
      method.define_argument('x')
    end

    klass.define_method('frexp') do |method|
      method.define_argument('x')
    end

    klass.define_method('gamma') do |method|
      method.define_argument('x')
    end

    klass.define_method('hypot') do |method|
      method.define_argument('x')
      method.define_argument('y')
    end

    klass.define_method('ldexp') do |method|
      method.define_argument('x')
      method.define_argument('n')
    end

    klass.define_method('lgamma') do |method|
      method.define_argument('x')
    end

    klass.define_method('log') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('log!') do |method|
      method.define_argument('x')
      method.define_optional_argument('base')
    end

    klass.define_method('log10') do |method|
      method.define_argument('z')
    end

    klass.define_method('log10!') do |method|
      method.define_argument('x')
    end

    klass.define_method('log2') do |method|
      method.define_argument('z')
    end

    klass.define_method('log2!') do |method|
      method.define_argument('x')
    end

    klass.define_method('rsqrt') do |method|
      method.define_argument('a')
    end

    klass.define_method('sin') do |method|
      method.define_argument('z')
    end

    klass.define_method('sin!') do |method|
      method.define_argument('x')
    end

    klass.define_method('sinh') do |method|
      method.define_argument('z')
    end

    klass.define_method('sinh!') do |method|
      method.define_argument('x')
    end

    klass.define_method('sqrt') do |method|
      method.define_argument('a')
    end

    klass.define_method('sqrt!') do |method|
      method.define_argument('x')
    end

    klass.define_method('tan') do |method|
      method.define_argument('z')
    end

    klass.define_method('tan!') do |method|
      method.define_argument('x')
    end

    klass.define_method('tanh') do |method|
      method.define_argument('z')
    end

    klass.define_method('tanh!') do |method|
      method.define_argument('x')
    end
  end
end
