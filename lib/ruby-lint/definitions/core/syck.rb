##
# Constant: Syck
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Syck') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: Syck::DefaultKey
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Syck::DefaultKey') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('to_s')
end

##
# Constant: Syck::ENGINE
# Created:  2013-04-01 18:33:55 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('Syck::ENGINE') do |klass|
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Syck').deep_freeze