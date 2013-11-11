# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Find') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('find') do |method|
    method.define_rest_argument('paths')
  end

  klass.define_method('initialize')

  klass.define_method('prune')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Find').deep_freeze
