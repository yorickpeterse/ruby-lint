##
# Constant: Rubinius
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Rubinius') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('add_defn_method') do |method|
    method.define_argument('name')
    method.define_argument('executable')
    method.define_argument('constant_scope')
    method.define_argument('vis')
  end

  klass.define_method('add_method') do |method|
    method.define_argument('name')
    method.define_argument('executable')
    method.define_argument('mod')
    method.define_argument('vis')
  end

  klass.define_method('add_method_hook')

  klass.define_method('add_reader') do |method|
    method.define_argument('name')
    method.define_argument('mod')
    method.define_argument('vis')
  end

  klass.define_method('add_writer') do |method|
    method.define_argument('name')
    method.define_argument('mod')
    method.define_argument('vis')
  end

  klass.define_method('agent_loopback')

  klass.define_method('agent_start')

  klass.define_method('allocation_site') do |method|
    method.define_argument('obj')
  end

  klass.define_method('attach_method') do |method|
    method.define_argument('name')
    method.define_argument('executable')
    method.define_argument('constant_scope')
    method.define_argument('recv')
  end

  klass.define_method('bsd?')

  klass.define_method('catch') do |method|
    method.define_argument('dest')
    method.define_argument('obj')
  end

  klass.define_method('check_interrupts')

  klass.define_method('compile_file') do |method|
    method.define_argument('name')
  end

  klass.define_method('current_file')

  klass.define_method('darwin?')

  klass.define_method('deoptimize_all') do |method|
    method.define_argument('disable')
  end

  klass.define_method('deoptimize_inliners') do |method|
    method.define_argument('exec')
  end

  klass.define_method('dtrace_fire') do |method|
    method.define_argument('payload')
  end

  klass.define_method('extended_modules') do |method|
    method.define_argument('obj')
  end

  klass.define_method('find_method') do |method|
    method.define_argument('obj')
    method.define_argument('name')
  end

  klass.define_method('find_public_method') do |method|
    method.define_argument('obj')
    method.define_argument('name')
  end

  klass.define_method('get_user_home') do |method|
    method.define_argument('name')
  end

  klass.define_method('inc_global_serial')

  klass.define_method('jump_error') do |method|
    method.define_argument('name')
  end

  klass.define_method('kcode')

  klass.define_method('kcode=') do |method|
    method.define_argument('str')
  end

  klass.define_method('linux?')

  klass.define_method('lock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('lock_timed') do |method|
    method.define_argument('obj')
    method.define_argument('duration')
  end

  klass.define_method('locked?') do |method|
    method.define_argument('obj')
  end

  klass.define_method('memory_barrier')

  klass.define_method('memory_size') do |method|
    method.define_argument('obj')
  end

  klass.define_method('method_missing_reason')

  klass.define_method('mri_backtrace') do |method|
    method.define_argument('skip')
  end

  klass.define_method('open_class') do |method|
    method.define_argument('name')
    method.define_argument('sup')
    method.define_argument('scope')
  end

  klass.define_method('open_class_under') do |method|
    method.define_argument('name')
    method.define_argument('sup')
    method.define_argument('mod')
  end

  klass.define_method('open_module') do |method|
    method.define_argument('name')
    method.define_argument('scope')
  end

  klass.define_method('open_module_under') do |method|
    method.define_argument('name')
    method.define_argument('mod')
  end

  klass.define_method('pack_to_float') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_int') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_s') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_str') do |method|
    method.define_argument('obj')
  end

  klass.define_method('pack_to_str_or_nil') do |method|
    method.define_argument('obj')
  end

  klass.define_method('raise_exception') do |method|
    method.define_argument('exc')
  end

  klass.define_method('received_signal') do |method|
    method.define_argument('sig')
  end

  klass.define_method('ruby18?')

  klass.define_method('ruby19?')

  klass.define_method('ruby20?')

  klass.define_method('run_script') do |method|
    method.define_argument('compiled_code')
  end

  klass.define_method('set_data') do |method|
    method.define_argument('name')
    method.define_argument('offset')
  end

  klass.define_method('synchronize') do |method|
    method.define_argument('obj')
  end

  klass.define_method('thread_state')

  klass.define_method('throw') do |method|
    method.define_argument('dest')
    method.define_argument('obj')
  end

  klass.define_method('try_lock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('uninterrupted_lock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('unlock') do |method|
    method.define_argument('obj')
  end

  klass.define_method('unrecognized_defined') do |method|
    method.define_argument('file')
    method.define_argument('line')
  end

  klass.define_method('version')

  klass.define_method('watch_signal') do |method|
    method.define_argument('sig')
    method.define_argument('ignored')
  end

  klass.define_method('windows?')
end
