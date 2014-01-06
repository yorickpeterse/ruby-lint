# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('Kconv') do |defs|
  defs.define_constant('Kconv') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('guess') do |method|
      method.define_argument('str')
    end

    klass.define_method('initialize')

    klass.define_method('iseuc') do |method|
      method.define_argument('str')
    end

    klass.define_method('isjis') do |method|
      method.define_argument('str')
    end

    klass.define_method('issjis') do |method|
      method.define_argument('str')
    end

    klass.define_method('isutf8') do |method|
      method.define_argument('str')
    end

    klass.define_method('kconv') do |method|
      method.define_argument('str')
      method.define_argument('to_enc')
      method.define_optional_argument('from_enc')
    end

    klass.define_method('toeuc') do |method|
      method.define_argument('str')
    end

    klass.define_method('tojis') do |method|
      method.define_argument('str')
    end

    klass.define_method('tolocale') do |method|
      method.define_argument('str')
    end

    klass.define_method('tosjis') do |method|
      method.define_argument('str')
    end

    klass.define_method('toutf16') do |method|
      method.define_argument('str')
    end

    klass.define_method('toutf32') do |method|
      method.define_argument('str')
    end

    klass.define_method('toutf8') do |method|
      method.define_argument('str')
    end
  end

  defs.define_constant('Kconv::ASCII') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::AUTO') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('^') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('to_a')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_h')

    klass.define_method('to_i')

    klass.define_method('to_r')

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Kconv::BINARY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::EUC') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::JIS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::NOCONV') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('^') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('to_a')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_h')

    klass.define_method('to_i')

    klass.define_method('to_r')

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Kconv::SJIS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::UNKNOWN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('^') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('to_a')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_h')

    klass.define_method('to_i')

    klass.define_method('to_r')

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Kconv::UTF16') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::UTF32') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end

  defs.define_constant('Kconv::UTF8') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_method('ascii_compatible?')

    klass.define_method('dummy')

    klass.define_method('dummy?')

    klass.define_method('names')

    klass.define_method('replicate') do |method|
      method.define_argument('name')
    end
  end
end
