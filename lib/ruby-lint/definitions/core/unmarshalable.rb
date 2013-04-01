##
# Constant: Unmarshalable
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('Unmarshalable') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
  end
end