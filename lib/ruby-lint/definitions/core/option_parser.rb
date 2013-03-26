##
# Constant: OptionParser
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('OptionParser') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('accept') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('blk')
  end

  klass.define_method('getopts') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('inc') do |method|
    method.define_argument('arg')
    method.define_optional_argument('default')
  end

  klass.define_method('reject') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('blk')
  end

  klass.define_method('terminate') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_method('top')

  klass.define_method('with') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('abort') do |method|
    method.define_optional_argument('mesg')
  end

  klass.define_instance_method('accept') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('blk')
  end

  klass.define_instance_method('add_officious')

  klass.define_instance_method('banner')

  klass.define_instance_method('banner=')

  klass.define_instance_method('base')

  klass.define_instance_method('def_head_option') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('def_option') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('def_tail_option') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('default_argv')

  klass.define_instance_method('default_argv=')

  klass.define_instance_method('define') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('define_head') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('define_tail') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('environment') do |method|
    method.define_optional_argument('env')
  end

  klass.define_instance_method('getopts') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('help')

  klass.define_instance_method('inc') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('load') do |method|
    method.define_optional_argument('filename')
  end

  klass.define_instance_method('make_switch') do |method|
    method.define_argument('opts')
    method.define_optional_argument('block')
  end

  klass.define_instance_method('new')

  klass.define_instance_method('on') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('on_head') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('on_tail') do |method|
    method.define_rest_argument('opts')
    method.define_block_argument('block')
  end

  klass.define_instance_method('order') do |method|
    method.define_rest_argument('argv')
    method.define_block_argument('block')
  end

  klass.define_instance_method('order!') do |method|
    method.define_optional_argument('argv')
    method.define_block_argument('nonopt')
  end

  klass.define_instance_method('parse') do |method|
    method.define_rest_argument('argv')
  end

  klass.define_instance_method('parse!') do |method|
    method.define_optional_argument('argv')
  end

  klass.define_instance_method('permute') do |method|
    method.define_rest_argument('argv')
  end

  klass.define_instance_method('permute!') do |method|
    method.define_optional_argument('argv')
  end

  klass.define_instance_method('program_name')

  klass.define_instance_method('program_name=')

  klass.define_instance_method('reject') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('blk')
  end

  klass.define_instance_method('release')

  klass.define_instance_method('release=')

  klass.define_instance_method('remove')

  klass.define_instance_method('separator') do |method|
    method.define_argument('string')
  end

  klass.define_instance_method('set_banner')

  klass.define_instance_method('set_program_name')

  klass.define_instance_method('set_summary_indent')

  klass.define_instance_method('set_summary_width')

  klass.define_instance_method('summarize') do |method|
    method.define_optional_argument('to')
    method.define_optional_argument('width')
    method.define_optional_argument('max')
    method.define_optional_argument('indent')
    method.define_block_argument('blk')
  end

  klass.define_instance_method('summary_indent')

  klass.define_instance_method('summary_indent=')

  klass.define_instance_method('summary_width')

  klass.define_instance_method('summary_width=')

  klass.define_instance_method('terminate') do |method|
    method.define_optional_argument('arg')
  end

  klass.define_instance_method('to_a')

  klass.define_instance_method('to_s')

  klass.define_instance_method('top')

  klass.define_instance_method('ver')

  klass.define_instance_method('version')

  klass.define_instance_method('version=')

  klass.define_instance_method('warn') do |method|
    method.define_optional_argument('mesg')
  end
end
