# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Resolv') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('each_address') do |method|
    method.define_argument('name')
    method.define_block_argument('block')
  end

  klass.define_method('each_name') do |method|
    method.define_argument('address')
    method.define_block_argument('proc')
  end

  klass.define_method('getaddress') do |method|
    method.define_argument('name')
  end

  klass.define_method('getaddresses') do |method|
    method.define_argument('name')
  end

  klass.define_method('getname') do |method|
    method.define_argument('address')
  end

  klass.define_method('getnames') do |method|
    method.define_argument('address')
  end

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_instance_method('each_address') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('each_name') do |method|
    method.define_argument('address')
  end

  klass.define_instance_method('getaddress') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('getaddresses') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('getname') do |method|
    method.define_argument('address')
  end

  klass.define_instance_method('getnames') do |method|
    method.define_argument('address')
  end

  klass.define_instance_method('initialize') do |method|
    method.define_optional_argument('resolvers')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Resolv').deep_freeze
