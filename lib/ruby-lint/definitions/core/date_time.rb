##
# Constant: DateTime
# Created:  2013-03-26 22:45:01 +0100
# Platform: rubinius 2.0.0.rc1 (1.9.3 cbee9a2d yyyy-mm-dd JI) [x86_64-unknown-linux-gnu]
#
RubyLint.global_scope.define_constant('DateTime') do |klass|
  klass.inherits(RubyLint.global_constant('Date'))

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
