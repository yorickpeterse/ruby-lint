# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('DRb') do |defs|
  defs.define_constant('DRb') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('config')

    klass.define_method('current_server')

    klass.define_method('fetch_server') do |method|
      method.define_argument('uri')
    end

    klass.define_method('front')

    klass.define_method('here?') do |method|
      method.define_argument('uri')
    end

    klass.define_method('initialize')

    klass.define_method('install_acl') do |method|
      method.define_argument('acl')
    end

    klass.define_method('install_id_conv') do |method|
      method.define_argument('idconv')
    end

    klass.define_method('mutex')

    klass.define_method('primary_server')

    klass.define_method('primary_server=')

    klass.define_method('regist_server') do |method|
      method.define_argument('server')
    end

    klass.define_method('remove_server') do |method|
      method.define_argument('server')
    end

    klass.define_method('start_service') do |method|
      method.define_optional_argument('uri')
      method.define_optional_argument('front')
      method.define_optional_argument('config')
    end

    klass.define_method('stop_service')

    klass.define_method('thread')

    klass.define_method('to_id') do |method|
      method.define_argument('obj')
    end

    klass.define_method('to_obj') do |method|
      method.define_argument('ref')
    end

    klass.define_method('uri')
  end

  defs.define_constant('DRb::DRbArray') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_load') do |method|
      method.define_argument('s')
    end

    klass.define_instance_method('_dump') do |method|
      method.define_argument('lv')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('ary')

      method.returns { |object| object.instance }
    end
  end

  defs.define_constant('DRb::DRbBadScheme') do |klass|
    klass.inherits(defs.constant_proxy('DRb::DRbError'))

  end

  defs.define_constant('DRb::DRbBadURI') do |klass|
    klass.inherits(defs.constant_proxy('DRb::DRbError'))

  end

  defs.define_constant('DRb::DRbConn') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('open') do |method|
      method.define_argument('remote_uri')
    end

    klass.define_instance_method('alive?')

    klass.define_instance_method('close')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('remote_uri')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('send_message') do |method|
      method.define_argument('ref')
      method.define_argument('msg_id')
      method.define_argument('arg')
      method.define_argument('block')
    end

    klass.define_instance_method('uri')
  end

  defs.define_constant('DRb::DRbConn::POOL_SIZE') do |klass|
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

  defs.define_constant('DRb::DRbConnError') do |klass|
    klass.inherits(defs.constant_proxy('DRb::DRbError'))

  end

  defs.define_constant('DRb::DRbError') do |klass|
    klass.inherits(defs.constant_proxy('RuntimeError'))

  end

  defs.define_constant('DRb::DRbIdConv') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('to_id') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('to_obj') do |method|
      method.define_argument('ref')
    end
  end

  defs.define_constant('DRb::DRbMessage') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('dump') do |method|
      method.define_argument('obj')
      method.define_optional_argument('error')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('config')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('load') do |method|
      method.define_argument('soc')
    end

    klass.define_instance_method('recv_reply') do |method|
      method.define_argument('stream')
    end

    klass.define_instance_method('recv_request') do |method|
      method.define_argument('stream')
    end

    klass.define_instance_method('send_reply') do |method|
      method.define_argument('stream')
      method.define_argument('succ')
      method.define_argument('result')
    end

    klass.define_instance_method('send_request') do |method|
      method.define_argument('stream')
      method.define_argument('ref')
      method.define_argument('msg_id')
      method.define_argument('arg')
      method.define_argument('b')
    end
  end

  defs.define_constant('DRb::DRbObject') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_load') do |method|
      method.define_argument('s')
    end

    klass.define_method('new_with') do |method|
      method.define_argument('uri')
      method.define_argument('ref')
    end

    klass.define_method('new_with_uri') do |method|
      method.define_argument('uri')
    end

    klass.define_method('prepare_backtrace') do |method|
      method.define_argument('uri')
      method.define_argument('result')
    end

    klass.define_method('with_friend') do |method|
      method.define_argument('uri')
    end

    klass.define_instance_method('==') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('__drbref')

    klass.define_instance_method('__drburi')

    klass.define_instance_method('_dump') do |method|
      method.define_argument('lv')
    end

    klass.define_instance_method('eql?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('hash')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('obj')
      method.define_optional_argument('uri')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('method_missing') do |method|
      method.define_argument('msg_id')
      method.define_rest_argument('a')
      method.define_block_argument('b')
    end

    klass.define_instance_method('pretty_print') do |method|
      method.define_argument('q')
    end

    klass.define_instance_method('pretty_print_cycle') do |method|
      method.define_argument('q')
    end

    klass.define_instance_method('respond_to?') do |method|
      method.define_argument('msg_id')
      method.define_optional_argument('priv')
    end
  end

  defs.define_constant('DRb::DRbProtocol') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('add_protocol') do |method|
      method.define_argument('prot')
    end

    klass.define_method('auto_load') do |method|
      method.define_argument('uri')
      method.define_argument('config')
    end

    klass.define_method('initialize')

    klass.define_method('open') do |method|
      method.define_argument('uri')
      method.define_argument('config')
      method.define_optional_argument('first')
    end

    klass.define_method('open_server') do |method|
      method.define_argument('uri')
      method.define_argument('config')
      method.define_optional_argument('first')
    end

    klass.define_method('uri_option') do |method|
      method.define_argument('uri')
      method.define_argument('config')
      method.define_optional_argument('first')
    end
  end

  defs.define_constant('DRb::DRbRemoteError') do |klass|
    klass.inherits(defs.constant_proxy('DRb::DRbError'))

    klass.define_instance_method('initialize') do |method|
      method.define_argument('error')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('reason')
  end

  defs.define_constant('DRb::DRbServer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('default_acl') do |method|
      method.define_argument('acl')
    end

    klass.define_method('default_argc_limit') do |method|
      method.define_argument('argc')
    end

    klass.define_method('default_id_conv') do |method|
      method.define_argument('idconv')
    end

    klass.define_method('default_load_limit') do |method|
      method.define_argument('sz')
    end

    klass.define_method('default_safe_level') do |method|
      method.define_argument('level')
    end

    klass.define_method('make_config') do |method|
      method.define_optional_argument('hash')
    end

    klass.define_method('verbose')

    klass.define_method('verbose=') do |method|
      method.define_argument('on')
    end

    klass.define_instance_method('alive?')

    klass.define_instance_method('check_insecure_method') do |method|
      method.define_argument('obj')
      method.define_argument('msg_id')
    end

    klass.define_instance_method('config')

    klass.define_instance_method('front')

    klass.define_instance_method('here?') do |method|
      method.define_argument('uri')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('uri')
      method.define_optional_argument('front')
      method.define_optional_argument('config_or_acl')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('safe_level')

    klass.define_instance_method('stop_service')

    klass.define_instance_method('thread')

    klass.define_instance_method('to_id') do |method|
      method.define_argument('obj')
    end

    klass.define_instance_method('to_obj') do |method|
      method.define_argument('ref')
    end

    klass.define_instance_method('uri')

    klass.define_instance_method('verbose')

    klass.define_instance_method('verbose=') do |method|
      method.define_argument('v')
    end
  end

  defs.define_constant('DRb::DRbServer::INSECURE_METHOD') do |klass|
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

  defs.define_constant('DRb::DRbServer::InvokeMethod') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('block_yield') do |method|
      method.define_argument('x')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('drb_server')
      method.define_argument('client')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('perform')

    klass.define_instance_method('perform_with_block')
  end

  defs.define_constant('DRb::DRbServer::InvokeMethod18Mixin') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('block_yield') do |method|
      method.define_argument('x')
    end

    klass.define_instance_method('perform_with_block')
  end

  defs.define_constant('DRb::DRbServerNotFound') do |klass|
    klass.inherits(defs.constant_proxy('DRb::DRbError'))

  end

  defs.define_constant('DRb::DRbTCPSocket') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('getservername')

    klass.define_method('open') do |method|
      method.define_argument('uri')
      method.define_argument('config')
    end

    klass.define_method('open_server') do |method|
      method.define_argument('uri')
      method.define_argument('config')
    end

    klass.define_method('open_server_inaddr_any') do |method|
      method.define_argument('host')
      method.define_argument('port')
    end

    klass.define_method('parse_uri') do |method|
      method.define_argument('uri')
    end

    klass.define_method('uri_option') do |method|
      method.define_argument('uri')
      method.define_argument('config')
    end

    klass.define_instance_method('accept')

    klass.define_instance_method('alive?')

    klass.define_instance_method('close')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('uri')
      method.define_argument('soc')
      method.define_optional_argument('config')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('peeraddr')

    klass.define_instance_method('recv_reply')

    klass.define_instance_method('recv_request')

    klass.define_instance_method('send_reply') do |method|
      method.define_argument('succ')
      method.define_argument('result')
    end

    klass.define_instance_method('send_request') do |method|
      method.define_argument('ref')
      method.define_argument('msg_id')
      method.define_argument('arg')
      method.define_argument('b')
    end

    klass.define_instance_method('set_sockopt') do |method|
      method.define_argument('soc')
    end

    klass.define_instance_method('stream')

    klass.define_instance_method('uri')
  end

  defs.define_constant('DRb::DRbURIOption') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('==') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('eql?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('hash')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('option')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('option')

    klass.define_instance_method('to_s')
  end

  defs.define_constant('DRb::DRbUndumped') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('initialize')

    klass.define_instance_method('_dump') do |method|
      method.define_argument('dummy')
    end
  end

  defs.define_constant('DRb::DRbUnknown') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('_load') do |method|
      method.define_argument('s')
    end

    klass.define_instance_method('_dump') do |method|
      method.define_argument('lv')
    end

    klass.define_instance_method('buf')

    klass.define_instance_method('exception')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('err')
      method.define_argument('buf')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('name')

    klass.define_instance_method('reload')
  end

  defs.define_constant('DRb::DRbUnknownError') do |klass|
    klass.inherits(defs.constant_proxy('DRb::DRbError'))

    klass.define_method('_load') do |method|
      method.define_argument('s')
    end

    klass.define_instance_method('_dump') do |method|
      method.define_argument('lv')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('unknown')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('unknown')
  end
end
