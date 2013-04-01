##
# Constant: RubyLint
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RubyLint') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: RubyLint::DefinitionGenerator
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RubyLint::DefinitionGenerator') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('directory')

  klass.define_instance_method('generate')

  klass.define_instance_method('inspector')

  klass.define_instance_method('options')

  klass.define_instance_method('template')
end

##
# Constant: RubyLint::Inspector
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RubyLint::Inspector') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('constant')

  klass.define_instance_method('constant_name')

  klass.define_instance_method('format_constants') do |method|
    method.define_argument('constants')
  end

  klass.define_instance_method('format_methods') do |method|
    method.define_argument('methods')
  end

  klass.define_instance_method('inspect_constants') do |method|
    method.define_optional_argument('source')
    method.define_optional_argument('ignore')
  end

  klass.define_instance_method('inspect_instance_methods')

  klass.define_instance_method('inspect_methods')
end

##
# Constant: RubyLint::Template
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RubyLint::Template') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: RubyLint::Template::Scope
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RubyLint::Template::Scope') do |klass|
  klass.inherits(RubyLint.global_constant('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('get_binding')
end

##
# Constant: RubyLint::VERSION
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint.global_scope.define_constant('RubyLint::VERSION') do |klass|
end