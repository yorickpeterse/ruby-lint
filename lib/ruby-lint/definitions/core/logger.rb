# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 21:14:28 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Logger') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize') do |method|
    method.define_optional_argument('sclass')
    method.define_optional_argument('name')
    method.define_optional_argument('under')
  end

  klass.define_instance_method('<<') do |method|
    method.define_argument('msg')
  end

  klass.define_instance_method('add') do |method|
    method.define_argument('severity')
    method.define_optional_argument('message')
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('close')

  klass.define_instance_method('datetime_format')

  klass.define_instance_method('datetime_format=') do |method|
    method.define_argument('datetime_format')
  end

  klass.define_instance_method('debug') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('debug?')

  klass.define_instance_method('error') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('error?')

  klass.define_instance_method('fatal') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('fatal?')

  klass.define_instance_method('formatter')

  klass.define_instance_method('formatter=')

  klass.define_instance_method('info') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('info?')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('logdev')
    method.define_optional_argument('shift_age')
    method.define_optional_argument('shift_size')
  end

  klass.define_instance_method('level')

  klass.define_instance_method('level=')

  klass.define_instance_method('log') do |method|
    method.define_argument('severity')
    method.define_optional_argument('message')
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('progname')

  klass.define_instance_method('progname=')

  klass.define_instance_method('sev_threshold')

  klass.define_instance_method('sev_threshold=')

  klass.define_instance_method('unknown') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('warn') do |method|
    method.define_optional_argument('progname')
    method.define_block_argument('block')
  end

  klass.define_instance_method('warn?')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Logger').deep_freeze
