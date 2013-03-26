##
# Constant: StringIO
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('StringIO') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('open') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('__data__')

  klass.define_instance_method('binmode')

  klass.define_instance_method('bytes')

  klass.define_instance_method('chars')

  klass.define_instance_method('close')

  klass.define_instance_method('close_read')

  klass.define_instance_method('close_write')

  klass.define_instance_method('closed?')

  klass.define_instance_method('closed_read?')

  klass.define_instance_method('closed_write?')

  klass.define_instance_method('codepoints') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('each_byte')

  klass.define_instance_method('each_char')

  klass.define_instance_method('each_codepoint') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('each_line') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('eof')

  klass.define_instance_method('eof?')

  klass.define_instance_method('external_encoding')

  klass.define_instance_method('fcntl')

  klass.define_instance_method('fileno')

  klass.define_instance_method('flush')

  klass.define_instance_method('fsync')

  klass.define_instance_method('getbyte')

  klass.define_instance_method('getc')

  klass.define_instance_method('getline') do |method|
    method.define_argument('arg_error')
    method.define_argument('sep')
    method.define_argument('limit')
  end

  klass.define_instance_method('gets') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('internal_encoding')

  klass.define_instance_method('isatty')

  klass.define_instance_method('length')

  klass.define_instance_method('lineno')

  klass.define_instance_method('lineno=') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('lines') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('mode_from_integer') do |method|
    method.define_argument('mode')
  end

  klass.define_instance_method('mode_from_string') do |method|
    method.define_argument('mode')
  end

  klass.define_instance_method('pid')

  klass.define_instance_method('pos')

  klass.define_instance_method('pos=') do |method|
    method.define_argument('pos')
  end

  klass.define_instance_method('print') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('printf') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('putc') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('puts') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('read') do |method|
    method.define_optional_argument('length')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('read_nonblock') do |method|
    method.define_optional_argument('length')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('readbyte')

  klass.define_instance_method('readchar')

  klass.define_instance_method('readline') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('readlines') do |method|
    method.define_optional_argument('sep')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('readpartial') do |method|
    method.define_optional_argument('length')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('reopen') do |method|
    method.define_optional_argument('string')
    method.define_optional_argument('mode')
  end

  klass.define_instance_method('rewind')

  klass.define_instance_method('seek') do |method|
    method.define_argument('to')
    method.define_optional_argument('whence')
  end

  klass.define_instance_method('set_encoding') do |method|
    method.define_argument('external')
    method.define_optional_argument('internal')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('string')

  klass.define_instance_method('string=') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('sync')

  klass.define_instance_method('sync=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('sysread') do |method|
    method.define_optional_argument('length')
    method.define_optional_argument('buffer')
  end

  klass.define_instance_method('syswrite') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('tell')

  klass.define_instance_method('truncate') do |method|
    method.define_argument('length')
  end

  klass.define_instance_method('tty?')

  klass.define_instance_method('ungetbyte') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('ungetc') do |method|
    method.define_argument('char')
  end

  klass.define_instance_method('write') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('write_nonblock') do |method|
    method.define_argument('str')
  end
end
