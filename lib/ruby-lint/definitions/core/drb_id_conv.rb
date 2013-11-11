# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('DRbIdConv') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_instance_method('initialize')

  klass.define_instance_method('to_id') do |method|
    method.define_argument('obj')
  end

  klass.define_instance_method('to_obj') do |method|
    method.define_argument('ref')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'DRbIdConv').deep_freeze
