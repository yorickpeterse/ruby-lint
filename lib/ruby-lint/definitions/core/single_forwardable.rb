# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('SingleForwardable') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize')

  klass.define_instance_method('def_delegator') do |method|
    method.define_argument('accessor')
    method.define_argument('method')
    method.define_optional_argument('ali')
  end

  klass.define_instance_method('def_delegators') do |method|
    method.define_argument('accessor')
    method.define_rest_argument('methods')
  end

  klass.define_instance_method('def_single_delegator') do |method|
    method.define_argument('accessor')
    method.define_argument('method')
    method.define_optional_argument('ali')
  end

  klass.define_instance_method('def_single_delegators') do |method|
    method.define_argument('accessor')
    method.define_rest_argument('methods')
  end

  klass.define_instance_method('delegate') do |method|
    method.define_argument('hash')
  end

  klass.define_instance_method('single_delegate') do |method|
    method.define_argument('hash')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'SingleForwardable').deep_freeze
