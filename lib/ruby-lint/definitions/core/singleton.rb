##
# Constant: Singleton
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Singleton') do |klass|

  klass.define_method('__init__') do |method|
    method.define_argument('klass')
  end

  klass.define_method('__module_init__')

  klass.define_instance_method('_dump') do |method|
    method.define_optional_argument('depth')
  end

  klass.define_instance_method('clone')

  klass.define_instance_method('dup')
end

##
# Constant: Singleton::SingletonClassMethods
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Singleton::SingletonClassMethods') do |klass|

  klass.define_method('__module_init__')

  klass.define_instance_method('_load') do |method|
    method.define_argument('str')
  end

  klass.define_instance_method('clone')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Singleton').deep_freeze