# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.2

RubyLint.registry.register('ARGF') do |defs|
  defs.define_constant('ARGF') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

    klass.define_method('all?')

    klass.define_method('any?')

    klass.define_method('binmode')

    klass.define_method('binmode?')

    klass.define_method('bytes')

    klass.define_method('chars')

    klass.define_method('chunk') do |method|
      method.define_optional_argument('initial_state')
    end

    klass.define_method('close')

    klass.define_method('closed?')

    klass.define_method('codepoints')

    klass.define_method('collect')

    klass.define_method('collect_concat')

    klass.define_method('count') do |method|
      method.define_optional_argument('item')
    end

    klass.define_method('cycle') do |method|
      method.define_optional_argument('many')
    end

    klass.define_method('default_value')

    klass.define_method('detect') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('drop') do |method|
      method.define_argument('n')
    end

    klass.define_method('drop_while')

    klass.define_method('each') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('each_byte')

    klass.define_method('each_char')

    klass.define_method('each_codepoint')

    klass.define_method('each_cons') do |method|
      method.define_argument('num')
    end

    klass.define_method('each_entry') do |method|
      method.define_rest_argument('pass')
    end

    klass.define_method('each_line') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('each_slice') do |method|
      method.define_argument('slice_size')
    end

    klass.define_method('each_with_index') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('each_with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('encoding')

    klass.define_method('entries') do |method|
      method.define_rest_argument('arg')
    end

    klass.define_method('eof')

    klass.define_method('eof?')

    klass.define_method('file')

    klass.define_method('filename')

    klass.define_method('fileno')

    klass.define_method('find') do |method|
      method.define_optional_argument('ifnone')
    end

    klass.define_method('find_all')

    klass.define_method('find_index') do |method|
      method.define_optional_argument('value')
    end

    klass.define_method('first') do |method|
      method.define_optional_argument('n')
    end

    klass.define_method('flat_map')

    klass.define_method('getbyte')

    klass.define_method('getc')

    klass.define_method('gets') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('grep') do |method|
      method.define_argument('pattern')
    end

    klass.define_method('group_by')

    klass.define_method('initialize')

    klass.define_method('inject') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('lazy')

    klass.define_method('lineno')

    klass.define_method('lineno=') do |method|
      method.define_argument('val')
    end

    klass.define_method('lines') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('map')

    klass.define_method('max')

    klass.define_method('max_by')

    klass.define_method('member?') do |method|
      method.define_argument('obj')
    end

    klass.define_method('min')

    klass.define_method('min_by')

    klass.define_method('minmax')

    klass.define_method('minmax_by')

    klass.define_method('none?')

    klass.define_method('one?')

    klass.define_method('partition')

    klass.define_method('path')

    klass.define_method('pos')

    klass.define_method('pos=') do |method|
      method.define_argument('position')
    end

    klass.define_method('read') do |method|
      method.define_optional_argument('bytes')
      method.define_optional_argument('output')
    end

    klass.define_method('readbyte')

    klass.define_method('readchar')

    klass.define_method('readline') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('readlines') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('reduce') do |method|
      method.define_optional_argument('initial')
      method.define_optional_argument('sym')
    end

    klass.define_method('reject')

    klass.define_method('reverse_each')

    klass.define_method('rewind')

    klass.define_method('seek') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('select')

    klass.define_method('skip')

    klass.define_method('slice_before') do |method|
      method.define_optional_argument('arg')
    end

    klass.define_method('sort')

    klass.define_method('sort_by')

    klass.define_method('stream') do |method|
      method.define_argument('file')
    end

    klass.define_method('take') do |method|
      method.define_argument('n')
    end

    klass.define_method('take_while')

    klass.define_method('tell')

    klass.define_method('to_a') do |method|
      method.define_optional_argument('sep')
    end

    klass.define_method('to_i')

    klass.define_method('to_io')

    klass.define_method('to_set') do |method|
      method.define_optional_argument('klass')
      method.define_rest_argument('args')
      method.define_block_argument('block')
    end

    klass.define_method('with_object') do |method|
      method.define_argument('memo')
    end

    klass.define_method('zip') do |method|
      method.define_rest_argument('args')
    end
  end
end
