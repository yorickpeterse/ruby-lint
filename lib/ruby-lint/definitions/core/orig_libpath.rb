# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('ORIG_LIBPATH') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('&') do |method|
    method.define_argument('other')
  end

  klass.define_method('^') do |method|
    method.define_argument('other')
  end

  klass.define_method('rationalize') do |method|
    method.define_optional_argument('eps')
  end

  klass.define_method('to_a')

  klass.define_method('to_c')

  klass.define_method('to_f')

  klass.define_method('to_h')

  klass.define_method('to_i')

  klass.define_method('to_r')

  klass.define_method('|') do |method|
    method.define_argument('other')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'ORIG_LIBPATH').deep_freeze
