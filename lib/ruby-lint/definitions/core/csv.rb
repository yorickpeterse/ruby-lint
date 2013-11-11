# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('CSV') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('def_delegator') do |method|
    method.define_argument('accessor')
    method.define_argument('method')
    method.define_optional_argument('ali')
  end

  klass.define_method('def_delegators') do |method|
    method.define_argument('accessor')
    method.define_rest_argument('methods')
  end

  klass.define_method('def_instance_delegator') do |method|
    method.define_argument('accessor')
    method.define_argument('method')
    method.define_optional_argument('ali')
  end

  klass.define_method('def_instance_delegators') do |method|
    method.define_argument('accessor')
    method.define_rest_argument('methods')
  end

  klass.define_method('delegate') do |method|
    method.define_argument('hash')
  end

  klass.define_method('filter') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('foreach') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
    method.define_block_argument('block')
  end

  klass.define_method('generate') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('generate_line') do |method|
    method.define_argument('row')
    method.define_optional_argument('options')
  end

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_method('instance') do |method|
    method.define_optional_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_method('instance_delegate') do |method|
    method.define_argument('hash')
  end

  klass.define_method('open') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('parse') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_method('parse_line') do |method|
    method.define_argument('line')
    method.define_optional_argument('options')
  end

  klass.define_method('read') do |method|
    method.define_argument('path')
    method.define_rest_argument('options')
  end

  klass.define_method('readlines') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('table') do |method|
    method.define_argument('path')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('row')
  end

  klass.define_instance_method('add_row') do |method|
    method.define_argument('row')
  end

  klass.define_instance_method('all?')

  klass.define_instance_method('any?')

  klass.define_instance_method('binmode') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('binmode?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('chunk') do |method|
    method.define_optional_argument('initial_state')
  end

  klass.define_instance_method('close') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('close_read') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('close_write') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('closed?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('col_sep')

  klass.define_instance_method('collect')

  klass.define_instance_method('collect_concat')

  klass.define_instance_method('convert') do |method|
    method.define_optional_argument('name')
    method.define_block_argument('converter')
  end

  klass.define_instance_method('converters')

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

  klass.define_instance_method('each')

  klass.define_instance_method('each_cons') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('each_entry') do |method|
    method.define_rest_argument('pass')
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

  klass.define_instance_method('encoding')

  klass.define_instance_method('entries') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('eof') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('eof?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('external_encoding') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fcntl') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('field_size_limit')

  klass.define_instance_method('fileno') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
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

  klass.define_instance_method('flock') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('flush') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('force_quotes?')

  klass.define_instance_method('fsync') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('gets')

  klass.define_instance_method('grep') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('group_by')

  klass.define_instance_method('header_convert') do |method|
    method.define_optional_argument('name')
    method.define_block_argument('converter')
  end

  klass.define_instance_method('header_converters')

  klass.define_instance_method('header_row?')

  klass.define_instance_method('headers')

  klass.define_instance_method('include?') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('data')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('inject') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('internal_encoding') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ioctl') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('isatty') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('lazy')

  klass.define_instance_method('lineno')

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

  klass.define_instance_method('none?')

  klass.define_instance_method('one?')

  klass.define_instance_method('partition')

  klass.define_instance_method('path') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pid') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pos') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pos=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('puts') do |method|
    method.define_argument('row')
  end

  klass.define_instance_method('quote_char')

  klass.define_instance_method('read')

  klass.define_instance_method('readline')

  klass.define_instance_method('readlines')

  klass.define_instance_method('reduce') do |method|
    method.define_optional_argument('initial')
    method.define_optional_argument('sym')
  end

  klass.define_instance_method('reject')

  klass.define_instance_method('reopen') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('return_headers?')

  klass.define_instance_method('reverse_each')

  klass.define_instance_method('rewind')

  klass.define_instance_method('row_sep')

  klass.define_instance_method('seek') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('select')

  klass.define_instance_method('shift')

  klass.define_instance_method('skip_blanks?')

  klass.define_instance_method('skip_lines')

  klass.define_instance_method('slice_before') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('sort')

  klass.define_instance_method('sort_by')

  klass.define_instance_method('stat') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('string') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sync') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('sync=') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('take') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('take_while')

  klass.define_instance_method('tell') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_a') do |method|
    method.define_rest_argument('arg')
  end

  klass.define_instance_method('to_i') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_io') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('to_set') do |method|
    method.define_optional_argument('klass')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('truncate') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('tty?') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('unconverted_fields?')

  klass.define_instance_method('with_object') do |method|
    method.define_argument('memo')
  end

  klass.define_instance_method('write_headers?')

  klass.define_instance_method('zip') do |method|
    method.define_rest_argument('args')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'CSV').deep_freeze
