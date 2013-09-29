##
# Constant: Encoding
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

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

##
# Constant: Encoding::ANSI_X3_4_1968
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ANSI_X3_4_1968') do |klass|
end

##
# Constant: Encoding::ASCII
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ASCII') do |klass|
end

##
# Constant: Encoding::ASCII_8BIT
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ASCII_8BIT') do |klass|
end

##
# Constant: Encoding::BIG5
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::BIG5') do |klass|
end

##
# Constant: Encoding::BIG5_HKSCS
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::BIG5_HKSCS') do |klass|
end

##
# Constant: Encoding::BIG5_HKSCS_2008
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::BIG5_HKSCS_2008') do |klass|
end

##
# Constant: Encoding::BIG5_UAO
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::BIG5_UAO') do |klass|
end

##
# Constant: Encoding::BINARY
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::BINARY') do |klass|
end

##
# Constant: Encoding::Big5
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Big5') do |klass|
end

##
# Constant: Encoding::Big5_HKSCS
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Big5_HKSCS') do |klass|
end

##
# Constant: Encoding::Big5_HKSCS_2008
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Big5_HKSCS_2008') do |klass|
end

##
# Constant: Encoding::Big5_UAO
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Big5_UAO') do |klass|
end

##
# Constant: Encoding::CP1250
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1250') do |klass|
end

##
# Constant: Encoding::CP1251
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1251') do |klass|
end

##
# Constant: Encoding::CP1252
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1252') do |klass|
end

##
# Constant: Encoding::CP1253
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1253') do |klass|
end

##
# Constant: Encoding::CP1254
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1254') do |klass|
end

##
# Constant: Encoding::CP1255
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1255') do |klass|
end

##
# Constant: Encoding::CP1256
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1256') do |klass|
end

##
# Constant: Encoding::CP1257
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1257') do |klass|
end

##
# Constant: Encoding::CP1258
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP1258') do |klass|
end

##
# Constant: Encoding::CP437
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP437') do |klass|
end

##
# Constant: Encoding::CP50220
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP50220') do |klass|
end

##
# Constant: Encoding::CP50221
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP50221') do |klass|
end

##
# Constant: Encoding::CP51932
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP51932') do |klass|
end

##
# Constant: Encoding::CP65000
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP65000') do |klass|
end

##
# Constant: Encoding::CP65001
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP65001') do |klass|
end

##
# Constant: Encoding::CP737
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP737') do |klass|
end

##
# Constant: Encoding::CP775
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP775') do |klass|
end

##
# Constant: Encoding::CP850
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP850') do |klass|
end

##
# Constant: Encoding::CP852
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP852') do |klass|
end

##
# Constant: Encoding::CP855
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP855') do |klass|
end

##
# Constant: Encoding::CP857
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP857') do |klass|
end

##
# Constant: Encoding::CP860
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP860') do |klass|
end

##
# Constant: Encoding::CP861
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP861') do |klass|
end

##
# Constant: Encoding::CP862
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP862') do |klass|
end

##
# Constant: Encoding::CP863
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP863') do |klass|
end

##
# Constant: Encoding::CP864
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP864') do |klass|
end

##
# Constant: Encoding::CP865
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP865') do |klass|
end

##
# Constant: Encoding::CP866
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP866') do |klass|
end

##
# Constant: Encoding::CP869
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP869') do |klass|
end

##
# Constant: Encoding::CP874
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP874') do |klass|
end

##
# Constant: Encoding::CP878
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP878') do |klass|
end

##
# Constant: Encoding::CP932
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP932') do |klass|
end

##
# Constant: Encoding::CP936
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP936') do |klass|
end

##
# Constant: Encoding::CP949
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP949') do |klass|
end

##
# Constant: Encoding::CP950
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP950') do |klass|
end

##
# Constant: Encoding::CP951
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CP951') do |klass|
end

##
# Constant: Encoding::CSWINDOWS31J
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CSWINDOWS31J') do |klass|
end

##
# Constant: Encoding::CompatibilityError
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CompatibilityError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('EncodingError'))
end

##
# Constant: Encoding::Converter
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

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
  end

  klass.define_instance_method('last_error')

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

##
# Constant: Encoding::Converter::AFTER_OUTPUT
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::AFTER_OUTPUT') do |klass|
end

##
# Constant: Encoding::Converter::CRLF_NEWLINE_DECORATOR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::CRLF_NEWLINE_DECORATOR') do |klass|
end

##
# Constant: Encoding::Converter::CR_NEWLINE_DECORATOR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::CR_NEWLINE_DECORATOR') do |klass|
end

##
# Constant: Encoding::Converter::INVALID_MASK
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::INVALID_MASK') do |klass|
end

##
# Constant: Encoding::Converter::INVALID_REPLACE
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::INVALID_REPLACE') do |klass|
end

##
# Constant: Encoding::Converter::PARTIAL_INPUT
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::PARTIAL_INPUT') do |klass|
end

##
# Constant: Encoding::Converter::TranscodingPath
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::TranscodingPath') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('[]') do |method|
    method.define_argument('source')
    method.define_argument('target')
  end

  klass.define_method('__class_init__')

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

##
# Constant: Encoding::Converter::UNDEF_HEX_CHARREF
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::UNDEF_HEX_CHARREF') do |klass|
end

##
# Constant: Encoding::Converter::UNDEF_MASK
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::UNDEF_MASK') do |klass|
end

##
# Constant: Encoding::Converter::UNDEF_REPLACE
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::UNDEF_REPLACE') do |klass|
end

##
# Constant: Encoding::Converter::UNIVERSAL_NEWLINE_DECORATOR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::UNIVERSAL_NEWLINE_DECORATOR') do |klass|
end

##
# Constant: Encoding::Converter::XML_ATTR_CONTENT_DECORATOR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::XML_ATTR_CONTENT_DECORATOR') do |klass|
end

##
# Constant: Encoding::Converter::XML_ATTR_QUOTE_DECORATOR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::XML_ATTR_QUOTE_DECORATOR') do |klass|
end

##
# Constant: Encoding::Converter::XML_TEXT_DECORATOR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Converter::XML_TEXT_DECORATOR') do |klass|
end

##
# Constant: Encoding::ConverterNotFoundError
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ConverterNotFoundError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('EncodingError'))
end

##
# Constant: Encoding::CsWindows31J
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::CsWindows31J') do |klass|
end

##
# Constant: Encoding::EMACS_MULE
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EMACS_MULE') do |klass|
end

##
# Constant: Encoding::EUCCN
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUCCN') do |klass|
end

##
# Constant: Encoding::EUCJP
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUCJP') do |klass|
end

##
# Constant: Encoding::EUCJP_MS
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUCJP_MS') do |klass|
end

##
# Constant: Encoding::EUCKR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUCKR') do |klass|
end

##
# Constant: Encoding::EUCTW
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUCTW') do |klass|
end

##
# Constant: Encoding::EUC_CN
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUC_CN') do |klass|
end

##
# Constant: Encoding::EUC_JP
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUC_JP') do |klass|
end

##
# Constant: Encoding::EUC_JP_MS
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUC_JP_MS') do |klass|
end

##
# Constant: Encoding::EUC_KR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUC_KR') do |klass|
end

##
# Constant: Encoding::EUC_TW
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EUC_TW') do |klass|
end

##
# Constant: Encoding::Emacs_Mule
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Emacs_Mule') do |klass|
end

##
# Constant: Encoding::EncodingList
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EncodingList') do |klass|
end

##
# Constant: Encoding::EncodingMap
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EncodingMap') do |klass|
end

##
# Constant: Encoding::EucCN
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EucCN') do |klass|
end

##
# Constant: Encoding::EucJP
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EucJP') do |klass|
end

##
# Constant: Encoding::EucJP_ms
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EucJP_ms') do |klass|
end

##
# Constant: Encoding::EucKR
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EucKR') do |klass|
end

##
# Constant: Encoding::EucTW
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::EucTW') do |klass|
end

##
# Constant: Encoding::GB12345
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::GB12345') do |klass|
end

##
# Constant: Encoding::GB18030
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::GB18030') do |klass|
end

##
# Constant: Encoding::GB1988
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::GB1988') do |klass|
end

##
# Constant: Encoding::GB2312
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::GB2312') do |klass|
end

##
# Constant: Encoding::GBK
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::GBK') do |klass|
end

##
# Constant: Encoding::IBM437
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM437') do |klass|
end

##
# Constant: Encoding::IBM737
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM737') do |klass|
end

##
# Constant: Encoding::IBM775
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM775') do |klass|
end

##
# Constant: Encoding::IBM850
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM850') do |klass|
end

##
# Constant: Encoding::IBM852
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM852') do |klass|
end

##
# Constant: Encoding::IBM855
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM855') do |klass|
end

##
# Constant: Encoding::IBM857
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM857') do |klass|
end

##
# Constant: Encoding::IBM860
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM860') do |klass|
end

##
# Constant: Encoding::IBM861
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM861') do |klass|
end

##
# Constant: Encoding::IBM862
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM862') do |klass|
end

##
# Constant: Encoding::IBM863
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM863') do |klass|
end

##
# Constant: Encoding::IBM864
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM864') do |klass|
end

##
# Constant: Encoding::IBM865
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM865') do |klass|
end

##
# Constant: Encoding::IBM866
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM866') do |klass|
end

##
# Constant: Encoding::IBM869
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::IBM869') do |klass|
end

##
# Constant: Encoding::ISO2022_JP
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO2022_JP') do |klass|
end

##
# Constant: Encoding::ISO2022_JP2
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO2022_JP2') do |klass|
end

##
# Constant: Encoding::ISO8859_1
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_1') do |klass|
end

##
# Constant: Encoding::ISO8859_10
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_10') do |klass|
end

##
# Constant: Encoding::ISO8859_11
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_11') do |klass|
end

##
# Constant: Encoding::ISO8859_13
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_13') do |klass|
end

##
# Constant: Encoding::ISO8859_14
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_14') do |klass|
end

##
# Constant: Encoding::ISO8859_15
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_15') do |klass|
end

##
# Constant: Encoding::ISO8859_16
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_16') do |klass|
end

##
# Constant: Encoding::ISO8859_2
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_2') do |klass|
end

##
# Constant: Encoding::ISO8859_3
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_3') do |klass|
end

##
# Constant: Encoding::ISO8859_4
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_4') do |klass|
end

##
# Constant: Encoding::ISO8859_5
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_5') do |klass|
end

##
# Constant: Encoding::ISO8859_6
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_6') do |klass|
end

##
# Constant: Encoding::ISO8859_7
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_7') do |klass|
end

##
# Constant: Encoding::ISO8859_8
# Created:  2013-04-09 14:56:17 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_8') do |klass|
end

##
# Constant: Encoding::ISO8859_9
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO8859_9') do |klass|
end

##
# Constant: Encoding::ISO_2022_JP
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_2022_JP') do |klass|
end

##
# Constant: Encoding::ISO_2022_JP_2
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_2022_JP_2') do |klass|
end

##
# Constant: Encoding::ISO_2022_JP_KDDI
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_2022_JP_KDDI') do |klass|
end

##
# Constant: Encoding::ISO_8859_1
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_1') do |klass|
end

##
# Constant: Encoding::ISO_8859_10
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_10') do |klass|
end

##
# Constant: Encoding::ISO_8859_11
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_11') do |klass|
end

##
# Constant: Encoding::ISO_8859_13
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_13') do |klass|
end

##
# Constant: Encoding::ISO_8859_14
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_14') do |klass|
end

##
# Constant: Encoding::ISO_8859_15
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_15') do |klass|
end

##
# Constant: Encoding::ISO_8859_16
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_16') do |klass|
end

##
# Constant: Encoding::ISO_8859_2
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_2') do |klass|
end

##
# Constant: Encoding::ISO_8859_3
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_3') do |klass|
end

##
# Constant: Encoding::ISO_8859_4
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_4') do |klass|
end

##
# Constant: Encoding::ISO_8859_5
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_5') do |klass|
end

##
# Constant: Encoding::ISO_8859_6
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_6') do |klass|
end

##
# Constant: Encoding::ISO_8859_7
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_7') do |klass|
end

##
# Constant: Encoding::ISO_8859_8
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_8') do |klass|
end

##
# Constant: Encoding::ISO_8859_9
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::ISO_8859_9') do |klass|
end

##
# Constant: Encoding::InvalidByteSequenceError
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::InvalidByteSequenceError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('EncodingError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('destination_encoding')

  klass.define_instance_method('destination_encoding_name')

  klass.define_instance_method('error_bytes')

  klass.define_instance_method('incomplete_input?')

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('message')
  end

  klass.define_instance_method('readagain_bytes')

  klass.define_instance_method('source_encoding')

  klass.define_instance_method('source_encoding_name')
end

##
# Constant: Encoding::KOI8_R
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::KOI8_R') do |klass|
end

##
# Constant: Encoding::KOI8_U
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::KOI8_U') do |klass|
end

##
# Constant: Encoding::LocaleCharmap
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::LocaleCharmap') do |klass|
end

##
# Constant: Encoding::MACCENTEURO
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACCENTEURO') do |klass|
end

##
# Constant: Encoding::MACCROATIAN
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACCROATIAN') do |klass|
end

##
# Constant: Encoding::MACCYRILLIC
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACCYRILLIC') do |klass|
end

##
# Constant: Encoding::MACGREEK
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACGREEK') do |klass|
end

##
# Constant: Encoding::MACICELAND
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACICELAND') do |klass|
end

##
# Constant: Encoding::MACJAPAN
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACJAPAN') do |klass|
end

##
# Constant: Encoding::MACJAPANESE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACJAPANESE') do |klass|
end

##
# Constant: Encoding::MACROMAN
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACROMAN') do |klass|
end

##
# Constant: Encoding::MACROMANIA
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACROMANIA') do |klass|
end

##
# Constant: Encoding::MACTHAI
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACTHAI') do |klass|
end

##
# Constant: Encoding::MACTURKISH
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACTURKISH') do |klass|
end

##
# Constant: Encoding::MACUKRAINE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MACUKRAINE') do |klass|
end

##
# Constant: Encoding::MacCentEuro
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacCentEuro') do |klass|
end

##
# Constant: Encoding::MacCroatian
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacCroatian') do |klass|
end

##
# Constant: Encoding::MacCyrillic
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacCyrillic') do |klass|
end

##
# Constant: Encoding::MacGreek
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacGreek') do |klass|
end

##
# Constant: Encoding::MacIceland
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacIceland') do |klass|
end

##
# Constant: Encoding::MacJapan
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacJapan') do |klass|
end

##
# Constant: Encoding::MacJapanese
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacJapanese') do |klass|
end

##
# Constant: Encoding::MacRoman
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacRoman') do |klass|
end

##
# Constant: Encoding::MacRomania
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacRomania') do |klass|
end

##
# Constant: Encoding::MacThai
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacThai') do |klass|
end

##
# Constant: Encoding::MacTurkish
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacTurkish') do |klass|
end

##
# Constant: Encoding::MacUkraine
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::MacUkraine') do |klass|
end

##
# Constant: Encoding::PCK
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::PCK') do |klass|
end

##
# Constant: Encoding::SHIFT_JIS
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SHIFT_JIS') do |klass|
end

##
# Constant: Encoding::SJIS
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SJIS') do |klass|
end

##
# Constant: Encoding::SJIS_DOCOMO
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SJIS_DOCOMO') do |klass|
end

##
# Constant: Encoding::SJIS_DoCoMo
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SJIS_DoCoMo') do |klass|
end

##
# Constant: Encoding::SJIS_KDDI
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SJIS_KDDI') do |klass|
end

##
# Constant: Encoding::SJIS_SOFTBANK
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SJIS_SOFTBANK') do |klass|
end

##
# Constant: Encoding::SJIS_SoftBank
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::SJIS_SoftBank') do |klass|
end

##
# Constant: Encoding::STATELESS_ISO_2022_JP
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::STATELESS_ISO_2022_JP') do |klass|
end

##
# Constant: Encoding::STATELESS_ISO_2022_JP_KDDI
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::STATELESS_ISO_2022_JP_KDDI') do |klass|
end

##
# Constant: Encoding::Shift_JIS
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Shift_JIS') do |klass|
end

##
# Constant: Encoding::Stateless_ISO_2022_JP
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Stateless_ISO_2022_JP') do |klass|
end

##
# Constant: Encoding::Stateless_ISO_2022_JP_KDDI
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Stateless_ISO_2022_JP_KDDI') do |klass|
end

##
# Constant: Encoding::TIS_620
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::TIS_620') do |klass|
end

##
# Constant: Encoding::Transcoding
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Transcoding') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('inspect')

  klass.define_instance_method('source')

  klass.define_instance_method('source=')

  klass.define_instance_method('target')

  klass.define_instance_method('target=')
end

##
# Constant: Encoding::TranscodingMap
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::TranscodingMap') do |klass|
end

##
# Constant: Encoding::UCS_2BE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UCS_2BE') do |klass|
end

##
# Constant: Encoding::UCS_4BE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UCS_4BE') do |klass|
end

##
# Constant: Encoding::UCS_4LE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UCS_4LE') do |klass|
end

##
# Constant: Encoding::US_ASCII
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::US_ASCII') do |klass|
end

##
# Constant: Encoding::UTF8_DOCOMO
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF8_DOCOMO') do |klass|
end

##
# Constant: Encoding::UTF8_DoCoMo
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF8_DoCoMo') do |klass|
end

##
# Constant: Encoding::UTF8_KDDI
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF8_KDDI') do |klass|
end

##
# Constant: Encoding::UTF8_MAC
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF8_MAC') do |klass|
end

##
# Constant: Encoding::UTF8_SOFTBANK
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF8_SOFTBANK') do |klass|
end

##
# Constant: Encoding::UTF8_SoftBank
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF8_SoftBank') do |klass|
end

##
# Constant: Encoding::UTF_16
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_16') do |klass|
end

##
# Constant: Encoding::UTF_16BE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_16BE') do |klass|
end

##
# Constant: Encoding::UTF_16LE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_16LE') do |klass|
end

##
# Constant: Encoding::UTF_32
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_32') do |klass|
end

##
# Constant: Encoding::UTF_32BE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_32BE') do |klass|
end

##
# Constant: Encoding::UTF_32LE
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_32LE') do |klass|
end

##
# Constant: Encoding::UTF_7
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_7') do |klass|
end

##
# Constant: Encoding::UTF_8
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_8') do |klass|
end

##
# Constant: Encoding::UTF_8_HFS
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_8_HFS') do |klass|
end

##
# Constant: Encoding::UTF_8_MAC
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UTF_8_MAC') do |klass|
end

##
# Constant: Encoding::UndefinedConversionError
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::UndefinedConversionError') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('EncodingError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('destination_encoding')

  klass.define_instance_method('destination_encoding_name')

  klass.define_instance_method('error_char')

  klass.define_instance_method('source_encoding')

  klass.define_instance_method('source_encoding_name')
end

##
# Constant: Encoding::WINDOWS_1250
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1250') do |klass|
end

##
# Constant: Encoding::WINDOWS_1251
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1251') do |klass|
end

##
# Constant: Encoding::WINDOWS_1252
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1252') do |klass|
end

##
# Constant: Encoding::WINDOWS_1253
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1253') do |klass|
end

##
# Constant: Encoding::WINDOWS_1254
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1254') do |klass|
end

##
# Constant: Encoding::WINDOWS_1255
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1255') do |klass|
end

##
# Constant: Encoding::WINDOWS_1256
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1256') do |klass|
end

##
# Constant: Encoding::WINDOWS_1257
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1257') do |klass|
end

##
# Constant: Encoding::WINDOWS_1258
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_1258') do |klass|
end

##
# Constant: Encoding::WINDOWS_31J
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_31J') do |klass|
end

##
# Constant: Encoding::WINDOWS_874
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::WINDOWS_874') do |klass|
end

##
# Constant: Encoding::Windows_1250
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1250') do |klass|
end

##
# Constant: Encoding::Windows_1251
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1251') do |klass|
end

##
# Constant: Encoding::Windows_1252
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1252') do |klass|
end

##
# Constant: Encoding::Windows_1253
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1253') do |klass|
end

##
# Constant: Encoding::Windows_1254
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1254') do |klass|
end

##
# Constant: Encoding::Windows_1255
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1255') do |klass|
end

##
# Constant: Encoding::Windows_1256
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1256') do |klass|
end

##
# Constant: Encoding::Windows_1257
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1257') do |klass|
end

##
# Constant: Encoding::Windows_1258
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_1258') do |klass|
end

##
# Constant: Encoding::Windows_31J
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_31J') do |klass|
end

##
# Constant: Encoding::Windows_874
# Created:  2013-04-09 14:56:18 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Encoding::Windows_874') do |klass|
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Encoding').deep_freeze