# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('MD5') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Digest::MD5'))

  klass.define_method('base64digest') do |method|
    method.define_argument('str')
    method.define_rest_argument('args')
  end

  klass.define_method('digest')

  klass.define_method('file') do |method|
    method.define_argument('name')
  end

  klass.define_method('hexdigest')

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_method('md5') do |method|
    method.define_rest_argument('args')
  end

  klass.define_method('new') do |method|
    method.define_optional_argument('str')
  end

  klass.define_method('orig_new') do |method|
    method.define_rest_argument('args')
  end

  klass.define_instance_method('<<')

  klass.define_instance_method('base64digest') do |method|
    method.define_optional_argument('str')
  end

  klass.define_instance_method('base64digest!')

  klass.define_instance_method('block_length')

  klass.define_instance_method('digest')

  klass.define_instance_method('digest!')

  klass.define_instance_method('digest_length')

  klass.define_instance_method('file') do |method|
    method.define_argument('name')
  end

  klass.define_instance_method('hexdigest')

  klass.define_instance_method('hexdigest!')

  klass.define_instance_method('initialize')

  klass.define_instance_method('initialize_copy')

  klass.define_instance_method('length')

  klass.define_instance_method('new')

  klass.define_instance_method('reset')

  klass.define_instance_method('size')

  klass.define_instance_method('update')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'MD5').deep_freeze
