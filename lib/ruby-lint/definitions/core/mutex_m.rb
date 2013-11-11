# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Mutex_m') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('append_features') do |method|
    method.define_argument('cl')
  end

  klass.define_method('define_aliases') do |method|
    method.define_argument('cl')
  end

  klass.define_method('extend_object') do |method|
    method.define_argument('obj')
  end

  klass.define_method('initialize')

  klass.define_instance_method('mu_extended')

  klass.define_instance_method('mu_lock')

  klass.define_instance_method('mu_locked?')

  klass.define_instance_method('mu_synchronize') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('mu_try_lock')

  klass.define_instance_method('mu_unlock')

  klass.define_instance_method('sleep') do |method|
    method.define_optional_argument('timeout')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Mutex_m').deep_freeze
