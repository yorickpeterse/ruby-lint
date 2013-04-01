##
# Constant: ArgumentError
# Created:  2013-04-01 18:33:52 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('ArgumentError') do |klass|
  klass.inherits(RubyLint.global_constant('StandardError'))

  klass.define_method('__class_init__')

  klass.define_instance_method('to_s')
end