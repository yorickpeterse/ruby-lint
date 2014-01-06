# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('Encoding') do |defs|
  defs.define_constant('Encoding') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_load') do |method|
      method.define_argument('name')
    end

    klass.define_method('aliases')

    klass.define_method('compatible?') do |method|
      method.define_argument('a')
      method.define_argument('b')
    end

    klass.define_method('default_external')

    klass.define_method('default_external=') do |method|
      method.define_argument('enc')
    end

    klass.define_method('default_internal')

    klass.define_method('default_internal=') do |method|
      method.define_argument('enc')
    end

    klass.define_method('find') do |method|
      method.define_argument('name')
    end

    klass.define_method('list')

    klass.define_method('locale_charmap')

    klass.define_method('name_list')

    klass.define_instance_method('_dump') do |method|
      method.define_argument('depth')
    end

    klass.define_instance_method('ascii_compatible?')

    klass.define_instance_method('dummy')

    klass.define_instance_method('dummy?')

    klass.define_instance_method('inspect')

    klass.define_instance_method('name')

    klass.define_instance_method('names')

    klass.define_instance_method('replicate') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('to_s')
  end

  defs.define_constant('Encoding::ANSI_X3_4_1968') do |klass|
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

  defs.define_constant('Encoding::ASCII') do |klass|
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

  defs.define_constant('Encoding::ASCII_8BIT') do |klass|
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

  defs.define_constant('Encoding::BIG5') do |klass|
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

  defs.define_constant('Encoding::BIG5_HKSCS') do |klass|
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

  defs.define_constant('Encoding::BIG5_HKSCS_2008') do |klass|
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

  defs.define_constant('Encoding::BIG5_UAO') do |klass|
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

  defs.define_constant('Encoding::BINARY') do |klass|
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

  defs.define_constant('Encoding::Big5') do |klass|
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

  defs.define_constant('Encoding::Big5_HKSCS') do |klass|
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

  defs.define_constant('Encoding::Big5_HKSCS_2008') do |klass|
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

  defs.define_constant('Encoding::Big5_UAO') do |klass|
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

  defs.define_constant('Encoding::CP1250') do |klass|
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

  defs.define_constant('Encoding::CP1251') do |klass|
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

  defs.define_constant('Encoding::CP1252') do |klass|
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

  defs.define_constant('Encoding::CP1253') do |klass|
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

  defs.define_constant('Encoding::CP1254') do |klass|
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

  defs.define_constant('Encoding::CP1255') do |klass|
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

  defs.define_constant('Encoding::CP1256') do |klass|
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

  defs.define_constant('Encoding::CP1257') do |klass|
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

  defs.define_constant('Encoding::CP1258') do |klass|
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

  defs.define_constant('Encoding::CP437') do |klass|
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

  defs.define_constant('Encoding::CP50220') do |klass|
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

  defs.define_constant('Encoding::CP50221') do |klass|
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

  defs.define_constant('Encoding::CP51932') do |klass|
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

  defs.define_constant('Encoding::CP65000') do |klass|
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

  defs.define_constant('Encoding::CP65001') do |klass|
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

  defs.define_constant('Encoding::CP737') do |klass|
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

  defs.define_constant('Encoding::CP775') do |klass|
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

  defs.define_constant('Encoding::CP850') do |klass|
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

  defs.define_constant('Encoding::CP852') do |klass|
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

  defs.define_constant('Encoding::CP855') do |klass|
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

  defs.define_constant('Encoding::CP857') do |klass|
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

  defs.define_constant('Encoding::CP860') do |klass|
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

  defs.define_constant('Encoding::CP861') do |klass|
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

  defs.define_constant('Encoding::CP862') do |klass|
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

  defs.define_constant('Encoding::CP863') do |klass|
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

  defs.define_constant('Encoding::CP864') do |klass|
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

  defs.define_constant('Encoding::CP865') do |klass|
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

  defs.define_constant('Encoding::CP866') do |klass|
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

  defs.define_constant('Encoding::CP869') do |klass|
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

  defs.define_constant('Encoding::CP874') do |klass|
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

  defs.define_constant('Encoding::CP878') do |klass|
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

  defs.define_constant('Encoding::CP932') do |klass|
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

  defs.define_constant('Encoding::CP936') do |klass|
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

  defs.define_constant('Encoding::CP949') do |klass|
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

  defs.define_constant('Encoding::CP950') do |klass|
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

  defs.define_constant('Encoding::CP951') do |klass|
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

  defs.define_constant('Encoding::CSWINDOWS31J') do |klass|
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

  defs.define_constant('Encoding::CompatibilityError') do |klass|
    klass.inherits(defs.constant_proxy('EncodingError'))

  end

  defs.define_constant('Encoding::Converter') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('allocate')

    klass.define_method('asciicompat_encoding') do |method|
      method.define_argument('string_or_encoding')
    end

    klass.define_method('search_convpath') do |method|
      method.define_argument('from')
      method.define_argument('to')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('convert') do |method|
      method.define_argument('str')
    end

    klass.define_instance_method('convpath')

    klass.define_instance_method('destination_encoding')

    klass.define_instance_method('destination_encoding=')

    klass.define_instance_method('finish')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('from')
      method.define_argument('to')
      method.define_optional_argument('options')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('last_error')

    klass.define_instance_method('options')

    klass.define_instance_method('primitive_convert') do |method|
      method.define_argument('source')
      method.define_argument('target')
      method.define_optional_argument('offset')
      method.define_optional_argument('size')
      method.define_optional_argument('options')
    end

    klass.define_instance_method('primitive_errinfo')

    klass.define_instance_method('putback') do |method|
      method.define_optional_argument('maxbytes')
    end

    klass.define_instance_method('replacement')

    klass.define_instance_method('replacement=') do |method|
      method.define_argument('str')
    end

    klass.define_instance_method('source_encoding')

    klass.define_instance_method('source_encoding=')
  end

  defs.define_constant('Encoding::Converter::AFTER_OUTPUT') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::CRLF_NEWLINE_DECORATOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::CR_NEWLINE_DECORATOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::INVALID_MASK') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::INVALID_REPLACE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::PARTIAL_INPUT') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::TranscodingPath') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('source')
      method.define_argument('target')
    end

    klass.define_method('cache_loaded')

    klass.define_method('cache_loaded?')

    klass.define_method('cache_threshold?')

    klass.define_method('cache_valid?')

    klass.define_method('default_transcoders?')

    klass.define_method('disable_cache')

    klass.define_method('get_converters') do |method|
      method.define_argument('path')
    end

    klass.define_method('load_cache?')

    klass.define_method('paths')

    klass.define_method('search') do |method|
      method.define_argument('source')
      method.define_argument('target')
    end
  end

  defs.define_constant('Encoding::Converter::UNDEF_HEX_CHARREF') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::UNDEF_MASK') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::UNDEF_REPLACE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::UNIVERSAL_NEWLINE_DECORATOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::XML_ATTR_CONTENT_DECORATOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::XML_ATTR_QUOTE_DECORATOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::Converter::XML_TEXT_DECORATOR') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('o')
    end

    klass.define_method('&') do |method|
      method.define_argument('o')
    end

    klass.define_method('*') do |method|
      method.define_argument('o')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('o')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('o')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('>>') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
    end

    klass.define_method('^') do |method|
      method.define_argument('o')
    end

    klass.define_method('abs')

    klass.define_method('abs2')

    klass.define_method('angle')

    klass.define_method('arg')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('ceil')

    klass.define_method('chr') do |method|
      method.define_optional_argument('enc')
    end

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('o')
    end

    klass.define_method('divide') do |method|
      method.define_argument('o')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('downto') do |method|
      method.define_argument('val')
    end

    klass.define_method('even?')

    klass.define_method('fdiv') do |method|
      method.define_argument('n')
    end

    klass.define_method('floor')

    klass.define_method('gcd') do |method|
      method.define_argument('other')
    end

    klass.define_method('gcdlcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('integer?')

    klass.define_method('lcm') do |method|
      method.define_argument('other')
    end

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('o')
    end

    klass.define_method('next')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('odd?')

    klass.define_method('ord')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('o')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('pred')

    klass.define_method('prime?')

    klass.define_method('prime_division') do |method|
      method.define_optional_argument('generator')
    end

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('quof') do |method|
      method.define_argument('n')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
    end

    klass.define_method('rdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('real')

    klass.define_method('real?')

    klass.define_method('rect')

    klass.define_method('rectangular')

    klass.define_method('redo_compare') do |method|
      method.define_argument('meth')
      method.define_argument('right')
    end

    klass.define_method('remainder') do |method|
      method.define_argument('other')
    end

    klass.define_method('round') do |method|
      method.define_optional_argument('ndigits')
    end

    klass.define_method('rpower') do |method|
      method.define_argument('other')
    end

    klass.define_method('size')

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('succ')

    klass.define_method('times')

    klass.define_method('to_bn')

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_r')

    klass.define_method('truncate')

    klass.define_method('upto') do |method|
      method.define_argument('val')
    end

    klass.define_method('zero?')

    klass.define_method('|') do |method|
      method.define_argument('o')
    end

    klass.define_method('~')
  end

  defs.define_constant('Encoding::ConverterNotFoundError') do |klass|
    klass.inherits(defs.constant_proxy('EncodingError'))

  end

  defs.define_constant('Encoding::CsWindows31J') do |klass|
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

  defs.define_constant('Encoding::EMACS_MULE') do |klass|
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

  defs.define_constant('Encoding::EUCCN') do |klass|
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

  defs.define_constant('Encoding::EUCJP') do |klass|
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

  defs.define_constant('Encoding::EUCJP_MS') do |klass|
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

  defs.define_constant('Encoding::EUCKR') do |klass|
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

  defs.define_constant('Encoding::EUCTW') do |klass|
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

  defs.define_constant('Encoding::EUC_CN') do |klass|
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

  defs.define_constant('Encoding::EUC_JISX0213') do |klass|
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

  defs.define_constant('Encoding::EUC_JP') do |klass|
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

  defs.define_constant('Encoding::EUC_JP_2004') do |klass|
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

  defs.define_constant('Encoding::EUC_JP_MS') do |klass|
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

  defs.define_constant('Encoding::EUC_KR') do |klass|
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

  defs.define_constant('Encoding::EUC_TW') do |klass|
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

  defs.define_constant('Encoding::Emacs_Mule') do |klass|
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

  defs.define_constant('Encoding::EncodingList') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('&') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('multiplier')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('obj')
    end

    klass.define_method('[]') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('index')
      method.define_argument('ent')
      method.define_optional_argument('fin')
    end

    klass.define_method('__append__') do |method|
      method.define_argument('obj')
    end

    klass.define_method('__rescue_match__') do |method|
      method.define_argument('exception')
    end

    klass.define_method('abbrev') do |method|
      method.define_optional_argument('pattern')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('assoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('clear')

    klass.define_method('collect')

    klass.define_method('collect!')

    klass.define_method('collect_concat')

    klass.define_method('combination') do |method|
      method.define_argument('num')
    end

    klass.define_method('compact')

    klass.define_method('compact!')

    klass.define_method('concat') do |method|
      method.define_argument('other')
    end

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('delete') do |method|
      method.define_argument('obj')
    end

    klass.define_method('delete_at') do |method|
      method.define_argument('idx')
    end

    klass.define_method('delete_if')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_index')

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('fetch') do |method|
      method.define_argument('idx')
      method.define_optional_argument('default')
    end

    klass.define_method('fill') do |method|
      method.define_optional_argument('a')
      method.define_optional_argument('b')
      method.define_optional_argument('c')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('flatten') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('flatten!') do |method|
      method.define_optional_argument('level')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('index') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('insert') do |method|
      method.define_argument('idx')
      method.define_rest_argument('items')
    end

    klass.define_method('join') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('keep_if')

    klass.define_method('last') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('map')

    klass.define_method('map!')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('new_range') do |method|
      method.define_argument('start')
      method.define_argument('count')
    end

    klass.define_method('new_reserved') do |method|
      method.define_argument('count')
    end

    klass.define_method('nitems')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('pack') do |method|
      method.define_argument('directives')
    end

    klass.define_method('partition')

    klass.define_method('permutation') do |method|
      method.define_optional_argument('num')
    end

    klass.define_method('pop') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('product') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('push') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('quote')

    klass.define_method('rassoc') do |method|
      method.define_argument('obj')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reject!')

    klass.define_method('repeated_combination') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('repeated_permutation') do |method|
      method.define_argument('combination_size')
    end

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse')

    klass.define_method('reverse!')

    klass.define_method('reverse_each')

    klass.define_method('rindex') do |method|
      method.define_optional_argument('obj')
    end

    klass.define_method('rotate') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('rotate!') do |method|
      method.define_optional_argument('cnt')
    end

    klass.define_method('sample') do |method|
      method.define_optional_argument('count')
      method.define_optional_argument('options')
    end

    klass.define_method('select')

    klass.define_method('select!')

    klass.define_method('shelljoin')

    klass.define_method('shift') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('shuffle') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('shuffle!') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('arg1')
      method.define_optional_argument('arg2')
    end

    klass.define_method('slice!') do |method|
      method.define_argument('start')
      method.define_optional_argument('length')
    end

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort!')

    klass.define_method('sort_by')

    klass.define_method('sort_by!')

    klass.define_method('sort_inplace')

    klass.define_method('start')

    klass.define_method('start=')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a')

    klass.define_method('to_ary')

    klass.define_method('to_csv') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('to_tuple')

    klass.define_method('total')

    klass.define_method('total=')

    klass.define_method('transpose')

    klass.define_method('tuple')

    klass.define_method('tuple=')

    klass.define_method('uniq')

    klass.define_method('uniq!')

    klass.define_method('unshift') do |method|
      method.define_rest_argument('values')
    end

    klass.define_method('values_at') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('yaml_initialize') do |method|
      method.define_argument('tag')
      method.define_argument('val')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('others')
    end

    klass.define_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('Encoding::EncodingMap') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('val')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('bins')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('collect')

    klass.define_method('collect_concat')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('duplicate')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('fetch') do |method|
      method.define_argument('key')
      method.define_argument('return_on_failure')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('has_key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('keys')

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('map')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('key')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reverse_each')

    klass.define_method('select')

    klass.define_method('size')

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('values')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Encoding::EucCN') do |klass|
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

  defs.define_constant('Encoding::EucJP') do |klass|
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

  defs.define_constant('Encoding::EucJP_ms') do |klass|
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

  defs.define_constant('Encoding::EucKR') do |klass|
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

  defs.define_constant('Encoding::EucTW') do |klass|
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

  defs.define_constant('Encoding::GB12345') do |klass|
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

  defs.define_constant('Encoding::GB18030') do |klass|
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

  defs.define_constant('Encoding::GB1988') do |klass|
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

  defs.define_constant('Encoding::GB2312') do |klass|
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

  defs.define_constant('Encoding::GBK') do |klass|
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

  defs.define_constant('Encoding::IBM437') do |klass|
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

  defs.define_constant('Encoding::IBM737') do |klass|
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

  defs.define_constant('Encoding::IBM775') do |klass|
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

  defs.define_constant('Encoding::IBM850') do |klass|
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

  defs.define_constant('Encoding::IBM852') do |klass|
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

  defs.define_constant('Encoding::IBM855') do |klass|
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

  defs.define_constant('Encoding::IBM857') do |klass|
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

  defs.define_constant('Encoding::IBM860') do |klass|
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

  defs.define_constant('Encoding::IBM861') do |klass|
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

  defs.define_constant('Encoding::IBM862') do |klass|
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

  defs.define_constant('Encoding::IBM863') do |klass|
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

  defs.define_constant('Encoding::IBM864') do |klass|
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

  defs.define_constant('Encoding::IBM865') do |klass|
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

  defs.define_constant('Encoding::IBM866') do |klass|
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

  defs.define_constant('Encoding::IBM869') do |klass|
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

  defs.define_constant('Encoding::ISO2022_JP') do |klass|
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

  defs.define_constant('Encoding::ISO2022_JP2') do |klass|
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

  defs.define_constant('Encoding::ISO8859_1') do |klass|
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

  defs.define_constant('Encoding::ISO8859_10') do |klass|
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

  defs.define_constant('Encoding::ISO8859_11') do |klass|
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

  defs.define_constant('Encoding::ISO8859_13') do |klass|
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

  defs.define_constant('Encoding::ISO8859_14') do |klass|
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

  defs.define_constant('Encoding::ISO8859_15') do |klass|
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

  defs.define_constant('Encoding::ISO8859_16') do |klass|
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

  defs.define_constant('Encoding::ISO8859_2') do |klass|
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

  defs.define_constant('Encoding::ISO8859_3') do |klass|
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

  defs.define_constant('Encoding::ISO8859_4') do |klass|
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

  defs.define_constant('Encoding::ISO8859_5') do |klass|
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

  defs.define_constant('Encoding::ISO8859_6') do |klass|
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

  defs.define_constant('Encoding::ISO8859_7') do |klass|
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

  defs.define_constant('Encoding::ISO8859_8') do |klass|
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

  defs.define_constant('Encoding::ISO8859_9') do |klass|
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

  defs.define_constant('Encoding::ISO_2022_JP') do |klass|
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

  defs.define_constant('Encoding::ISO_2022_JP_2') do |klass|
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

  defs.define_constant('Encoding::ISO_2022_JP_KDDI') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_1') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_10') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_11') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_13') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_14') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_15') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_16') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_2') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_3') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_4') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_5') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_6') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_7') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_8') do |klass|
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

  defs.define_constant('Encoding::ISO_8859_9') do |klass|
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

  defs.define_constant('Encoding::InvalidByteSequenceError') do |klass|
    klass.inherits(defs.constant_proxy('EncodingError'))

    klass.define_instance_method('destination_encoding')

    klass.define_instance_method('destination_encoding_name')

    klass.define_instance_method('error_bytes')

    klass.define_instance_method('incomplete_input?')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('message')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('readagain_bytes')

    klass.define_instance_method('source_encoding')

    klass.define_instance_method('source_encoding_name')
  end

  defs.define_constant('Encoding::KOI8_R') do |klass|
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

  defs.define_constant('Encoding::KOI8_U') do |klass|
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

  defs.define_constant('Encoding::LocaleCharmap') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('args')
    end

    klass.define_method('*') do |method|
      method.define_argument('num')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('<<') do |method|
      method.define_argument('other')
    end

    klass.define_method('[]') do |method|
      method.define_argument('index')
      method.define_optional_argument('other')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('index')
      method.define_argument('count_or_replacement')
      method.define_optional_argument('replacement')
    end

    klass.define_method('__crypt__') do |method|
      method.define_argument('other_str')
    end

    klass.define_method('__data__')

    klass.define_method('__data__=')

    klass.define_method('append') do |method|
      method.define_argument('str')
    end

    klass.define_method('apply_and!') do |method|
      method.define_argument('other')
    end

    klass.define_method('ascii_only=')

    klass.define_method('ascii_only?')

    klass.define_method('b')

    klass.define_method('between?') do |method|
      method.define_argument('min')
      method.define_argument('max')
    end

    klass.define_method('block_scanf') do |method|
      method.define_argument('fstr')
      method.define_block_argument('b')
    end

    klass.define_method('byte_append') do |method|
      method.define_argument('str')
    end

    klass.define_method('bytes')

    klass.define_method('bytesize')

    klass.define_method('byteslice') do |method|
      method.define_argument('index_or_range')
      method.define_optional_argument('length')
    end

    klass.define_method('capitalize')

    klass.define_method('capitalize!')

    klass.define_method('casecmp') do |method|
      method.define_argument('to')
    end

    klass.define_method('center') do |method|
      method.define_argument('width')
      method.define_optional_argument('padding')
    end

    klass.define_method('chars')

    klass.define_method('chomp') do |method|
      method.define_optional_argument('separator')
    end

    klass.define_method('chomp!') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('chop')

    klass.define_method('chop!')

    klass.define_method('chr')

    klass.define_method('chr_at') do |method|
      method.define_argument('byte')
    end

    klass.define_method('clear')

    klass.define_method('codepoints')

    klass.define_method('compare_substring') do |method|
      method.define_argument('other')
      method.define_argument('start')
      method.define_argument('size')
    end

    klass.define_method('concat') do |method|
      method.define_argument('other')
    end

    klass.define_method('convert_float')

    klass.define_method('count') do |method|
      method.define_rest_argument('strings')
    end

    klass.define_method('count_table') do |method|
      method.define_rest_argument('strings')
    end

    klass.define_method('crypt') do |method|
      method.define_argument('other_str')
    end

    klass.define_method('data')

    klass.define_method('data=')

    klass.define_method('delete') do |method|
      method.define_rest_argument('strings')
    end

    klass.define_method('delete!') do |method|
      method.define_rest_argument('strings')
    end

    klass.define_method('downcase')

    klass.define_method('downcase!')

    klass.define_method('dump')

    klass.define_method('each_byte')

    klass.define_method('each_char')

    klass.define_method('each_codepoint')

    klass.define_method('each_line') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('empty?')

    klass.define_method('encode') do |method|
      method.define_optional_argument('to')
      method.define_optional_argument('from')
      method.define_optional_argument('options')
    end

    klass.define_method('encode!') do |method|
      method.define_optional_argument('to')
      method.define_optional_argument('from')
      method.define_optional_argument('options')
    end

    klass.define_method('encoding')

    klass.define_method('encoding=')

    klass.define_method('end_with?') do |method|
      method.define_rest_argument('suffixes')
    end

    klass.define_method('ext') do |method|
      method.define_optional_argument('newext')
    end

    klass.define_method('find_character') do |method|
      method.define_argument('offset')
    end

    klass.define_method('find_string') do |method|
      method.define_argument('pattern')
      method.define_argument('start')
    end

    klass.define_method('find_string_reverse') do |method|
      method.define_argument('pattern')
      method.define_argument('start')
    end

    klass.define_method('force_encoding') do |method|
      method.define_argument('enc')
    end

    klass.define_method('funcall_style')

    klass.define_method('getbyte') do |method|
      method.define_argument('index')
    end

    klass.define_method('gsub') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('replacement')
    end

    klass.define_method('gsub!') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('replacement')
    end

    klass.define_method('hex')

    klass.define_method('index') do |method|
      method.define_argument('str')
      method.define_optional_argument('start')
    end

    klass.define_method('insert') do |method|
      method.define_argument('index')
      method.define_argument('other')
    end

    klass.define_method('intern')

    klass.define_method('is_binary_data?')

    klass.define_method('is_complex_yaml?')

    klass.define_method('iseuc')

    klass.define_method('isjis')

    klass.define_method('issjis')

    klass.define_method('isutf8')

    klass.define_method('kconv') do |method|
      method.define_argument('to_enc')
      method.define_optional_argument('from_enc')
    end

    klass.define_method('length')

    klass.define_method('lines') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('ljust') do |method|
      method.define_argument('width')
      method.define_optional_argument('padding')
    end

    klass.define_method('lstrip')

    klass.define_method('lstrip!')

    klass.define_method('match') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('pos')
    end

    klass.define_method('modify!')

    klass.define_method('next')

    klass.define_method('next!')

    klass.define_method('num_bytes')

    klass.define_method('num_bytes=') do |method|
      method.define_argument('bytes')
    end

    klass.define_method('oct')

    klass.define_method('ord')

    klass.define_method('parse_csv') do |method|
      method.define_optional_argument('options')
    end

    klass.define_method('partition') do |method|
      method.define_optional_argument('pattern')
    end

    klass.define_method('pathmap') do |method|
      method.define_optional_argument('spec')
      method.define_block_argument('block')
    end

    klass.define_method('pathmap_explode')

    klass.define_method('pathmap_partial') do |method|
      method.define_argument('n')
    end

    klass.define_method('pathmap_replace') do |method|
      method.define_argument('patterns')
      method.define_block_argument('block')
    end

    klass.define_method('prefix?') do |method|
      method.define_argument('other')
    end

    klass.define_method('quote')

    klass.define_method('replace') do |method|
      method.define_argument('other')
    end

    klass.define_method('reverse')

    klass.define_method('reverse!')

    klass.define_method('rindex') do |method|
      method.define_argument('sub')
      method.define_optional_argument('finish')
    end

    klass.define_method('rjust') do |method|
      method.define_argument('width')
      method.define_optional_argument('padding')
    end

    klass.define_method('rpartition') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('rstrip')

    klass.define_method('rstrip!')

    klass.define_method('sans_arguments')

    klass.define_method('scan') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('scanf') do |method|
      method.define_argument('fstr')
      method.define_block_argument('b')
    end

    klass.define_method('secure_compare') do |method|
      method.define_argument('other')
    end

    klass.define_method('setbyte') do |method|
      method.define_argument('index')
      method.define_argument('byte')
    end

    klass.define_method('shared!')

    klass.define_method('shellescape')

    klass.define_method('shellsplit')

    klass.define_method('shorten!') do |method|
      method.define_argument('size')
    end

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('index')
      method.define_optional_argument('other')
    end

    klass.define_method('slice!') do |method|
      method.define_argument('one')
      method.define_optional_argument('two')
    end

    klass.define_method('snake_case')

    klass.define_method('split') do |method|
      method.define_optional_argument('pattern')
      method.define_optional_argument('limit')
    end

    klass.define_method('squeeze') do |method|
      method.define_rest_argument('strings')
    end

    klass.define_method('squeeze!') do |method|
      method.define_rest_argument('strings')
    end

    klass.define_method('start_with?') do |method|
      method.define_rest_argument('prefixes')
    end

    klass.define_method('strip')

    klass.define_method('strip!')

    klass.define_method('sub') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('replacement')
    end

    klass.define_method('sub!') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('replacement')
    end

    klass.define_method('substring') do |method|
      method.define_argument('start')
      method.define_argument('count')
    end

    klass.define_method('succ')

    klass.define_method('succ!')

    klass.define_method('suffix?') do |method|
      method.define_argument('other')
    end

    klass.define_method('sum') do |method|
      method.define_optional_argument('bits')
    end

    klass.define_method('swapcase')

    klass.define_method('swapcase!')

    klass.define_method('to_ast') do |method|
      method.define_optional_argument('name')
      method.define_optional_argument('line')
    end

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i') do |method|
      method.define_optional_argument('base')
    end

    klass.define_method('to_inum') do |method|
      method.define_argument('base')
      method.define_argument('check')
    end

    klass.define_method('to_json_raw')

    klass.define_method('to_json_raw_object')

    klass.define_method('to_r')

    klass.define_method('to_sexp') do |method|
      method.define_optional_argument('name')
      method.define_optional_argument('line')
    end

    klass.define_method('to_str')

    klass.define_method('to_sub_replacement') do |method|
      method.define_argument('result')
      method.define_argument('match')
    end

    klass.define_method('to_sym')

    klass.define_method('toeuc')

    klass.define_method('tojis')

    klass.define_method('tolocale')

    klass.define_method('tosjis')

    klass.define_method('toutf16')

    klass.define_method('toutf32')

    klass.define_method('toutf8')

    klass.define_method('tr') do |method|
      method.define_argument('source')
      method.define_argument('replacement')
    end

    klass.define_method('tr!') do |method|
      method.define_argument('source')
      method.define_argument('replacement')
    end

    klass.define_method('tr_cpp')

    klass.define_method('tr_expand!') do |method|
      method.define_argument('limit')
      method.define_argument('invalid_as_empty')
    end

    klass.define_method('tr_s') do |method|
      method.define_argument('source')
      method.define_argument('replacement')
    end

    klass.define_method('tr_s!') do |method|
      method.define_argument('source')
      method.define_argument('replacement')
    end

    klass.define_method('tr_trans') do |method|
      method.define_argument('source')
      method.define_argument('replacement')
      method.define_argument('squeeze')
    end

    klass.define_method('transform') do |method|
      method.define_argument('tbl')
    end

    klass.define_method('unpack') do |method|
      method.define_argument('directives')
    end

    klass.define_method('unspace')

    klass.define_method('upcase')

    klass.define_method('upcase!')

    klass.define_method('upto') do |method|
      method.define_argument('stop')
      method.define_optional_argument('exclusive')
    end

    klass.define_method('valid_encoding=')

    klass.define_method('valid_encoding?')
  end

  defs.define_constant('Encoding::MACCENTEURO') do |klass|
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

  defs.define_constant('Encoding::MACCROATIAN') do |klass|
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

  defs.define_constant('Encoding::MACCYRILLIC') do |klass|
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

  defs.define_constant('Encoding::MACGREEK') do |klass|
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

  defs.define_constant('Encoding::MACICELAND') do |klass|
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

  defs.define_constant('Encoding::MACJAPAN') do |klass|
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

  defs.define_constant('Encoding::MACJAPANESE') do |klass|
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

  defs.define_constant('Encoding::MACROMAN') do |klass|
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

  defs.define_constant('Encoding::MACROMANIA') do |klass|
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

  defs.define_constant('Encoding::MACTHAI') do |klass|
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

  defs.define_constant('Encoding::MACTURKISH') do |klass|
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

  defs.define_constant('Encoding::MACUKRAINE') do |klass|
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

  defs.define_constant('Encoding::MacCentEuro') do |klass|
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

  defs.define_constant('Encoding::MacCroatian') do |klass|
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

  defs.define_constant('Encoding::MacCyrillic') do |klass|
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

  defs.define_constant('Encoding::MacGreek') do |klass|
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

  defs.define_constant('Encoding::MacIceland') do |klass|
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

  defs.define_constant('Encoding::MacJapan') do |klass|
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

  defs.define_constant('Encoding::MacJapanese') do |klass|
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

  defs.define_constant('Encoding::MacRoman') do |klass|
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

  defs.define_constant('Encoding::MacRomania') do |klass|
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

  defs.define_constant('Encoding::MacThai') do |klass|
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

  defs.define_constant('Encoding::MacTurkish') do |klass|
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

  defs.define_constant('Encoding::MacUkraine') do |klass|
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

  defs.define_constant('Encoding::PCK') do |klass|
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

  defs.define_constant('Encoding::SHIFT_JIS') do |klass|
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

  defs.define_constant('Encoding::SJIS') do |klass|
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

  defs.define_constant('Encoding::SJIS_DOCOMO') do |klass|
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

  defs.define_constant('Encoding::SJIS_DoCoMo') do |klass|
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

  defs.define_constant('Encoding::SJIS_KDDI') do |klass|
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

  defs.define_constant('Encoding::SJIS_SOFTBANK') do |klass|
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

  defs.define_constant('Encoding::SJIS_SoftBank') do |klass|
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

  defs.define_constant('Encoding::STATELESS_ISO_2022_JP') do |klass|
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

  defs.define_constant('Encoding::STATELESS_ISO_2022_JP_KDDI') do |klass|
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

  defs.define_constant('Encoding::Shift_JIS') do |klass|
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

  defs.define_constant('Encoding::Stateless_ISO_2022_JP') do |klass|
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

  defs.define_constant('Encoding::Stateless_ISO_2022_JP_KDDI') do |klass|
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

  defs.define_constant('Encoding::TIS_620') do |klass|
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

  defs.define_constant('Encoding::Transcoding') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('inspect')

    klass.define_instance_method('source')

    klass.define_instance_method('source=')

    klass.define_instance_method('target')

    klass.define_instance_method('target=')
  end

  defs.define_constant('Encoding::TranscodingMap') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('key')
    end

    klass.define_method('[]=') do |method|
      method.define_argument('key')
      method.define_argument('val')
    end

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('bins')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('collect')

    klass.define_method('collect_concat')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('delete') do |method|
      method.define_argument('key')
    end

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('duplicate')

    klass.define_method('each')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('empty?')

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('fetch') do |method|
      method.define_argument('key')
      method.define_argument('return_on_failure')
    end

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('has_key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('key?') do |method|
      method.define_argument('key')
    end

    klass.define_method('keys')

    klass.define_method('lazy')

    klass.define_method('length')

    klass.define_method('map')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('key')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reverse_each')

    klass.define_method('select')

    klass.define_method('size')

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('values')

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Encoding::UCS_2BE') do |klass|
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

  defs.define_constant('Encoding::UCS_4BE') do |klass|
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

  defs.define_constant('Encoding::UCS_4LE') do |klass|
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

  defs.define_constant('Encoding::US_ASCII') do |klass|
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

  defs.define_constant('Encoding::UTF8_DOCOMO') do |klass|
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

  defs.define_constant('Encoding::UTF8_DoCoMo') do |klass|
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

  defs.define_constant('Encoding::UTF8_KDDI') do |klass|
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

  defs.define_constant('Encoding::UTF8_MAC') do |klass|
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

  defs.define_constant('Encoding::UTF8_SOFTBANK') do |klass|
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

  defs.define_constant('Encoding::UTF8_SoftBank') do |klass|
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

  defs.define_constant('Encoding::UTF_16') do |klass|
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

  defs.define_constant('Encoding::UTF_16BE') do |klass|
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

  defs.define_constant('Encoding::UTF_16LE') do |klass|
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

  defs.define_constant('Encoding::UTF_32') do |klass|
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

  defs.define_constant('Encoding::UTF_32BE') do |klass|
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

  defs.define_constant('Encoding::UTF_32LE') do |klass|
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

  defs.define_constant('Encoding::UTF_7') do |klass|
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

  defs.define_constant('Encoding::UTF_8') do |klass|
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

  defs.define_constant('Encoding::UTF_8_HFS') do |klass|
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

  defs.define_constant('Encoding::UTF_8_MAC') do |klass|
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

  defs.define_constant('Encoding::UndefinedConversionError') do |klass|
    klass.inherits(defs.constant_proxy('EncodingError'))

    klass.define_instance_method('destination_encoding')

    klass.define_instance_method('destination_encoding_name')

    klass.define_instance_method('error_char')

    klass.define_instance_method('source_encoding')

    klass.define_instance_method('source_encoding_name')
  end

  defs.define_constant('Encoding::WINDOWS_1250') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1251') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1252') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1253') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1254') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1255') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1256') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1257') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_1258') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_31J') do |klass|
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

  defs.define_constant('Encoding::WINDOWS_874') do |klass|
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

  defs.define_constant('Encoding::Windows_1250') do |klass|
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

  defs.define_constant('Encoding::Windows_1251') do |klass|
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

  defs.define_constant('Encoding::Windows_1252') do |klass|
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

  defs.define_constant('Encoding::Windows_1253') do |klass|
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

  defs.define_constant('Encoding::Windows_1254') do |klass|
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

  defs.define_constant('Encoding::Windows_1255') do |klass|
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

  defs.define_constant('Encoding::Windows_1256') do |klass|
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

  defs.define_constant('Encoding::Windows_1257') do |klass|
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

  defs.define_constant('Encoding::Windows_1258') do |klass|
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

  defs.define_constant('Encoding::Windows_31J') do |klass|
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

  defs.define_constant('Encoding::Windows_874') do |klass|
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
