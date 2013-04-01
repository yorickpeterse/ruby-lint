##
# Constant: ImmediateValue
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('ImmediateValue') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('dup')

  klass.define_instance_method('singleton_methods') do |method|
    method.define_optional_argument('all')
  end

  klass.define_instance_method('taint')

  klass.define_instance_method('tainted?')
end