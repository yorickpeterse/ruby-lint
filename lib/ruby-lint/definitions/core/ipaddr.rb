# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('IPAddr') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('new_ntoh') do |method|
    method.define_argument('addr')
  end

  klass.define_method('ntop') do |method|
    method.define_argument('addr')
  end

  klass.define_instance_method('&') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('<=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('==') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('===') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>=') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('>>') do |method|
    method.define_argument('num')
  end

  klass.define_instance_method('between?') do |method|
    method.define_argument('min')
    method.define_argument('max')
  end

  klass.define_instance_method('eql?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('family')

  klass.define_instance_method('hash')

  klass.define_instance_method('hton')

  klass.define_instance_method('include?') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('inspect')

  klass.define_instance_method('ip6_arpa')

  klass.define_instance_method('ip6_int')

  klass.define_instance_method('ipv4?')

  klass.define_instance_method('ipv4_compat')

  klass.define_instance_method('ipv4_compat?')

  klass.define_instance_method('ipv4_mapped')

  klass.define_instance_method('ipv4_mapped?')

  klass.define_instance_method('ipv6?')

  klass.define_instance_method('mask') do |method|
    method.define_argument('prefixlen')
  end

  klass.define_instance_method('mask!') do |method|
    method.define_argument('mask')
  end

  klass.define_instance_method('native')

  klass.define_instance_method('reverse')

  klass.define_instance_method('set') do |method|
    method.define_argument('addr')
    method.define_rest_argument('family')
  end

  klass.define_instance_method('succ')

  klass.define_instance_method('to_i')

  klass.define_instance_method('to_range')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_string')

  klass.define_instance_method('|') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('~')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'IPAddr').deep_freeze
