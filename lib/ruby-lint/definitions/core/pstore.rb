# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('PStore') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_instance_method('[]') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('[]=') do |method|
    method.define_argument('name')
    method.define_argument('value')
  end

  klass.define_instance_method('abort')

  klass.define_instance_method('commit')

  klass.define_instance_method('delete') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('fetch') do |method|
    method.define_argument('name')
    method.define_optional_argument('default')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_argument('file')
    method.define_optional_argument('thread_safe')
  end

  klass.define_instance_method('path')

  klass.define_instance_method('root?') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('roots')

  klass.define_instance_method('transaction') do |method|
    method.define_optional_argument('read_only')
    method.define_block_argument('block')
  end

  klass.define_instance_method('ultra_safe')

  klass.define_instance_method('ultra_safe=')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'PStore').deep_freeze
