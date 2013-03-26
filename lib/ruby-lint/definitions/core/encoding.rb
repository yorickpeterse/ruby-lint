##
# Constant: Encoding
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Encoding') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_method('_load') do |method|
    method.define_argument('name')
  end

  klass.define_method('aliases')

  klass.define_method('compatible?') do |method|
    method.define_argument('a')
    method.define_argument('b')
  end

  klass.define_method('default_external')

  klass.define_method('default_external=') do |method|
    method.define_argument('enc')
  end

  klass.define_method('default_internal')

  klass.define_method('default_internal=') do |method|
    method.define_argument('enc')
  end

  klass.define_method('find') do |method|
    method.define_argument('name')
  end

  klass.define_method('list')

  klass.define_method('locale_charmap')

  klass.define_method('name_list')

  klass.define_instance_method('_dump') do |method|
    method.define_argument('depth')
  end

  klass.define_instance_method('ascii_compatible?')

  klass.define_instance_method('dummy')

  klass.define_instance_method('dummy?')

  klass.define_instance_method('inspect')

  klass.define_instance_method('name')

  klass.define_instance_method('names')

  klass.define_instance_method('replicate') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('to_s')
end
