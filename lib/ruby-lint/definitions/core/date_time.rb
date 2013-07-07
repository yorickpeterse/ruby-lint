##
# Constant: DateTime
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Date'))

  klass.define_method('__class_init__')

  klass.define_method('_strptime') do |method|
    method.define_argument('str')
    method.define_optional_argument('fmt')
  end

  klass.define_method('civil') do |method|
    method.define_optional_argument('y')
    method.define_optional_argument('m')
    method.define_optional_argument('d')
    method.define_optional_argument('h')
    method.define_optional_argument('min')
    method.define_optional_argument('s')
    method.define_optional_argument('of')
    method.define_optional_argument('sg')
  end

  klass.define_method('commercial') do |method|
    method.define_optional_argument('y')
    method.define_optional_argument('w')
    method.define_optional_argument('d')
    method.define_optional_argument('h')
    method.define_optional_argument('min')
    method.define_optional_argument('s')
    method.define_optional_argument('of')
    method.define_optional_argument('sg')
  end

  klass.define_method('httpdate') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_method('iso8601') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_method('jd') do |method|
    method.define_optional_argument('jd')
    method.define_optional_argument('h')
    method.define_optional_argument('min')
    method.define_optional_argument('s')
    method.define_optional_argument('of')
    method.define_optional_argument('sg')
  end

  klass.define_method('jisx0301') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_method('new') do |method|
    method.define_optional_argument('y')
    method.define_optional_argument('m')
    method.define_optional_argument('d')
    method.define_optional_argument('h')
    method.define_optional_argument('min')
    method.define_optional_argument('s')
    method.define_optional_argument('of')
    method.define_optional_argument('sg')
  end

  klass.define_method('now') do |method|
    method.define_optional_argument('sg')
  end

  klass.define_method('ordinal') do |method|
    method.define_optional_argument('y')
    method.define_optional_argument('d')
    method.define_optional_argument('h')
    method.define_optional_argument('min')
    method.define_optional_argument('s')
    method.define_optional_argument('of')
    method.define_optional_argument('sg')
  end

  klass.define_method('parse') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('comp')
    method.define_optional_argument('sg')
  end

  klass.define_method('rfc2822') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_method('rfc3339') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_method('rfc822') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_method('strptime') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('fmt')
    method.define_optional_argument('sg')
  end

  klass.define_method('xmlschema') do |method|
    method.define_optional_argument('str')
    method.define_optional_argument('sg')
  end

  klass.define_instance_method('hour')

  klass.define_instance_method('iso8601') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('jisx0301') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('min')

  klass.define_instance_method('minute')

  klass.define_instance_method('new_offset') do |method|
    method.define_optional_argument('of')
  end

  klass.define_instance_method('offset')

  klass.define_instance_method('rfc3339') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('sec')

  klass.define_instance_method('sec_fraction')

  klass.define_instance_method('second')

  klass.define_instance_method('second_fraction')

  klass.define_instance_method('strftime') do |method|
    method.define_optional_argument('fmt')
  end

  klass.define_instance_method('to_date')

  klass.define_instance_method('to_datetime')

  klass.define_instance_method('to_s')

  klass.define_instance_method('to_time')

  klass.define_instance_method('xmlschema') do |method|
    method.define_optional_argument('n')
  end

  klass.define_instance_method('zone')
end

##
# Constant: DateTime::ABBR_DAYNAMES
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::ABBR_DAYNAMES') do |klass|
end

##
# Constant: DateTime::ABBR_MONTHNAMES
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::ABBR_MONTHNAMES') do |klass|
end

##
# Constant: DateTime::DAYNAMES
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::DAYNAMES') do |klass|
end

##
# Constant: DateTime::ENGLAND
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::ENGLAND') do |klass|
end

##
# Constant: DateTime::Format
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::Format') do |klass|

  klass.define_method('__module_init__')
end

##
# Constant: DateTime::GREGORIAN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::GREGORIAN') do |klass|
end

##
# Constant: DateTime::HALF_DAYS_IN_DAY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::HALF_DAYS_IN_DAY') do |klass|
end

##
# Constant: DateTime::HOURS_IN_DAY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::HOURS_IN_DAY') do |klass|
end

##
# Constant: DateTime::ITALY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::ITALY') do |klass|
end

##
# Constant: DateTime::Infinity
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::Infinity') do |klass|
  klass.inherits(RubyLint::VirtualMachine.constant_proxy('Numeric'))

  klass.define_method('__class_init__')

  klass.define_instance_method('+@')

  klass.define_instance_method('-@')

  klass.define_instance_method('<=>') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('abs')

  klass.define_instance_method('coerce') do |method|
    method.define_argument('other')
  end

  klass.define_instance_method('d')

  klass.define_instance_method('finite?')

  klass.define_instance_method('infinite?')

  klass.define_instance_method('nan?')

  klass.define_instance_method('zero?')
end

##
# Constant: DateTime::JULIAN
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::JULIAN') do |klass|
end

##
# Constant: DateTime::LD_EPOCH_IN_CJD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::LD_EPOCH_IN_CJD') do |klass|
end

##
# Constant: DateTime::MILLISECONDS_IN_DAY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::MILLISECONDS_IN_DAY') do |klass|
end

##
# Constant: DateTime::MILLISECONDS_IN_SECOND
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::MILLISECONDS_IN_SECOND') do |klass|
end

##
# Constant: DateTime::MINUTES_IN_DAY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::MINUTES_IN_DAY') do |klass|
end

##
# Constant: DateTime::MJD_EPOCH_IN_AJD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::MJD_EPOCH_IN_AJD') do |klass|
end

##
# Constant: DateTime::MJD_EPOCH_IN_CJD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::MJD_EPOCH_IN_CJD') do |klass|
end

##
# Constant: DateTime::MONTHNAMES
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::MONTHNAMES') do |klass|
end

##
# Constant: DateTime::NANOSECONDS_IN_DAY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::NANOSECONDS_IN_DAY') do |klass|
end

##
# Constant: DateTime::NANOSECONDS_IN_SECOND
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::NANOSECONDS_IN_SECOND') do |klass|
end

##
# Constant: DateTime::SECONDS_IN_DAY
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::SECONDS_IN_DAY') do |klass|
end

##
# Constant: DateTime::UNIX_EPOCH_IN_AJD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::UNIX_EPOCH_IN_AJD') do |klass|
end

##
# Constant: DateTime::UNIX_EPOCH_IN_CJD
# Created:  2013-04-01 18:33:53 +0200
# Platform: rbx 2.0.0.rc1
#
RubyLint::VirtualMachine.global_scope.define_constant('DateTime::UNIX_EPOCH_IN_CJD') do |klass|
end