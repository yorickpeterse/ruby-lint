# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('ERB') do |defs|
  defs.define_constant('ERB') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('version')

    klass.define_instance_method('def_class') do |method|
      method.define_optional_argument('superklass')
      method.define_optional_argument('methodname')
    end

    klass.define_instance_method('def_method') do |method|
      method.define_argument('mod')
      method.define_argument('methodname')
      method.define_optional_argument('fname')
    end

    klass.define_instance_method('def_module') do |method|
      method.define_optional_argument('methodname')
    end

    klass.define_instance_method('filename')

    klass.define_instance_method('filename=')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('str')
      method.define_optional_argument('safe_level')
      method.define_optional_argument('trim_mode')
      method.define_optional_argument('eoutvar')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('make_compiler') do |method|
      method.define_argument('trim_mode')
    end

    klass.define_instance_method('result') do |method|
      method.define_optional_argument('b')
    end

    klass.define_instance_method('run') do |method|
      method.define_optional_argument('b')
    end

    klass.define_instance_method('set_eoutvar') do |method|
      method.define_argument('compiler')
      method.define_optional_argument('eoutvar')
    end

    klass.define_instance_method('src')
  end

  defs.define_constant('ERB::Compiler') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('add_insert_cmd') do |method|
      method.define_argument('out')
      method.define_argument('content')
    end

    klass.define_instance_method('add_put_cmd') do |method|
      method.define_argument('out')
      method.define_argument('content')
    end

    klass.define_instance_method('compile') do |method|
      method.define_argument('s')
    end

    klass.define_instance_method('content_dump') do |method|
      method.define_argument('s')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('trim_mode')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('insert_cmd')

    klass.define_instance_method('insert_cmd=')

    klass.define_instance_method('make_scanner') do |method|
      method.define_argument('src')
    end

    klass.define_instance_method('percent')

    klass.define_instance_method('post_cmd')

    klass.define_instance_method('post_cmd=')

    klass.define_instance_method('pre_cmd')

    klass.define_instance_method('pre_cmd=')

    klass.define_instance_method('prepare_trim_mode') do |method|
      method.define_argument('mode')
    end

    klass.define_instance_method('put_cmd')

    klass.define_instance_method('put_cmd=')

    klass.define_instance_method('trim_mode')
  end

  defs.define_constant('ERB::Compiler::Buffer') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('close')

    klass.define_instance_method('cr')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('compiler')
      method.define_optional_argument('enc')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('push') do |method|
      method.define_argument('cmd')
    end

    klass.define_instance_method('script')
  end

  defs.define_constant('ERB::Compiler::ExplicitScanner') do |klass|
    klass.inherits(defs.constant_proxy('ERB::Compiler::Scanner'))

    klass.define_instance_method('scan')
  end

  defs.define_constant('ERB::Compiler::PercentLine') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_instance_method('empty?')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('str')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('to_s')

    klass.define_instance_method('value')
  end

  defs.define_constant('ERB::Compiler::Scanner') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('default_scanner=') do |method|
      method.define_argument('klass')
    end

    klass.define_method('make_scanner') do |method|
      method.define_argument('src')
      method.define_argument('trim_mode')
      method.define_argument('percent')
    end

    klass.define_method('regist_scanner') do |method|
      method.define_argument('klass')
      method.define_argument('trim_mode')
      method.define_argument('percent')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('src')
      method.define_argument('trim_mode')
      method.define_argument('percent')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('scan')

    klass.define_instance_method('stag')

    klass.define_instance_method('stag=')
  end

  defs.define_constant('ERB::Compiler::SimpleScanner') do |klass|
    klass.inherits(defs.constant_proxy('ERB::Compiler::Scanner'))

    klass.define_instance_method('scan')
  end

  defs.define_constant('ERB::Compiler::SimpleScanner2') do |klass|
    klass.inherits(defs.constant_proxy('ERB::Compiler::Scanner'))

    klass.define_instance_method('scan')
  end

  defs.define_constant('ERB::Compiler::TrimScanner') do |klass|
    klass.inherits(defs.constant_proxy('ERB::Compiler::Scanner'))

    klass.define_instance_method('explicit_trim_line') do |method|
      method.define_argument('line')
    end

    klass.define_instance_method('initialize') do |method|
      method.define_argument('src')
      method.define_argument('trim_mode')
      method.define_argument('percent')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('is_erb_stag?') do |method|
      method.define_argument('s')
    end

    klass.define_instance_method('percent_line') do |method|
      method.define_argument('line')
      method.define_block_argument('block')
    end

    klass.define_instance_method('scan') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('scan_line') do |method|
      method.define_argument('line')
    end

    klass.define_instance_method('stag')

    klass.define_instance_method('stag=')

    klass.define_instance_method('trim_line1') do |method|
      method.define_argument('line')
    end

    klass.define_instance_method('trim_line2') do |method|
      method.define_argument('line')
    end
  end

  defs.define_constant('ERB::Compiler::TrimScanner::ERB_STAG') do |klass|
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

  defs.define_constant('ERB::DefMethod') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('def_erb_method') do |method|
      method.define_argument('methodname')
      method.define_argument('erb_or_fname')
    end

    klass.define_method('initialize')
  end

  defs.define_constant('ERB::Revision') do |klass|
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

  defs.define_constant('ERB::Util') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('h') do |method|
      method.define_argument('s')
    end

    klass.define_method('html_escape') do |method|
      method.define_argument('s')
    end

    klass.define_method('initialize')

    klass.define_method('u') do |method|
      method.define_argument('s')
    end

    klass.define_method('url_encode') do |method|
      method.define_argument('s')
    end
  end
end
