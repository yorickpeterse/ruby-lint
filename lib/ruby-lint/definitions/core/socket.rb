# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Socket') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('BasicSocket'))

  klass.define_method('binread') do |method|
    method.define_argument('file')
    method.define_optional_argument('length')
    method.define_optional_argument('offset')
  end

  klass.define_method('binwrite') do |method|
    method.define_argument('file')
    method.define_argument('string')
    method.define_rest_argument('args')
  end

  klass.define_method('connect_pipe') do |method|
    method.define_argument('lhs')
    method.define_argument('rhs')
  end

  klass.define_method('copy_stream') do |method|
    method.define_argument('from')
    method.define_argument('to')
    method.define_optional_argument('max_length')
    method.define_optional_argument('offset')
  end

  klass.define_method('do_not_reverse_lookup')

  klass.define_method('do_not_reverse_lookup=') do |method|
    method.define_argument('setting')
  end

  klass.define_method('fnmatch') do |method|
    method.define_argument('pattern')
    method.define_argument('path')
    method.define_argument('flags')
  end

  klass.define_method('for_fd') do |method|
    method.define_argument('fixnum')
  end

  klass.define_method('foreach') do |method|
    method.define_argument('name')
    method.define_optional_argument('separator')
    method.define_optional_argument('limit')
    method.define_optional_argument('options')
  end

  klass.define_method('from_descriptor') do |method|
    method.define_argument('fixnum')
  end

  klass.define_method('get_protocol_family') do |method|
    method.define_argument('family')
  end

  klass.define_method('get_socket_type') do |method|
    method.define_argument('type')
  end

  klass.define_method('getaddrinfo') do |method|
    method.define_argument('host')
    method.define_argument('service')
    method.define_optional_argument('family')
    method.define_optional_argument('socktype')
    method.define_optional_argument('protocol')
    method.define_optional_argument('flags')
  end

  klass.define_method('gethostbyname') do |method|
    method.define_argument('hostname')
  end

  klass.define_method('gethostname')

  klass.define_method('getnameinfo') do |method|
    method.define_argument('sockaddr')
    method.define_optional_argument('flags')
  end

  klass.define_method('getservbyname') do |method|
    method.define_argument('service')
    method.define_optional_argument('proto')
  end

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_method('max_open_fd')

  klass.define_method('normalize_options') do |method|
    method.define_argument('mode')
    method.define_argument('options')
  end

  klass.define_method('open') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('open_with_mode') do |method|
    method.define_argument('path')
    method.define_argument('mode')
    method.define_argument('perm')
  end

  klass.define_method('pack_sockaddr_in') do |method|
    method.define_argument('port')
    method.define_argument('host')
    method.define_optional_argument('type')
    method.define_optional_argument('flags')
  end

  klass.define_method('pack_sockaddr_un') do |method|
    method.define_argument('file')
  end

  klass.define_method('pair') do |method|
    method.define_argument('domain')
    method.define_argument('type')
    method.define_argument('protocol')
    method.define_optional_argument('klass')
  end

  klass.define_method('parse_mode') do |method|
    method.define_argument('mode')
  end

  klass.define_method('pipe') do |method|
    method.define_optional_argument('external')
    method.define_optional_argument('internal')
    method.define_optional_argument('options')
  end

  klass.define_method('popen') do |method|
    method.define_argument('str')
    method.define_optional_argument('mode')
    method.define_optional_argument('options')
  end

  klass.define_method('prim_truncate') do |method|
    method.define_argument('name')
    method.define_argument('offset')
  end

  klass.define_method('read') do |method|
    method.define_argument('name')
    method.define_optional_argument('length_or_options')
    method.define_optional_argument('offset')
    method.define_optional_argument('options')
  end

  klass.define_method('read_encode') do |method|
    method.define_argument('io')
    method.define_argument('str')
  end

  klass.define_method('readlines') do |method|
    method.define_argument('name')
    method.define_optional_argument('separator')
    method.define_optional_argument('limit')
    method.define_optional_argument('options')
  end

  klass.define_method('select') do |method|
    method.define_optional_argument('readables')
    method.define_optional_argument('writables')
    method.define_optional_argument('errorables')
    method.define_optional_argument('timeout')
  end

  klass.define_method('select_primitive') do |method|
    method.define_argument('readables')
    method.define_argument('writables')
    method.define_argument('errorables')
    method.define_argument('timeout')
  end

  klass.define_method('setup') do |method|
    method.define_argument('io')
    method.define_argument('fd')
    method.define_optional_argument('mode')
    method.define_optional_argument('sync')
  end

  klass.define_method('sockaddr_in') do |method|
    method.define_argument('port')
    method.define_argument('host')
    method.define_optional_argument('type')
    method.define_optional_argument('flags')
  end

  klass.define_method('sockaddr_un') do |method|
    method.define_argument('file')
  end

  klass.define_method('socketpair') do |method|
    method.define_argument('domain')
    method.define_argument('type')
    method.define_argument('protocol')
    method.define_optional_argument('klass')
  end

  klass.define_method('sysopen') do |method|
    method.define_argument('path')
    method.define_optional_argument('mode')
    method.define_optional_argument('perm')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_method('unpack_sockaddr_in') do |method|
    method.define_argument('sockaddr')
  end

  klass.define_method('unpack_sockaddr_un') do |method|
    method.define_argument('addr')
  end

  klass.define_method('write') do |method|
    method.define_argument('file')
    method.define_argument('string')
    method.define_rest_argument('args')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('accept')

  klass.define_instance_method('accept_nonblock')

  klass.define_instance_method('advise') do |method|
    method.define_argument('advice')
    method.define_optional_argument('offset')
    method.define_optional_argument('len')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('autoclose=') do |method|
    method.define_argument('autoclose')
  end

  klass.define_instance_method('autoclose?')

  klass.define_instance_method('bind') do |method|
    method.define_argument('server_sockaddr')
  end

  klass.define_instance_method('binmode')

  klass.define_instance_method('binmode?')

  klass.define_instance_method('buffer_empty?')

  klass.define_instance_method('bytes')

  klass.define_instance_method('chars')

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('close')

  klass.define_instance_method('close_on_exec=') do |method|
    method.define_argument('value')
  end

  klass.define_instance_method('close_on_exec?')

  klass.define_instance_method('close_read')

  klass.define_instance_method('close_write')

  klass.define_instance_method('closed?')

  klass.define_instance_method('codepoints')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('connect') do |method|
    method.define_argument('sockaddr')
    method.define_optional_argument('extra')
  end

  klass.define_instance_method('connect_nonblock') do |method|
    method.define_argument('sockaddr')
  end

  klass.define_instance_method('count') do |method|
    method.define_optional_argument('item')
  end

  klass.define_instance_method('cycle') do |method|
    method.define_optional_argument('many')
  end

  klass.define_instance_method('descriptor')

  klass.define_instance_method('descriptor=')

  klass.define_instance_method('detect') do |method|
    method.define_optional_argument('ifnone')
  end

  klass.define_instance_method('do_not_reverse_lookup')

  klass.define_instance_method('do_not_reverse_lookup=') do |method|
    method.define_argument('setting')
  end

  klass.define_instance_method('drop') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('drop_while')

  klass.define_instance_method('each') do |method|
    method.define_optional_argument('sep_or_limit')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('each_byte')

  klass.define_instance_method('each_char')

  klass.define_instance_method('each_codepoint')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
  end

  klass.define_instance_method('each_line') do |method|
    method.define_optional_argument('sep_or_limit')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('each_slice') do |method|
    method.define_argument('slice_size')
  end

  klass.define_instance_method('each_with_index') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('each_with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('ensure_open')

  klass.define_instance_method('ensure_open_and_readable')

  klass.define_instance_method('ensure_open_and_writable')

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('eof')

  klass.define_instance_method('eof!')

  klass.define_instance_method('eof?')

  klass.define_instance_method('expect') do |method|
    method.define_argument('pat')
    method.define_optional_argument('timeout')
  end

  klass.define_instance_method('external')

  klass.define_instance_method('external=')

  klass.define_instance_method('external_encoding')

  klass.define_instance_method('fcntl') do |method|
    method.define_argument('command')
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('fileno')

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

  klass.define_instance_method('flush')

  klass.define_instance_method('from_descriptor') do |method|
    method.define_argument('fixnum')
  end

  klass.define_instance_method('fsync')

  klass.define_instance_method('getbyte')

  klass.define_instance_method('getc')

  klass.define_instance_method('getpeername')

  klass.define_instance_method('gets') do |method|
    method.define_optional_argument('sep_or_limit')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('getsockname')

  klass.define_instance_method('getsockopt') do |method|
    method.define_argument('level')
    method.define_argument('optname')
  end

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('increment_lineno')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('family')
    method.define_argument('socket_type')
    method.define_optional_argument('protocol')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('internal')

  klass.define_instance_method('internal=')

  klass.define_instance_method('internal_encoding')

  klass.define_instance_method('ioctl') do |method|
    method.define_argument('command')
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('isatty')

  klass.define_instance_method('lazy')

  klass.define_instance_method('lineno')

  klass.define_instance_method('lineno=') do |method|
    method.define_argument('line_number')
  end

  klass.define_instance_method('lines') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('listen') do |method|
    method.define_argument('backlog')
  end

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

  klass.define_instance_method('mode')

  klass.define_instance_method('mode=')

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('pid')

  klass.define_instance_method('pid=')

  klass.define_instance_method('pipe=') do |method|
    method.define_argument('v')
  end

  klass.define_instance_method('pipe?')

  klass.define_instance_method('pos')

  klass.define_instance_method('pos=') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('prim_close')

  klass.define_instance_method('prim_ftruncate') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('prim_seek') do |method|
    method.define_argument('amount')
    method.define_argument('whence')
  end

  klass.define_instance_method('prim_write') do |method|
    method.define_argument('str')
  end

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

  klass.define_instance_method('query') do |method|
    method.define_argument('which')
  end

  klass.define_instance_method('raw_write') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('read') do |method|
    method.define_optional_argument('length')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('read_bom_byte')

  klass.define_instance_method('read_nonblock') do |method|
    method.define_argument('size')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('read_primitive') do |method|
    method.define_argument('number_of_bytes')
  end

  klass.define_instance_method('readbyte')

  klass.define_instance_method('readchar')

  klass.define_instance_method('readline') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('readlines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('readpartial') do |method|
    method.define_argument('size')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('recv') do |method|
    method.define_argument('bytes_to_read')
    method.define_optional_argument('flags')
  end

  klass.define_instance_method('recv_nonblock') do |method|
    method.define_argument('bytes_to_read')
    method.define_optional_argument('flags')
  end

  klass.define_instance_method('recvfrom') do |method|
    method.define_argument('bytes_to_read')
    method.define_optional_argument('flags')
  end

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reopen') do |method|
    method.define_argument('other')
    method.define_optional_argument('mode')
  end

  klass.define_instance_method('reopen_io') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('reopen_path') do |method|
    method.define_argument('string')
    method.define_argument('mode')
  end

  klass.define_instance_method('reset_buffering')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('rewind')

  klass.define_instance_method('scanf') do |method|
    method.define_argument('str')
    method.define_block_argument('b')
  end

  klass.define_instance_method('seek') do |method|
    method.define_argument('amount')
    method.define_optional_argument('whence')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('set_encoding') do |method|
    method.define_argument('external')
    method.define_optional_argument('internal')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('setsockopt') do |method|
    method.define_argument('level_or_option')
    method.define_optional_argument('optname')
    method.define_optional_argument('optval')
  end

  klass.define_instance_method('shutdown') do |method|
    method.define_optional_argument('how')
  end

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('socket_recv') do |method|
    method.define_argument('bytes')
    method.define_argument('flags')
    method.define_argument('type')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('stat')

  klass.define_instance_method('strip_bom')

  klass.define_instance_method('sync')

  klass.define_instance_method('sync=') do |method|
    method.define_argument('v')
  end

  klass.define_instance_method('sysread') do |method|
    method.define_argument('number_of_bytes')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('sysseek') do |method|
    method.define_argument('amount')
    method.define_optional_argument('whence')
  end

  klass.define_instance_method('syswrite') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('tell')

  klass.define_instance_method('to_a') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_io')

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tty?')

  klass.define_instance_method('ttyname')

  klass.define_instance_method('ungetbyte') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('ungetc') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('write') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('write_nonblock') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Socket').deep_freeze
