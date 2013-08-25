##
# Constant: ERB
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('version')

  klass.define_instance_method('initialize') do |method|
    method.define_argument('str')
    method.define_optional_argument('safe_level')
    method.define_optional_argument('trim_mode')
    method.define_optional_argument('eoutvar')
  end

  klass.define_instance_method('def_class') do |method|
    method.define_optional_argument('superklass')
    method.define_optional_argument('methodname')
  end

  klass.define_instance_method('def_method') do |method|
    method.define_argument('mod')
    method.define_argument('methodname')
    method.define_optional_argument('fname')
  end

  klass.define_instance_method('def_module') do |method|
    method.define_optional_argument('methodname')
  end

  klass.define_instance_method('filename')

  klass.define_instance_method('filename=')

  klass.define_instance_method('result') do |method|
    method.define_optional_argument('b')
  end

  klass.define_instance_method('run') do |method|
    method.define_optional_argument('b')
  end

  klass.define_instance_method('set_eoutvar') do |method|
    method.define_argument('compiler')
    method.define_optional_argument('eoutvar')
  end

  klass.define_instance_method('src')
end

##
# Constant: ERB::Compiler
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('compile') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('content_dump') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('insert_cmd')

  klass.define_instance_method('insert_cmd=')

  klass.define_instance_method('make_scanner') do |method|
    method.define_argument('src')
  end

  klass.define_instance_method('percent')

  klass.define_instance_method('post_cmd')

  klass.define_instance_method('post_cmd=')

  klass.define_instance_method('pre_cmd')

  klass.define_instance_method('pre_cmd=')

  klass.define_instance_method('prepare_trim_mode') do |method|
    method.define_argument('mode')
  end

  klass.define_instance_method('put_cmd')

  klass.define_instance_method('put_cmd=')

  klass.define_instance_method('trim_mode')
end

##
# Constant: ERB::Compiler::Buffer
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::Buffer') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('close')

  klass.define_instance_method('cr')

  klass.define_instance_method('push') do |method|
    method.define_argument('cmd')
  end

  klass.define_instance_method('script')
end

##
# Constant: ERB::Compiler::ExplicitScanner
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::ExplicitScanner') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ERB::Compiler::Scanner'))

  klass.define_method('__class_init__')

  klass.define_instance_method('scan')
end

##
# Constant: ERB::Compiler::PercentLine
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::PercentLine') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_instance_method('empty?')

  klass.define_instance_method('to_s')

  klass.define_instance_method('value')
end

##
# Constant: ERB::Compiler::Scanner
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::Scanner') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('__class_init__')

  klass.define_method('default_scanner=') do |method|
    method.define_argument('klass')
  end

  klass.define_method('make_scanner') do |method|
    method.define_argument('src')
    method.define_argument('trim_mode')
    method.define_argument('percent')
  end

  klass.define_method('regist_scanner') do |method|
    method.define_argument('klass')
    method.define_argument('trim_mode')
    method.define_argument('percent')
  end

  klass.define_instance_method('scan')

  klass.define_instance_method('stag')

  klass.define_instance_method('stag=')
end

##
# Constant: ERB::Compiler::SimpleScanner
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::SimpleScanner') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ERB::Compiler::Scanner'))

  klass.define_method('__class_init__')

  klass.define_instance_method('scan')
end

##
# Constant: ERB::Compiler::SimpleScanner2
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::SimpleScanner2') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ERB::Compiler::Scanner'))

  klass.define_method('__class_init__')

  klass.define_instance_method('scan')
end

##
# Constant: ERB::Compiler::TrimScanner
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::TrimScanner') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('ERB::Compiler::Scanner'))

  klass.define_method('__class_init__')

  klass.define_instance_method('explicit_trim_line') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('is_erb_stag?') do |method|
    method.define_argument('s')
  end

  klass.define_instance_method('percent_line') do |method|
    method.define_argument('line')
    method.define_block_argument('block')
  end

  klass.define_instance_method('scan') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('scan_line') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('stag')

  klass.define_instance_method('stag=')

  klass.define_instance_method('trim_line1') do |method|
    method.define_argument('line')
  end

  klass.define_instance_method('trim_line2') do |method|
    method.define_argument('line')
  end
end

##
# Constant: ERB::Compiler::TrimScanner::ERB_STAG
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Compiler::TrimScanner::ERB_STAG') do |klass|
end

##
# Constant: ERB::DefMethod
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::DefMethod') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('def_erb_method') do |method|
    method.define_argument('methodname')
    method.define_argument('erb_or_fname')
  end
end

##
# Constant: ERB::Revision
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Revision') do |klass|
end

##
# Constant: ERB::Util
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::GlobalScope.definitions.define_constant('ERB::Util') do |klass|

  klass.define_method('__module_init__')

  klass.define_method('h') do |method|
    method.define_argument('s')
  end

  klass.define_method('html_escape') do |method|
    method.define_argument('s')
  end

  klass.define_method('u') do |method|
    method.define_argument('s')
  end

  klass.define_method('url_encode') do |method|
    method.define_argument('s')
  end
end
