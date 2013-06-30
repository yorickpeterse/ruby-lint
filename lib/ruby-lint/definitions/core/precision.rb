##
# Constant: Precision
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('Precision') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('included') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('prec') do |method|
    method.define_argument('klass')
  end

  klass.define_instance_method('prec_f')

  klass.define_instance_method('prec_i')
end