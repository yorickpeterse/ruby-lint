# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('TOPLEVEL_BINDING') do |defs|
  defs.define_constant('TOPLEVEL_BINDING') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('compiled_code')

    klass.define_method('compiled_code=')

    klass.define_method('constant_scope')

    klass.define_method('constant_scope=')

    klass.define_method('eval') do |method|
      method.define_argument('expr')
      method.define_optional_argument('filename')
      method.define_optional_argument('lineno')
    end

    klass.define_method('from_proc?')

    klass.define_method('line_number')

    klass.define_method('location')

    klass.define_method('location=')

    klass.define_method('proc_environment')

    klass.define_method('proc_environment=')

    klass.define_method('self')

    klass.define_method('self=')

    klass.define_method('variables')

    klass.define_method('variables=')
  end
end
