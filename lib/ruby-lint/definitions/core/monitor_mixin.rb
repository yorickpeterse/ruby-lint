##
# Constant: MonitorMixin
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('MonitorMixin') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('extend_object') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('mon_enter')

  klass.define_instance_method('mon_exit')

  klass.define_instance_method('mon_synchronize')

  klass.define_instance_method('mon_try_enter')

  klass.define_instance_method('new_cond')

  klass.define_instance_method('synchronize')

  klass.define_instance_method('try_mon_enter')
end
