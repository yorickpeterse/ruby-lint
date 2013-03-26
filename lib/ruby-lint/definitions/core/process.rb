##
# Constant: Process
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Process') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('abort') do |method|
    method.define_optional_argument('msg')
  end

  klass.define_method('cpu_times')

  klass.define_method('daemon') do |method|
    method.define_optional_argument('stay_in_dir')
    method.define_optional_argument('keep_stdio_open')
  end

  klass.define_method('detach') do |method|
    method.define_argument('pid')
  end

  klass.define_method('egid')

  klass.define_method('egid=') do |method|
    method.define_argument('gid')
  end

  klass.define_method('euid')

  klass.define_method('euid=') do |method|
    method.define_argument('uid')
  end

  klass.define_method('exec') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('exit') do |method|
    method.define_optional_argument('code')
  end

  klass.define_method('exit!') do |method|
    method.define_optional_argument('code')
  end

  klass.define_method('fork')

  klass.define_method('getpgid') do |method|
    method.define_argument('pid')
  end

  klass.define_method('getpgrp')

  klass.define_method('getpriority') do |method|
    method.define_argument('kind')
    method.define_argument('id')
  end

  klass.define_method('getrlimit') do |method|
    method.define_argument('resource')
  end

  klass.define_method('gid')

  klass.define_method('gid=') do |method|
    method.define_argument('gid')
  end

  klass.define_method('groups')

  klass.define_method('groups=') do |method|
    method.define_argument('g')
  end

  klass.define_method('initgroups') do |method|
    method.define_argument('username')
    method.define_argument('gid')
  end

  klass.define_method('kill') do |method|
    method.define_argument('signal')
    method.define_rest_argument('pids')
  end

  klass.define_method('maxgroups')

  klass.define_method('maxgroups=') do |method|
    method.define_argument('m')
  end

  klass.define_method('perform_exec') do |method|
    method.define_argument('file')
    method.define_argument('args')
  end

  klass.define_method('perform_fork')

  klass.define_method('pid')

  klass.define_method('ppid')

  klass.define_method('replace') do |method|
    method.define_argument('str')
  end

  klass.define_method('set_status_global') do |method|
    method.define_argument('status')
  end

  klass.define_method('setpgid') do |method|
    method.define_argument('pid')
    method.define_argument('int')
  end

  klass.define_method('setpgrp')

  klass.define_method('setpriority') do |method|
    method.define_argument('kind')
    method.define_argument('id')
    method.define_argument('priority')
  end

  klass.define_method('setrlimit') do |method|
    method.define_argument('resource')
    method.define_argument('cur_limit')
    method.define_optional_argument('max_limit')
  end

  klass.define_method('setsid')

  klass.define_method('spawn') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('time')

  klass.define_method('times')

  klass.define_method('uid')

  klass.define_method('uid=') do |method|
    method.define_argument('uid')
  end

  klass.define_method('wait') do |method|
    method.define_optional_argument('pid')
    method.define_optional_argument('flags')
  end

  klass.define_method('wait2') do |method|
    method.define_optional_argument('input_pid')
    method.define_optional_argument('flags')
  end

  klass.define_method('wait_pid_prim') do |method|
    method.define_argument('pid')
    method.define_argument('no_hang')
  end

  klass.define_method('waitall')

  klass.define_method('waitpid') do |method|
    method.define_optional_argument('pid')
    method.define_optional_argument('flags')
  end

  klass.define_method('waitpid2') do |method|
    method.define_optional_argument('input_pid')
    method.define_optional_argument('flags')
  end
end
