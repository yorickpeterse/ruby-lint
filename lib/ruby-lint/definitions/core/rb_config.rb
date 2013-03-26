##
# Constant: RbConfig
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('RbConfig') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('datadir') do |method|
    method.define_argument('package_name')
  end

  klass.define_method('expand') do |method|
    method.define_argument('val')
    method.define_optional_argument('config')
  end

  klass.define_method('ruby')
end
