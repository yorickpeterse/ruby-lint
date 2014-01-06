# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('JSON') do |defs|
  defs.define_constant('JSON') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('object')
      method.define_optional_argument('opts')
    end

    klass.define_method('const_defined_in?') do |method|
      method.define_argument('modul')
      method.define_argument('constant')
    end

    klass.define_method('create_id')

    klass.define_method('create_id=')

    klass.define_method('deep_const_get') do |method|
      method.define_argument('path')
    end

    klass.define_method('dump') do |method|
      method.define_argument('obj')
      method.define_optional_argument('anIO')
      method.define_optional_argument('limit')
    end

    klass.define_method('dump_default_options')

    klass.define_method('dump_default_options=')

    klass.define_method('fast_generate') do |method|
      method.define_argument('obj')
      method.define_optional_argument('opts')
    end

    klass.define_method('fast_unparse') do |method|
      method.define_argument('obj')
      method.define_optional_argument('opts')
    end

    klass.define_method('generate') do |method|
      method.define_argument('obj')
      method.define_optional_argument('opts')
    end

    klass.define_method('generator')

    klass.define_method('generator=') do |method|
      method.define_argument('generator')
    end

    klass.define_method('iconv') do |method|
      method.define_argument('to')
      method.define_argument('from')
      method.define_argument('string')
    end

    klass.define_method('initialize')

    klass.define_method('load') do |method|
      method.define_argument('source')
      method.define_optional_argument('proc')
      method.define_optional_argument('options')
    end

    klass.define_method('load_default_options')

    klass.define_method('load_default_options=')

    klass.define_method('parse') do |method|
      method.define_argument('source')
      method.define_optional_argument('opts')
    end

    klass.define_method('parse!') do |method|
      method.define_argument('source')
      method.define_optional_argument('opts')
    end

    klass.define_method('parser')

    klass.define_method('parser=') do |method|
      method.define_argument('parser')
    end

    klass.define_method('pretty_generate') do |method|
      method.define_argument('obj')
      method.define_optional_argument('opts')
    end

    klass.define_method('pretty_unparse') do |method|
      method.define_argument('obj')
      method.define_optional_argument('opts')
    end

    klass.define_method('recurse_proc') do |method|
      method.define_argument('result')
      method.define_block_argument('proc')
    end

    klass.define_method('restore') do |method|
      method.define_argument('source')
      method.define_optional_argument('proc')
      method.define_optional_argument('options')
    end

    klass.define_method('state')

    klass.define_method('state=')

    klass.define_method('swap!') do |method|
      method.define_argument('string')
    end

    klass.define_method('unparse') do |method|
      method.define_argument('obj')
      method.define_optional_argument('opts')
    end
  end

  defs.define_constant('JSON::CircularDatastructure') do |klass|
    klass.inherits(defs.constant_proxy('JSON::NestingError'))

  end

  defs.define_constant('JSON::Ext') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('JSON::Ext::Generator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::Array') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::Bignum') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::FalseClass') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::Fixnum') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::Float') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::Hash') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::NilClass') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::Object') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::String') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('included')

    klass.define_method('initialize')

    klass.define_instance_method('to_json')

    klass.define_instance_method('to_json_raw')

    klass.define_instance_method('to_json_raw_object')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::String::Extend') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('json_create')
  end

  defs.define_constant('JSON::Ext::Generator::GeneratorMethods::TrueClass') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('to_json')
  end

  defs.define_constant('JSON::Ext::Generator::State') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('allocate')

    klass.define_method('from_state')

    klass.define_instance_method('[]')

    klass.define_instance_method('[]=')

    klass.define_instance_method('allow_nan?')

    klass.define_instance_method('array_nl')

    klass.define_instance_method('array_nl=')

    klass.define_instance_method('ascii_only?')

    klass.define_instance_method('buffer_initial_length')

    klass.define_instance_method('buffer_initial_length=')

    klass.define_instance_method('check_circular?')

    klass.define_instance_method('configure')

    klass.define_instance_method('depth')

    klass.define_instance_method('depth=')

    klass.define_instance_method('generate')

    klass.define_instance_method('indent')

    klass.define_instance_method('indent=')

    klass.define_instance_method('initialize')

    klass.define_instance_method('initialize_copy')

    klass.define_instance_method('max_nesting')

    klass.define_instance_method('max_nesting=')

    klass.define_instance_method('merge')

    klass.define_instance_method('object_nl')

    klass.define_instance_method('object_nl=')

    klass.define_instance_method('quirks_mode')

    klass.define_instance_method('quirks_mode=')

    klass.define_instance_method('quirks_mode?')

    klass.define_instance_method('space')

    klass.define_instance_method('space=')

    klass.define_instance_method('space_before')

    klass.define_instance_method('space_before=')

    klass.define_instance_method('to_h')

    klass.define_instance_method('to_hash')
  end

  defs.define_constant('JSON::Ext::Parser') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('allocate')

    klass.define_instance_method('initialize')

    klass.define_instance_method('parse')

    klass.define_instance_method('quirks_mode?')

    klass.define_instance_method('source')
  end

  defs.define_constant('JSON::FAST_STATE_PROTOTYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]')

    klass.define_method('[]=')

    klass.define_method('allow_nan?')

    klass.define_method('array_nl')

    klass.define_method('array_nl=')

    klass.define_method('ascii_only?')

    klass.define_method('buffer_initial_length')

    klass.define_method('buffer_initial_length=')

    klass.define_method('check_circular?')

    klass.define_method('configure')

    klass.define_method('depth')

    klass.define_method('depth=')

    klass.define_method('generate')

    klass.define_method('indent')

    klass.define_method('indent=')

    klass.define_method('initialize')

    klass.define_method('max_nesting')

    klass.define_method('max_nesting=')

    klass.define_method('merge')

    klass.define_method('object_nl')

    klass.define_method('object_nl=')

    klass.define_method('quirks_mode')

    klass.define_method('quirks_mode=')

    klass.define_method('quirks_mode?')

    klass.define_method('space')

    klass.define_method('space=')

    klass.define_method('space_before')

    klass.define_method('space_before=')

    klass.define_method('to_h')

    klass.define_method('to_hash')
  end

  defs.define_constant('JSON::GeneratorError') do |klass|
    klass.inherits(defs.constant_proxy('JSON::JSONError'))

  end

  defs.define_constant('JSON::GenericObject') do |klass|
    klass.inherits(defs.constant_proxy('OpenStruct'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('dump') do |method|
      method.define_argument('obj')
      method.define_rest_argument('args')
    end

    klass.define_method('from_hash') do |method|
      method.define_argument('object')
    end

    klass.define_method('json_creatable=')

    klass.define_method('json_creatable?')

    klass.define_method('json_create') do |method|
      method.define_argument('data')
    end

    klass.define_method('load') do |method|
      method.define_argument('source')
      method.define_optional_argument('proc')
      method.define_optional_argument('opts')
    end

    klass.define_instance_method('[]') do |method|
      method.define_argument('name')
    end

    klass.define_instance_method('[]=') do |method|
      method.define_argument('name')
      method.define_argument('value')
    end

    klass.define_instance_method('as_json') do |method|
      method.define_rest_argument('arg1')
    end

    klass.define_instance_method('to_hash')

    klass.define_instance_method('to_json') do |method|
      method.define_rest_argument('a')
    end

    klass.define_instance_method('|') do |method|
      method.define_argument('other')
    end
  end

  defs.define_constant('JSON::GenericObject::InspectKey') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_argument('index')
      method.define_optional_argument('other')
    end

    klass.define_method('capitalize')

    klass.define_method('casecmp') do |method|
      method.define_argument('other')
    end

    klass.define_method('downcase')

    klass.define_method('empty?')

    klass.define_method('encoding')

    klass.define_method('id2name')

    klass.define_method('index')

    klass.define_method('intern')

    klass.define_method('is_constant?')

    klass.define_method('is_cvar?')

    klass.define_method('is_ivar?')

    klass.define_method('length')

    klass.define_method('match') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('next')

    klass.define_method('size')

    klass.define_method('slice') do |method|
      method.define_argument('index')
      method.define_optional_argument('other')
    end

    klass.define_method('succ')

    klass.define_method('swapcase')

    klass.define_method('to_proc')

    klass.define_method('to_sym')

    klass.define_method('upcase')
  end

  defs.define_constant('JSON::Infinity') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('other')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
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

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('other')
    end

    klass.define_method('divide') do |method|
      method.define_argument('other')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('dtoa')

    klass.define_method('fdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('finite?')

    klass.define_method('floor')

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('infinite?')

    klass.define_method('integer?')

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('other')
    end

    klass.define_method('nan?')

    klass.define_method('negative?')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('other')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
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

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_packed') do |method|
      method.define_argument('size')
    end

    klass.define_method('to_r')

    klass.define_method('to_s_minimal')

    klass.define_method('truncate')

    klass.define_method('zero?')
  end

  defs.define_constant('JSON::JSONError') do |klass|
    klass.inherits(defs.constant_proxy('StandardError'))

    klass.define_method('wrap') do |method|
      method.define_argument('exception')
    end
  end

  defs.define_constant('JSON::JSON_LOADED') do |klass|
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

  defs.define_constant('JSON::MinusInfinity') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('other')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
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

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('other')
    end

    klass.define_method('divide') do |method|
      method.define_argument('other')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('dtoa')

    klass.define_method('fdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('finite?')

    klass.define_method('floor')

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('infinite?')

    klass.define_method('integer?')

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('other')
    end

    klass.define_method('nan?')

    klass.define_method('negative?')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('other')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
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

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_packed') do |method|
      method.define_argument('size')
    end

    klass.define_method('to_r')

    klass.define_method('to_s_minimal')

    klass.define_method('truncate')

    klass.define_method('zero?')
  end

  defs.define_constant('JSON::MissingUnicodeSupport') do |klass|
    klass.inherits(defs.constant_proxy('JSON::JSONError'))

  end

  defs.define_constant('JSON::NaN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('%') do |method|
      method.define_argument('other')
    end

    klass.define_method('*') do |method|
      method.define_argument('other')
    end

    klass.define_method('**') do |method|
      method.define_argument('other')
    end

    klass.define_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_method('+@')

    klass.define_method('-') do |method|
      method.define_argument('other')
    end

    klass.define_method('-@')

    klass.define_method('/') do |method|
      method.define_argument('other')
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

    klass.define_method('coerce') do |method|
      method.define_argument('other')
    end

    klass.define_method('conj')

    klass.define_method('conjugate')

    klass.define_method('denominator')

    klass.define_method('div') do |method|
      method.define_argument('other')
    end

    klass.define_method('divide') do |method|
      method.define_argument('other')
    end

    klass.define_method('divmod') do |method|
      method.define_argument('other')
    end

    klass.define_method('dtoa')

    klass.define_method('fdiv') do |method|
      method.define_argument('other')
    end

    klass.define_method('finite?')

    klass.define_method('floor')

    klass.define_method('i')

    klass.define_method('im')

    klass.define_method('imag')

    klass.define_method('imaginary')

    klass.define_method('infinite?')

    klass.define_method('integer?')

    klass.define_method('magnitude')

    klass.define_method('modulo') do |method|
      method.define_argument('other')
    end

    klass.define_method('nan?')

    klass.define_method('negative?')

    klass.define_method('nonzero?')

    klass.define_method('numerator')

    klass.define_method('phase')

    klass.define_method('polar')

    klass.define_method('power!') do |method|
      method.define_argument('other')
    end

    klass.define_method('prec') do |method|
      method.define_argument('klass')
    end

    klass.define_method('prec_f')

    klass.define_method('prec_i')

    klass.define_method('quo') do |method|
      method.define_argument('other')
    end

    klass.define_method('rationalize') do |method|
      method.define_optional_argument('eps')
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

    klass.define_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_method('to_c')

    klass.define_method('to_f')

    klass.define_method('to_i')

    klass.define_method('to_int')

    klass.define_method('to_packed') do |method|
      method.define_argument('size')
    end

    klass.define_method('to_r')

    klass.define_method('to_s_minimal')

    klass.define_method('truncate')

    klass.define_method('zero?')
  end

  defs.define_constant('JSON::NestingError') do |klass|
    klass.inherits(defs.constant_proxy('JSON::ParserError'))

  end

  defs.define_constant('JSON::PRETTY_STATE_PROTOTYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]')

    klass.define_method('[]=')

    klass.define_method('allow_nan?')

    klass.define_method('array_nl')

    klass.define_method('array_nl=')

    klass.define_method('ascii_only?')

    klass.define_method('buffer_initial_length')

    klass.define_method('buffer_initial_length=')

    klass.define_method('check_circular?')

    klass.define_method('configure')

    klass.define_method('depth')

    klass.define_method('depth=')

    klass.define_method('generate')

    klass.define_method('indent')

    klass.define_method('indent=')

    klass.define_method('initialize')

    klass.define_method('max_nesting')

    klass.define_method('max_nesting=')

    klass.define_method('merge')

    klass.define_method('object_nl')

    klass.define_method('object_nl=')

    klass.define_method('quirks_mode')

    klass.define_method('quirks_mode=')

    klass.define_method('quirks_mode?')

    klass.define_method('space')

    klass.define_method('space=')

    klass.define_method('space_before')

    klass.define_method('space_before=')

    klass.define_method('to_h')

    klass.define_method('to_hash')
  end

  defs.define_constant('JSON::Parser') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('allocate')

    klass.define_instance_method('initialize')

    klass.define_instance_method('parse')

    klass.define_instance_method('quirks_mode?')

    klass.define_instance_method('source')
  end

  defs.define_constant('JSON::ParserError') do |klass|
    klass.inherits(defs.constant_proxy('JSON::JSONError'))

  end

  defs.define_constant('JSON::SAFE_STATE_PROTOTYPE') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]')

    klass.define_method('[]=')

    klass.define_method('allow_nan?')

    klass.define_method('array_nl')

    klass.define_method('array_nl=')

    klass.define_method('ascii_only?')

    klass.define_method('buffer_initial_length')

    klass.define_method('buffer_initial_length=')

    klass.define_method('check_circular?')

    klass.define_method('configure')

    klass.define_method('depth')

    klass.define_method('depth=')

    klass.define_method('generate')

    klass.define_method('indent')

    klass.define_method('indent=')

    klass.define_method('initialize')

    klass.define_method('max_nesting')

    klass.define_method('max_nesting=')

    klass.define_method('merge')

    klass.define_method('object_nl')

    klass.define_method('object_nl=')

    klass.define_method('quirks_mode')

    klass.define_method('quirks_mode=')

    klass.define_method('quirks_mode?')

    klass.define_method('space')

    klass.define_method('space=')

    klass.define_method('space_before')

    klass.define_method('space_before=')

    klass.define_method('to_h')

    klass.define_method('to_hash')
  end

  defs.define_constant('JSON::State') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('allocate')

    klass.define_method('from_state')

    klass.define_instance_method('[]')

    klass.define_instance_method('[]=')

    klass.define_instance_method('allow_nan?')

    klass.define_instance_method('array_nl')

    klass.define_instance_method('array_nl=')

    klass.define_instance_method('ascii_only?')

    klass.define_instance_method('buffer_initial_length')

    klass.define_instance_method('buffer_initial_length=')

    klass.define_instance_method('check_circular?')

    klass.define_instance_method('configure')

    klass.define_instance_method('depth')

    klass.define_instance_method('depth=')

    klass.define_instance_method('generate')

    klass.define_instance_method('indent')

    klass.define_instance_method('indent=')

    klass.define_instance_method('initialize')

    klass.define_instance_method('initialize_copy')

    klass.define_instance_method('max_nesting')

    klass.define_instance_method('max_nesting=')

    klass.define_instance_method('merge')

    klass.define_instance_method('object_nl')

    klass.define_instance_method('object_nl=')

    klass.define_instance_method('quirks_mode')

    klass.define_instance_method('quirks_mode=')

    klass.define_instance_method('quirks_mode?')

    klass.define_instance_method('space')

    klass.define_instance_method('space=')

    klass.define_instance_method('space_before')

    klass.define_instance_method('space_before=')

    klass.define_instance_method('to_h')

    klass.define_instance_method('to_hash')
  end

  defs.define_constant('JSON::UnparserError') do |klass|
    klass.inherits(defs.constant_proxy('JSON::JSONError'))

  end

  defs.define_constant('JSON::VERSION') do |klass|
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

  defs.define_constant('JSON::VERSION_ARRAY') do |klass|
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

  defs.define_constant('JSON::VERSION_BUILD') do |klass|
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

  defs.define_constant('JSON::VERSION_MAJOR') do |klass|
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

  defs.define_constant('JSON::VERSION_MINOR') do |klass|
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
end
