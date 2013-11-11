# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('IRB') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('CurrentContext')

  klass.define_method('Inspector') do |method|
    method.define_argument('inspect')
    method.define_optional_argument('init')
  end

  klass.define_method('conf')

  klass.define_method('delete_caller')

  klass.define_method('init_config') do |method|
    method.define_argument('ap_path')
  end

  klass.define_method('init_error')

  klass.define_method('initialize')

  klass.define_method('irb_abort') do |method|
    method.define_argument('irb')
    method.define_optional_argument('exception')
  end

  klass.define_method('irb_at_exit')

  klass.define_method('irb_exit') do |method|
    method.define_argument('irb')
    method.define_argument('ret')
  end

  klass.define_method('load_modules')

  klass.define_method('parse_opts')

  klass.define_method('rc_file') do |method|
    method.define_optional_argument('ext')
  end

  klass.define_method('rc_file_generators')

  klass.define_method('run_config')

  klass.define_method('setup') do |method|
    method.define_argument('ap_path')
  end

  klass.define_method('start') do |method|
    method.define_optional_argument('ap_path')
  end

  klass.define_method('version')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'IRB').deep_freeze
