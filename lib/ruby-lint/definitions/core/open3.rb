# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Open3') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('capture2') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_method('capture2e') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_method('capture3') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_method('initialize')

  klass.define_method('pipeline') do |method|
    method.define_rest_argument('cmds')
  end

  klass.define_method('pipeline_r') do |method|
    method.define_rest_argument('cmds')
    method.define_block_argument('block')
  end

  klass.define_method('pipeline_rw') do |method|
    method.define_rest_argument('cmds')
    method.define_block_argument('block')
  end

  klass.define_method('pipeline_start') do |method|
    method.define_rest_argument('cmds')
    method.define_block_argument('block')
  end

  klass.define_method('pipeline_w') do |method|
    method.define_rest_argument('cmds')
    method.define_block_argument('block')
  end

  klass.define_method('popen2') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_method('popen2e') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end

  klass.define_method('popen3') do |method|
    method.define_rest_argument('cmd')
    method.define_block_argument('block')
  end
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Open3').deep_freeze
