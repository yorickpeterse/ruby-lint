# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Kconv') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('guess') do |method|
    method.define_argument('str')
  end

  klass.define_method('initialize')

  klass.define_method('iseuc') do |method|
    method.define_argument('str')
  end

  klass.define_method('isjis') do |method|
    method.define_argument('str')
  end

  klass.define_method('issjis') do |method|
    method.define_argument('str')
  end

  klass.define_method('isutf8') do |method|
    method.define_argument('str')
  end

  klass.define_method('kconv') do |method|
    method.define_argument('str')
    method.define_argument('to_enc')
    method.define_optional_argument('from_enc')
  end

  klass.define_method('toeuc') do |method|
    method.define_argument('str')
  end

  klass.define_method('tojis') do |method|
    method.define_argument('str')
  end

  klass.define_method('tolocale') do |method|
    method.define_argument('str')
  end

  klass.define_method('tosjis') do |method|
    method.define_argument('str')
  end

  klass.define_method('toutf16') do |method|
    method.define_argument('str')
  end

  klass.define_method('toutf32') do |method|
    method.define_argument('str')
  end

  klass.define_method('toutf8') do |method|
    method.define_argument('str')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Kconv').deep_freeze
