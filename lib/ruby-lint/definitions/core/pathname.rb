# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('Pathname') do |defs|
  defs.define_constant('Pathname') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('getwd')

    klass.define_method('glob') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('pwd')

    klass.define_instance_method('+') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('==') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('===') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('absolute?')

    klass.define_instance_method('ascend')

    klass.define_instance_method('atime')

    klass.define_instance_method('basename') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('binread') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('blockdev?')

    klass.define_instance_method('chardev?')

    klass.define_instance_method('children') do |method|
      method.define_optional_argument('with_directory')
    end

    klass.define_instance_method('chmod') do |method|
      method.define_argument('mode')
    end

    klass.define_instance_method('chown') do |method|
      method.define_argument('owner')
      method.define_argument('group')
    end

    klass.define_instance_method('cleanpath') do |method|
      method.define_optional_argument('consider_symlink')
    end

    klass.define_instance_method('ctime')

    klass.define_instance_method('delete')

    klass.define_instance_method('descend')

    klass.define_instance_method('directory?')

    klass.define_instance_method('dirname')

    klass.define_instance_method('each_child') do |method|
      method.define_optional_argument('with_directory')
      method.define_block_argument('b')
    end

    klass.define_instance_method('each_entry') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('each_filename')

    klass.define_instance_method('each_line') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('entries')

    klass.define_instance_method('eql?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('executable?')

    klass.define_instance_method('executable_real?')

    klass.define_instance_method('exist?')

    klass.define_instance_method('expand_path') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('extname')

    klass.define_instance_method('file?')

    klass.define_instance_method('find') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('fnmatch') do |method|
      method.define_argument('pattern')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('fnmatch?') do |method|
      method.define_argument('pattern')
      method.define_rest_argument('args')
    end

    klass.define_instance_method('freeze')

    klass.define_instance_method('ftype')

    klass.define_instance_method('grpowned?')

    klass.define_instance_method('hash')

    klass.define_instance_method('initialize') do |method|
      method.define_argument('path')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('join') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('lchmod') do |method|
      method.define_argument('mode')
    end

    klass.define_instance_method('lchown') do |method|
      method.define_argument('owner')
      method.define_argument('group')
    end

    klass.define_instance_method('lstat')

    klass.define_instance_method('make_link') do |method|
      method.define_argument('old')
    end

    klass.define_instance_method('make_symlink') do |method|
      method.define_argument('old')
    end

    klass.define_instance_method('mkdir') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('mkpath')

    klass.define_instance_method('mountpoint?')

    klass.define_instance_method('mtime')

    klass.define_instance_method('open') do |method|
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_instance_method('opendir') do |method|
      method.define_block_argument('block')
    end

    klass.define_instance_method('owned?')

    klass.define_instance_method('parent')

    klass.define_instance_method('pipe?')

    klass.define_instance_method('read') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('readable?')

    klass.define_instance_method('readable_real?')

    klass.define_instance_method('readlines') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('readlink')

    klass.define_instance_method('realdirpath') do |method|
      method.define_optional_argument('basedir')
    end

    klass.define_instance_method('realpath') do |method|
      method.define_optional_argument('basedir')
    end

    klass.define_instance_method('relative?')

    klass.define_instance_method('relative_path_from') do |method|
      method.define_argument('base_directory')
    end

    klass.define_instance_method('rename') do |method|
      method.define_argument('to')
    end

    klass.define_instance_method('rmdir')

    klass.define_instance_method('rmtree')

    klass.define_instance_method('root?')

    klass.define_instance_method('setgid?')

    klass.define_instance_method('setuid?')

    klass.define_instance_method('size')

    klass.define_instance_method('size?')

    klass.define_instance_method('socket?')

    klass.define_instance_method('split')

    klass.define_instance_method('stat')

    klass.define_instance_method('sticky?')

    klass.define_instance_method('sub') do |method|
      method.define_argument('pattern')
      method.define_rest_argument('rest')
      method.define_block_argument('block')
    end

    klass.define_instance_method('sub_ext') do |method|
      method.define_argument('repl')
    end

    klass.define_instance_method('symlink?')

    klass.define_instance_method('sysopen') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('taint')

    klass.define_instance_method('to_path')

    klass.define_instance_method('to_s')

    klass.define_instance_method('truncate') do |method|
      method.define_argument('length')
    end

    klass.define_instance_method('unlink')

    klass.define_instance_method('untaint')

    klass.define_instance_method('utime') do |method|
      method.define_argument('atime')
      method.define_argument('mtime')
    end

    klass.define_instance_method('world_readable?')

    klass.define_instance_method('world_writable?')

    klass.define_instance_method('writable?')

    klass.define_instance_method('writable_real?')

    klass.define_instance_method('zero?')
  end

  defs.define_constant('Pathname::SAME_PATHS') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('[]') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('__yield__') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('arity')

    klass.define_method('binding')

    klass.define_method('block')

    klass.define_method('block=')

    klass.define_method('bound_method')

    klass.define_method('bound_method=')

    klass.define_method('call') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('call_on_object') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('call_prim') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('curry') do |method|
      method.define_optional_argument('curried_arity')
    end

    klass.define_method('lambda?')

    klass.define_method('lambda_style!')

    klass.define_method('parameters')

    klass.define_method('ruby_method')

    klass.define_method('ruby_method=')

    klass.define_method('source_location')

    klass.define_method('to_proc')

    klass.define_method('yield') do |method|
      method.define_rest_argument('args')
    end
  end

  defs.define_constant('Pathname::SEPARATOR_LIST') do |klass|
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

  defs.define_constant('Pathname::SEPARATOR_PAT') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('casefold?')

    klass.define_method('encoding')

    klass.define_method('fixed_encoding?')

    klass.define_method('initialize') do |method|
      method.define_argument('pattern')
      method.define_optional_argument('opts')
      method.define_optional_argument('lang')
    end

    klass.define_method('match') do |method|
      method.define_argument('str')
      method.define_optional_argument('pos')
    end

    klass.define_method('match_all') do |method|
      method.define_argument('str')
    end

    klass.define_method('match_from') do |method|
      method.define_argument('str')
      method.define_argument('count')
    end

    klass.define_method('match_start') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('name_table')

    klass.define_method('named_captures')

    klass.define_method('names')

    klass.define_method('option_to_string') do |method|
      method.define_argument('option')
    end

    klass.define_method('options')

    klass.define_method('search_from') do |method|
      method.define_argument('str')
      method.define_argument('offset')
    end

    klass.define_method('search_region') do |method|
      method.define_argument('str')
      method.define_argument('start')
      method.define_argument('finish')
      method.define_argument('forward')
    end

    klass.define_method('source')

    klass.define_method('~')
  end

  defs.define_constant('Pathname::TO_PATH') do |klass|
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
end
