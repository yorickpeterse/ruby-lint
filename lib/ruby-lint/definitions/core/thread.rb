##
# Constant: Thread
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Thread') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('abort_on_exception')

  klass.define_method('abort_on_exception=') do |method|
    method.define_argument('val')
  end

  klass.define_method('allocate')

  klass.define_method('current')

  klass.define_method('detect_outermost_recursion') do |method|
    method.define_argument('obj')
    method.define_optional_argument('paired_obj')
    method.define_block_argument('block')
  end

  klass.define_method('detect_recursion') do |method|
    method.define_argument('obj')
    method.define_optional_argument('paired_obj')
  end

  klass.define_method('exclusive')

  klass.define_method('exit')

  klass.define_method('fork') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('guarding?') do |method|
    method.define_argument('obj')
  end

  klass.define_method('initialize_main_thread') do |method|
    method.define_argument('thread')
  end

  klass.define_method('kill') do |method|
    method.define_argument('thread')
  end

  klass.define_method('list')

  klass.define_method('main')

  klass.define_method('new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('pass')

  klass.define_method('recursion_guard') do |method|
    method.define_argument('obj')
  end

  klass.define_method('start') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('stop')

  klass.define_instance_method('[]') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('key')
    method.define_argument('value')
  end

  klass.define_instance_method('__context__')

  klass.define_instance_method('__run__')

  klass.define_instance_method('__thread_initialize__') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('abort_on_exception')

  klass.define_instance_method('abort_on_exception=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('active_exception')

  klass.define_instance_method('add_to_group') do |method|
    method.define_argument('group')
  end

  klass.define_instance_method('alive?')

  klass.define_instance_method('backtrace')

  klass.define_instance_method('current_exception')

  klass.define_instance_method('exit')

  klass.define_instance_method('fork')

  klass.define_instance_method('group')

  klass.define_instance_method('initialize') do |method|
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('join') do |method|
    method.define_optional_argument('timeout')
  end

  klass.define_instance_method('key?') do |method|
    method.define_argument('key')
  end

  klass.define_instance_method('keys')

  klass.define_instance_method('kill')

  klass.define_instance_method('kill_prim')

  klass.define_instance_method('mri_backtrace')

  klass.define_instance_method('native_join')

  klass.define_instance_method('priority')

  klass.define_instance_method('priority=') do |method|
    method.define_argument('val')
  end

  klass.define_instance_method('raise') do |method|
    method.define_optional_argument('exc')
    method.define_optional_argument('msg')
    method.define_optional_argument('trace')
  end

  klass.define_instance_method('randomizer')

  klass.define_instance_method('recursive_objects')

  klass.define_instance_method('run')

  klass.define_instance_method('set_debugger_thread') do |method|
    method.define_argument('thr')
  end

  klass.define_instance_method('setup')

  klass.define_instance_method('setup_control!') do |method|
    method.define_optional_argument('chan')
  end

  klass.define_instance_method('sleeping?')

  klass.define_instance_method('status')

  klass.define_instance_method('stop?')

  klass.define_instance_method('terminate')

  klass.define_instance_method('thread_is_setup?')

  klass.define_instance_method('to_s')

  klass.define_instance_method('unlock_locks')

  klass.define_instance_method('value')

  klass.define_instance_method('wakeup')
end

##
# Constant: Thread::Default
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Thread::Default') do |klass|
end

##
# Constant: Thread::InnerRecursionDetected
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Thread::InnerRecursionDetected') do |klass|
  klass.inherits(RubyLint.global_constant('Exception'))
end

##
# Constant: Thread::MUTEX_FOR_THREAD_EXCLUSIVE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Thread::MUTEX_FOR_THREAD_EXCLUSIVE') do |klass|
end