# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-07-24 21:53:55 +0200
# Platform: rbx 2.0.0.n198

RubyLint::GlobalScope.definitions.define_constant('ActionPack') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end

  klass.define_method('version')
end

RubyLint::GlobalScope.definitions.define_constant('ActionPack::VERSION') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ActionPack').deep_freeze