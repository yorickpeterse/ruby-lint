##
# Constant: ImmediateValue
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
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
