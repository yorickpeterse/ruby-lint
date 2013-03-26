##
# Constant: Marshal
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('Marshal') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('dump') do |method|
    method.define_argument('obj')
    method.define_optional_argument('an_io')
    method.define_optional_argument('limit')
  end

  klass.define_method('load') do |method|
    method.define_argument('obj')
    method.define_optional_argument('prc')
  end

  klass.define_method('restore') do |method|
    method.define_argument('obj')
    method.define_optional_argument('prc')
  end
end
