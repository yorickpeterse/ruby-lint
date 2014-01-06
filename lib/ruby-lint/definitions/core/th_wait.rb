# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('ThWait') do |defs|
  defs.define_constant('ThWait') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('Fail') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_method('Raise') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_method('all_waits') do |method|
      method.define_rest_argument('threads')
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

    klass.define_instance_method('Fail') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_instance_method('Raise') do |method|
      method.define_optional_argument('err')
      method.define_rest_argument('rest')
    end

    klass.define_instance_method('all_waits')

    klass.define_instance_method('empty?')

    klass.define_instance_method('finished?')

    klass.define_instance_method('initialize') do |method|
      method.define_rest_argument('threads')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('join') do |method|
      method.define_rest_argument('threads')
    end

    klass.define_instance_method('join_nowait') do |method|
      method.define_rest_argument('threads')
    end

    klass.define_instance_method('next_wait') do |method|
      method.define_optional_argument('nonblock')
    end

    klass.define_instance_method('threads')
  end
end
