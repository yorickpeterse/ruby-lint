# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Observable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize')

  klass.define_instance_method('add_observer') do |method|
    method.define_argument('observer')
    method.define_optional_argument('func')
  end

  klass.define_instance_method('changed') do |method|
    method.define_optional_argument('state')
  end

  klass.define_instance_method('changed?')

  klass.define_instance_method('count_observers')

  klass.define_instance_method('delete_observer') do |method|
    method.define_argument('observer')
  end

  klass.define_instance_method('delete_observers')

  klass.define_instance_method('notify_observers') do |method|
    method.define_rest_argument('arg')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Observable').deep_freeze
