# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:14:20 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('String') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.inherits(RubyLint::GlobalScope.constant_proxy('Comparable'))

  klass.define_method('__allocate__')

  klass.define_method('allocate')

  klass.define_method('clone')

  klass.define_method('dup')

  klass.define_method('from_bytearray') do |method|
    method.define_argument('bytes')
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_method('from_codepoint') do |method|
    method.define_argument('code')
    method.define_argument('enc')
  end

  klass.define_method('pattern') do |method|
    method.define_argument('size')
    method.define_argument('str')
  end

  klass.define_method('try_convert') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('%') do |method|
    method.define_argument('args')
  end

  klass.define_instance_method('*') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('+') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
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

  klass.define_instance_method('=~') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('index')
    method.define_argument('count_or_replacement')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('__crypt__') do |method|
    method.define_argument('other_str')
  end

  klass.define_instance_method('__data__')

  klass.define_instance_method('__data__=')

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end

  klass.define_instance_method('append') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('apply_and!') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('ascii_only=')

  klass.define_instance_method('ascii_only?')

  klass.define_instance_method('b')

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('byte_append') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('bytes')

  klass.define_instance_method('bytesize')

  klass.define_instance_method('byteslice') do |method|
    method.define_argument('index_or_range')
    method.define_optional_argument('length')
  end

  klass.define_instance_method('capitalize')

  klass.define_instance_method('capitalize!')

  klass.define_instance_method('casecmp') do |method|
    method.define_argument('to')
  end

  klass.define_instance_method('center') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('chars')

  klass.define_instance_method('chomp') do |method|
    method.define_optional_argument('separator')
  end

  klass.define_instance_method('chomp!') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('chop')

  klass.define_instance_method('chop!')

  klass.define_instance_method('chr')

  klass.define_instance_method('chr_at') do |method|
    method.define_argument('byte')
  end

  klass.define_instance_method('clear')

  klass.define_instance_method('clone')

  klass.define_instance_method('codepoints')

  klass.define_instance_method('compare_substring') do |method|
    method.define_argument('other')
    method.define_argument('start')
    method.define_argument('size')
  end

  klass.define_instance_method('concat') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('convert_float')

  klass.define_instance_method('count') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('count_table') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('crypt') do |method|
    method.define_argument('other_str')
  end

  klass.define_instance_method('data')

  klass.define_instance_method('data=')

  klass.define_instance_method('delete') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('delete!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('downcase')

  klass.define_instance_method('downcase!')

  klass.define_instance_method('dump')

  klass.define_instance_method('dup')

  klass.define_instance_method('each_byte')

  klass.define_instance_method('each_char')

  klass.define_instance_method('each_codepoint')

  klass.define_instance_method('each_line') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('empty?')

  klass.define_instance_method('encode') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('encode!') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('from')
    method.define_optional_argument('options')
  end

  klass.define_instance_method('encoding')

  klass.define_instance_method('encoding=')

  klass.define_instance_method('end_with?') do |method|
    method.define_rest_argument('suffixes')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('ext') do |method|
    method.define_optional_argument('newext')
  end

  klass.define_instance_method('find_character') do |method|
    method.define_argument('offset')
  end

  klass.define_instance_method('find_string') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_instance_method('find_string_reverse') do |method|
    method.define_argument('pattern')
    method.define_argument('start')
  end

  klass.define_instance_method('force_encoding') do |method|
    method.define_argument('enc')
  end

  klass.define_instance_method('getbyte') do |method|
    method.define_argument('index')
  end

  klass.define_instance_method('gsub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('gsub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('hex')

  klass.define_instance_method('include?') do |method|
    method.define_argument('needle')
  end

  klass.define_instance_method('index') do |method|
    method.define_argument('str')
    method.define_optional_argument('start')
  end

  klass.define_instance_method('initialize_copy') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('insert') do |method|
    method.define_argument('index')
    method.define_argument('other')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('intern')

  klass.define_instance_method('length')

  klass.define_instance_method('lines') do |method|
    method.define_optional_argument('sep')
  end

  klass.define_instance_method('ljust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('lstrip')

  klass.define_instance_method('lstrip!')

  klass.define_instance_method('match') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('pos')
  end

  klass.define_instance_method('modify!')

  klass.define_instance_method('next')

  klass.define_instance_method('next!')

  klass.define_instance_method('num_bytes')

  klass.define_instance_method('num_bytes=') do |method|
    method.define_argument('bytes')
  end

  klass.define_instance_method('oct')

  klass.define_instance_method('ord')

  klass.define_instance_method('partition') do |method|
    method.define_optional_argument('pattern')
  end

  klass.define_instance_method('pathmap') do |method|
    method.define_optional_argument('spec')
    method.define_block_argument('block')
  end

  klass.define_instance_method('pathmap_explode')

  klass.define_instance_method('pathmap_partial') do |method|
    method.define_argument('n')
  end

  klass.define_instance_method('pathmap_replace') do |method|
    method.define_argument('patterns')
    method.define_block_argument('block')
  end

  klass.define_instance_method('prefix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('prepend') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('replace') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('reverse')

  klass.define_instance_method('reverse!')

  klass.define_instance_method('rindex') do |method|
    method.define_argument('sub')
    method.define_optional_argument('finish')
  end

  klass.define_instance_method('rjust') do |method|
    method.define_argument('width')
    method.define_optional_argument('padding')
  end

  klass.define_instance_method('rpartition') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('rstrip')

  klass.define_instance_method('rstrip!')

  klass.define_instance_method('scan') do |method|
    method.define_argument('pattern')
  end

  klass.define_instance_method('secure_compare') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('setbyte') do |method|
    method.define_argument('index')
    method.define_argument('byte')
  end

  klass.define_instance_method('shared!')

  klass.define_instance_method('shellescape')

  klass.define_instance_method('shellsplit')

  klass.define_instance_method('shorten!') do |method|
    method.define_argument('size')
  end

  klass.define_instance_method('size')

  klass.define_instance_method('slice') do |method|
    method.define_argument('index')
    method.define_optional_argument('other')
  end

  klass.define_instance_method('slice!') do |method|
    method.define_argument('one')
    method.define_optional_argument('two')
  end

  klass.define_instance_method('snake_case')

  klass.define_instance_method('split') do |method|
    method.define_optional_argument('pattern')
    method.define_optional_argument('limit')
  end

  klass.define_instance_method('squeeze') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('squeeze!') do |method|
    method.define_rest_argument('strings')
  end

  klass.define_instance_method('start_with?') do |method|
    method.define_rest_argument('prefixes')
  end

  klass.define_instance_method('strip')

  klass.define_instance_method('strip!')

  klass.define_instance_method('sub') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('sub!') do |method|
    method.define_argument('pattern')
    method.define_optional_argument('replacement')
  end

  klass.define_instance_method('substring') do |method|
    method.define_argument('start')
    method.define_argument('count')
  end

  klass.define_instance_method('succ')

  klass.define_instance_method('succ!')

  klass.define_instance_method('suffix?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('sum') do |method|
    method.define_optional_argument('bits')
  end

  klass.define_instance_method('swapcase')

  klass.define_instance_method('swapcase!')

  klass.define_instance_method('to_ast') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('to_c')

  klass.define_instance_method('to_f')

  klass.define_instance_method('to_i') do |method|
    method.define_optional_argument('base')
  end

  klass.define_instance_method('to_inum') do |method|
    method.define_argument('base')
    method.define_argument('check')
  end

  klass.define_instance_method('to_r')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_sexp') do |method|
    method.define_optional_argument('name')
    method.define_optional_argument('line')
  end

  klass.define_instance_method('to_str')

  klass.define_instance_method('to_sub_replacement') do |method|
    method.define_argument('result')
    method.define_argument('match')
  end

  klass.define_instance_method('to_sym')

  klass.define_instance_method('tr') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr_expand!') do |method|
    method.define_argument('limit')
    method.define_argument('invalid_as_empty')
  end

  klass.define_instance_method('tr_s') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr_s!') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
  end

  klass.define_instance_method('tr_trans') do |method|
    method.define_argument('source')
    method.define_argument('replacement')
    method.define_argument('squeeze')
  end

  klass.define_instance_method('transform') do |method|
    method.define_argument('tbl')
  end

  klass.define_instance_method('unpack') do |method|
    method.define_argument('directives')
  end

  klass.define_instance_method('upcase')

  klass.define_instance_method('upcase!')

  klass.define_instance_method('upto') do |method|
    method.define_argument('stop')
    method.define_optional_argument('exclusive')
  end

  klass.define_instance_method('valid_encoding=')

  klass.define_instance_method('valid_encoding?')
end

RubyLint::GlobalScope.definitions.define_constant('String::Complexifier') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('convert')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.define_constant('String::ControlCharacters') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_method('zip') do |method|
    method.define_rest_argument('others')
  end

  klass.define_method('|') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.define_constant('String::ControlPrintValue') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

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

  klass.define_method('zip') do |method|
    method.define_rest_argument('others')
  end

  klass.define_method('|') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.define_constant('String::Rationalizer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_instance_method('convert')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('value')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'String').deep_freeze
