# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('EXPORT_PREFIX') do |defs|
  defs.define_constant('EXPORT_PREFIX') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('^') do |method|
      method.define_argument('other')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end
end
