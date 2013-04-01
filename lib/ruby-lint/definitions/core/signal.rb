##
# Constant: Signal
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
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

##
# Constant: Signal::Names
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Signal::Names') do |klass|
end

##
# Constant: Signal::Numbers
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Signal::Numbers') do |klass|
end