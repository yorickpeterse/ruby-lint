##
# Constant: Signal
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Signal') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('list')

  klass.define_method('run_handler') do |method|
    method.define_argument('sig')
  end

  klass.define_method('trap') do |method|
    method.define_argument('sig')
    method.define_optional_argument('prc')
    method.define_block_argument('block')
  end
end
