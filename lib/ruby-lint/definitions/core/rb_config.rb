##
# Constant: RbConfig
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
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

##
# Constant: RbConfig::CONFIG
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RbConfig::CONFIG') do |klass|
end

##
# Constant: RbConfig::MAKEFILE_CONFIG
# Created:  2013-04-01 18:33:54 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RbConfig::MAKEFILE_CONFIG') do |klass|
end