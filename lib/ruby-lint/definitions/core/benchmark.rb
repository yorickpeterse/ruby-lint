# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Benchmark') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('benchmark') do |method|
    method.define_optional_argument('caption')
    method.define_optional_argument('label_width')
    method.define_optional_argument('fmtstr')
    method.define_rest_argument('labels')
  end

  klass.define_method('bm') do |method|
    method.define_optional_argument('label_width')
    method.define_rest_argument('labels')
    method.define_block_argument('blk')
  end

  klass.define_method('bmbm') do |method|
    method.define_optional_argument('width')
    method.define_block_argument('blk')
  end

  klass.define_method('initialize')

  klass.define_method('measure') do |method|
    method.define_optional_argument('label')
  end

  klass.define_method('realtime') do |method|
    method.define_block_argument('blk')
  end

  klass.define_method('times')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Benchmark').deep_freeze
