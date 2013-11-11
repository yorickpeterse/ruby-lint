# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('DRbUndumped') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize')

  klass.define_instance_method('_dump') do |method|
    method.define_argument('dummy')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'DRbUndumped').deep_freeze
