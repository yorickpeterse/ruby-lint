##
# Constant: GC
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('GC') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('count')

  klass.define_method('disable')

  klass.define_method('enable')

  klass.define_method('run') do |method|
    method.define_argument('force')
  end

  klass.define_method('start')

  klass.define_method('stat')

  klass.define_method('stress')

  klass.define_method('stress=') do |method|
    method.define_argument('flag')
  end

  klass.define_instance_method('garbage_collect')
end

##
# Constant: GC::Profiler
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('GC::Profiler') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('clear')

  klass.define_method('disable')

  klass.define_method('enable')

  klass.define_method('enabled?')

  klass.define_method('report') do |method|
    method.define_optional_argument('out')
  end

  klass.define_method('result')

  klass.define_method('total_time')
end