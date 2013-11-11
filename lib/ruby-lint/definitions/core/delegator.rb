# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:10:55 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Delegator') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('BasicObject'))

  klass.inherits(RubyLint::GlobalScope.constant_proxy('Kernel'))

  klass.define_method('const_missing') do |method|
    method.define_argument('n')
  end

  klass.define_method('delegating_block') do |method|
    method.define_argument('mid')
  end

  klass.define_method('public_api')

  klass.define_instance_method('!')

  klass.define_instance_method('!=') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('__getobj__')

  klass.define_instance_method('__setobj__') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('freeze')

  klass.define_instance_method('marshal_dump')

  klass.define_instance_method('marshal_load') do |method|
    method.define_argument('data')
  end

  klass.define_instance_method('method_missing') do |method|
    method.define_argument('m')
    method.define_rest_argument('args')
    method.define_block_argument('block')
  end

  klass.define_instance_method('methods') do |method|
    method.define_optional_argument('all')
  end

  klass.define_instance_method('protected_methods') do |method|
    method.define_optional_argument('all')
  end

  klass.define_instance_method('public_methods') do |method|
    method.define_optional_argument('all')
  end

  klass.define_instance_method('taint')

  klass.define_instance_method('trust')

  klass.define_instance_method('untaint')

  klass.define_instance_method('untrust')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Delegator').deep_freeze
