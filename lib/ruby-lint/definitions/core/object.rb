##
# Constant: Object
# Created:  2013-03-26 21:44:37 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Object') do |klass|
  klass.inherits(RubyLint.global_constant('BasicObject'))

  klass.define_method('__class_init__')

  klass.define_method('yaml_tag') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('__marshal__') do |method|
    method.define_argument('ms')
    method.define_optional_argument('strip_ivars')
  end

  klass.define_instance_method('__show__')

  klass.define_instance_method('psych_to_yaml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_yaml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_yaml_properties')
end
