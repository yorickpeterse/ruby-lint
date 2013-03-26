##
# Constant: GC
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('GC') do |klass|

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
