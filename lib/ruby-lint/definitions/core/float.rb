# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:17:44 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Float') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Numeric'))

  klass.define_method('induced_from') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('**') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('+@')

  klass.define_instance_method('-') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('-@')

  klass.define_instance_method('/') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('abs')

  klass.define_instance_method('abs2')

  klass.define_instance_method('angle')

  klass.define_instance_method('arg')

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('ceil')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('conj')

  klass.define_instance_method('conjugate')

  klass.define_instance_method('denominator')

  klass.define_instance_method('div') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('divide') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('divmod') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('dtoa')

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('fdiv') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('finite?')

  klass.define_instance_method('floor')

  klass.define_instance_method('i')

  klass.define_instance_method('imag')

  klass.define_instance_method('imaginary')

  klass.define_instance_method('infinite?')

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('integer?')

  klass.define_instance_method('magnitude')

  klass.define_instance_method('modulo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('nan?')

  klass.define_instance_method('negative?')

  klass.define_instance_method('nonzero?')

  klass.define_instance_method('numerator')

  klass.define_instance_method('phase')

  klass.define_instance_method('polar')

  klass.define_instance_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('prec_f')

  klass.define_instance_method('prec_i')

  klass.define_instance_method('quo') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_instance_method('real')

  klass.define_instance_method('real?')

  klass.define_instance_method('rect')

  klass.define_instance_method('rectangular')

  klass.define_instance_method('redo_compare') do |method|
    method.define_argument('meth')
    method.define_argument('right')
  end

  klass.define_instance_method('remainder') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('round') do |method|
    method.define_optional_argument('ndigits')
  end

  klass.define_instance_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_instance_method('to_c')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_int')

  klass.define_instance_method('to_packed') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_s_minimal')

  klass.define_instance_method('truncate')

  klass.define_instance_method('zero?')
end

RubyLint::GlobalScope.definitions.define_constant('Float::DIG') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::EPSILON') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('Float::FFI') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('add_typedef') do |method|
    method.define_argument('current')
    method.define_argument('add')
  end

  klass.define_method('config') do |method|
    method.define_argument('name')
  end

  klass.define_method('config_hash') do |method|
    method.define_argument('name')
  end

  klass.define_method('errno')

  klass.define_method('find_type') do |method|
    method.define_argument('name')
  end

  klass.define_method('generate_function') do |method|
    method.define_argument('ptr')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('generate_trampoline') do |method|
    method.define_argument('obj')
    method.define_argument('name')
    method.define_argument('args')
    method.define_argument('ret')
  end

  klass.define_method('initialize')

  klass.define_method('size_to_type') do |method|
    method.define_argument('size')
  end

  klass.define_method('type_size') do |method|
    method.define_argument('type')
  end
end

RubyLint::GlobalScope.definitions.define_constant('Float::INFINITY') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('Float::MANT_DIG') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::MAX') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('Float::MAX_10_EXP') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::MAX_EXP') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::MIN') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('Float::MIN_10_EXP') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::MIN_EXP') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::NAN') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

RubyLint::GlobalScope.definitions.define_constant('Float::RADIX') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.define_constant('Float::ROUNDS') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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
    method.define_argument('o')
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
    method.define_argument('o')
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

  klass.define_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_method('prec_f')

  klass.define_method('prec_i')

  klass.define_method('pred')

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

  klass.define_method('size')

  klass.define_method('step') do |method|
    method.define_argument('limit')
    method.define_optional_argument('step')
  end

  klass.define_method('succ')

  klass.define_method('times')

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

RubyLint::GlobalScope.definitions.lookup(:const, 'Float').deep_freeze
