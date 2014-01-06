# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('NameError') do |defs|
  defs.define_constant('NameError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

    klass.define_instance_method('initialize') do |method|
      method.define_rest_argument('args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')
  end
end
