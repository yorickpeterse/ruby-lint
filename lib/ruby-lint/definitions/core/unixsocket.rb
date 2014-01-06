# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('UNIXSocket') do |defs|
  defs.define_constant('UNIXSocket') do |klass|
    klass.inherits(defs.constant_proxy('BasicSocket'))

    klass.define_method('pair') do |method|
      method.define_optional_argument('type')
      method.define_optional_argument('protocol')
    end

    klass.define_method('socketpair') do |method|
      method.define_optional_argument('type')
      method.define_optional_argument('protocol')
    end

    klass.define_instance_method('addr')

    klass.define_instance_method('from_descriptor') do |method|
      method.define_argument('fixnum')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('path')

    klass.define_instance_method('peeraddr')

    klass.define_instance_method('recv_fd')

    klass.define_instance_method('recv_io') do |method|
      method.define_optional_argument('klass')
      method.define_optional_argument('mode')
    end

    klass.define_instance_method('recvfrom') do |method|
      method.define_argument('bytes_read')
      method.define_optional_argument('flags')
    end

    klass.define_instance_method('send_io')
  end

  defs.define_constant('UNIXSocket::ACCMODE') do |klass|
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

  defs.define_constant('UNIXSocket::APPEND') do |klass|
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

  defs.define_constant('UNIXSocket::BINARY') do |klass|
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

  defs.define_constant('UNIXSocket::BidirectionalPipe') do |klass|
    klass.inherits(defs.constant_proxy('IO'))

    klass.define_instance_method('<<') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('close')

    klass.define_instance_method('close_read')

    klass.define_instance_method('close_write')

    klass.define_instance_method('closed?')

    klass.define_instance_method('print') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('printf') do |method|
      method.define_argument('fmt')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('putc') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('puts') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('set_pipe_info') do |method|
      method.define_argument('write')
    end

    klass.define_instance_method('syswrite') do |method|
      method.define_argument('data')
    end

    klass.define_instance_method('write') do |method|
      method.define_argument('data')
    end

    klass.define_instance_method('write_nonblock') do |method|
      method.define_argument('data')
    end
  end

  defs.define_constant('UNIXSocket::CREAT') do |klass|
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

  defs.define_constant('UNIXSocket::EAGAINWaitReadable') do |klass|
    klass.inherits(defs.constant_proxy('Errno::EAGAIN'))

  end

  defs.define_constant('UNIXSocket::EAGAINWaitWritable') do |klass|
    klass.inherits(defs.constant_proxy('Errno::EAGAIN'))

  end

  defs.define_constant('UNIXSocket::EXCL') do |klass|
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

  defs.define_constant('UNIXSocket::EachReader') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('each')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('io')
      method.define_argument('buffer')
      method.define_argument('separator')
      method.define_argument('limit')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('read_all')

    klass.define_instance_method('read_to_limit')

    klass.define_instance_method('read_to_separator')

    klass.define_instance_method('read_to_separator_with_limit')
  end

  defs.define_constant('UNIXSocket::Enumerator') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('all?')

    klass.define_instance_method('any?')

    klass.define_instance_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_instance_method('collect')

    klass.define_instance_method('collect_concat')

    klass.define_instance_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_instance_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_instance_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('drop_while')

    klass.define_instance_method('each') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_instance_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_instance_method('each_with_index')

    klass.define_instance_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_instance_method('find_all')

    klass.define_instance_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_instance_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('flat_map')

    klass.define_instance_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_instance_method('group_by')

    klass.define_instance_method('include?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('receiver_or_size')
      method.define_optional_argument('method_name')
      method.define_rest_argument('method_args')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('lazy')

    klass.define_instance_method('map')

    klass.define_instance_method('max')

    klass.define_instance_method('max_by')

    klass.define_instance_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('min')

    klass.define_instance_method('min_by')

    klass.define_instance_method('minmax')

    klass.define_instance_method('minmax_by')

    klass.define_instance_method('next')

    klass.define_instance_method('next_values')

    klass.define_instance_method('none?')

    klass.define_instance_method('one?')

    klass.define_instance_method('partition')

    klass.define_instance_method('peek')

    klass.define_instance_method('peek_values')

    klass.define_instance_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_instance_method('reject')

    klass.define_instance_method('reverse_each')

    klass.define_instance_method('rewind')

    klass.define_instance_method('select')

    klass.define_instance_method('size')

    klass.define_instance_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_instance_method('sort')

    klass.define_instance_method('sort_by')

    klass.define_instance_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('take_while')

    klass.define_instance_method('to_a') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_instance_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('with_index') do |method|
      method.define_optional_argument('offset')
    end

    klass.define_instance_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_instance_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('UNIXSocket::FD_CLOEXEC') do |klass|
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

  defs.define_constant('UNIXSocket::FFI') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

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

  defs.define_constant('UNIXSocket::FNM_CASEFOLD') do |klass|
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

  defs.define_constant('UNIXSocket::FNM_DOTMATCH') do |klass|
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

  defs.define_constant('UNIXSocket::FNM_NOESCAPE') do |klass|
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

  defs.define_constant('UNIXSocket::FNM_PATHNAME') do |klass|
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

  defs.define_constant('UNIXSocket::FNM_SYSCASE') do |klass|
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

  defs.define_constant('UNIXSocket::F_GETFD') do |klass|
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

  defs.define_constant('UNIXSocket::F_GETFL') do |klass|
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

  defs.define_constant('UNIXSocket::F_OK') do |klass|
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

  defs.define_constant('UNIXSocket::F_SETFD') do |klass|
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

  defs.define_constant('UNIXSocket::F_SETFL') do |klass|
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

  defs.define_constant('UNIXSocket::InternalBuffer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('allocate')

    klass.define_instance_method('channel')

    klass.define_instance_method('discard') do |method|
      method.define_argument('skip')
    end

    klass.define_instance_method('empty?')

    klass.define_instance_method('empty_to') do |method|
      method.define_argument('io')
    end

    klass.define_instance_method('exhausted?')

    klass.define_instance_method('fill') do |method|
      method.define_argument('io')
    end

    klass.define_instance_method('fill_from') do |method|
      method.define_argument('io')
      method.define_optional_argument('skip')
    end

    klass.define_instance_method('find') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('discard')
    end

    klass.define_instance_method('full?')

    klass.define_instance_method('getbyte') do |method|
      method.define_argument('io')
    end

    klass.define_instance_method('getchar') do |method|
      method.define_argument('io')
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('put_back') do |method|
      method.define_argument('chr')
    end

    klass.define_instance_method('read_to_char_boundary') do |method|
      method.define_argument('io')
      method.define_argument('str')
    end

    klass.define_instance_method('reset!')

    klass.define_instance_method('shift') do |method|
      method.define_optional_argument('count')
    end

    klass.define_instance_method('size')

    klass.define_instance_method('start')

    klass.define_instance_method('total')

    klass.define_instance_method('unseek!') do |method|
      method.define_argument('io')
    end

    klass.define_instance_method('unshift') do |method|
      method.define_argument('str')
      method.define_argument('start_pos')
    end

    klass.define_instance_method('unused')

    klass.define_instance_method('used')

    klass.define_instance_method('write_synced?')
  end

  defs.define_constant('UNIXSocket::LOCK_EX') do |klass|
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

  defs.define_constant('UNIXSocket::LOCK_NB') do |klass|
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

  defs.define_constant('UNIXSocket::LOCK_SH') do |klass|
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

  defs.define_constant('UNIXSocket::LOCK_UN') do |klass|
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

  defs.define_constant('UNIXSocket::NOCTTY') do |klass|
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

  defs.define_constant('UNIXSocket::NONBLOCK') do |klass|
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

  defs.define_constant('UNIXSocket::NULL') do |klass|
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

  defs.define_constant('UNIXSocket::RDONLY') do |klass|
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

  defs.define_constant('UNIXSocket::RDWR') do |klass|
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

  defs.define_constant('UNIXSocket::R_OK') do |klass|
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

  defs.define_constant('UNIXSocket::Readable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('UNIXSocket::SEEK_CUR') do |klass|
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

  defs.define_constant('UNIXSocket::SEEK_END') do |klass|
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

  defs.define_constant('UNIXSocket::SEEK_SET') do |klass|
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

  defs.define_constant('UNIXSocket::SYNC') do |klass|
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

  defs.define_constant('UNIXSocket::Socketable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('accept')
  end

  defs.define_constant('UNIXSocket::SortedElement') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('val')
      method.define_argument('sort_id')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('sort_id')

    klass.define_instance_method('value')
  end

  defs.define_constant('UNIXSocket::StreamCopier') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('from')
      method.define_argument('to')
      method.define_argument('length')
      method.define_argument('offset')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('read_method') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('run')

    klass.define_instance_method('to_io') do |method|
      method.define_argument('obj')
      method.define_argument('mode')
    end
  end

  defs.define_constant('UNIXSocket::TRUNC') do |klass|
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

  defs.define_constant('UNIXSocket::TransferIO') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('recv_fd')

    klass.define_instance_method('send_io')
  end

  defs.define_constant('UNIXSocket::WRONLY') do |klass|
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

  defs.define_constant('UNIXSocket::W_OK') do |klass|
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

  defs.define_constant('UNIXSocket::WaitReadable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('UNIXSocket::WaitWritable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('UNIXSocket::Writable') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')
  end

  defs.define_constant('UNIXSocket::X_OK') do |klass|
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
