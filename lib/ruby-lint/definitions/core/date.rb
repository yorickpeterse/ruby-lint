# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Platform: rbx 2.2.3.n364

RubyLint.registry.register('Date') do |defs|
  defs.define_constant('Date') do |klass|
    klass.inherits(defs.constant_proxy('Object'))
    klass.inherits(defs.constant_proxy('#<Module:0x1fb9c>'))
    klass.inherits(defs.constant_proxy('Comparable'))
    klass.inherits(defs.constant_proxy('#<Module:0x1fba0>'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

    klass.define_method('_httpdate') do |method|
      method.define_argument('str')
    end

    klass.define_method('_iso8601') do |method|
      method.define_argument('str')
    end

    klass.define_method('_jisx0301') do |method|
      method.define_argument('str')
    end

    klass.define_method('_parse') do |method|
      method.define_argument('str')
      method.define_optional_argument('comp')
    end

    klass.define_method('_rfc2822') do |method|
      method.define_argument('str')
    end

    klass.define_method('_rfc3339') do |method|
      method.define_argument('str')
    end

    klass.define_method('_rfc822') do |method|
      method.define_argument('str')
    end

    klass.define_method('_strptime') do |method|
      method.define_argument('str')
      method.define_optional_argument('fmt')
    end

    klass.define_method('_xmlschema') do |method|
      method.define_argument('str')
    end

    klass.define_method('civil') do |method|
      method.define_optional_argument('y')
      method.define_optional_argument('m')
      method.define_optional_argument('d')
      method.define_optional_argument('sg')
    end

    klass.define_method('commercial') do |method|
      method.define_optional_argument('y')
      method.define_optional_argument('w')
      method.define_optional_argument('d')
      method.define_optional_argument('sg')
    end

    klass.define_method('gregorian_leap?') do |method|
      method.define_argument('y')
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
      method.define_optional_argument('sg')
    end

    klass.define_method('jisx0301') do |method|
      method.define_optional_argument('str')
      method.define_optional_argument('sg')
    end

    klass.define_method('julian_leap?') do |method|
      method.define_argument('y')
    end

    klass.define_method('leap?') do |method|
      method.define_argument('y')
    end

    klass.define_method('new') do |method|
      method.define_optional_argument('y')
      method.define_optional_argument('m')
      method.define_optional_argument('d')
      method.define_optional_argument('sg')

      method.returns { |object| object.instance }
    end

    klass.define_method('new!') do |method|
      method.define_rest_argument('args')
    end

    klass.define_method('ordinal') do |method|
      method.define_optional_argument('y')
      method.define_optional_argument('d')
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

    klass.define_method('today') do |method|
      method.define_optional_argument('sg')
    end

    klass.define_method('valid_civil?') do |method|
      method.define_argument('y')
      method.define_argument('m')
      method.define_argument('d')
      method.define_optional_argument('sg')
    end

    klass.define_method('valid_commercial?') do |method|
      method.define_argument('y')
      method.define_argument('w')
      method.define_argument('d')
      method.define_optional_argument('sg')
    end

    klass.define_method('valid_date?') do |method|
      method.define_argument('y')
      method.define_argument('m')
      method.define_argument('d')
      method.define_optional_argument('sg')
    end

    klass.define_method('valid_jd?') do |method|
      method.define_argument('jd')
      method.define_optional_argument('sg')
    end

    klass.define_method('valid_ordinal?') do |method|
      method.define_argument('y')
      method.define_argument('d')
      method.define_optional_argument('sg')
    end

    klass.define_method('xmlschema') do |method|
      method.define_optional_argument('str')
      method.define_optional_argument('sg')
    end

    klass.define_method('yaml_tag_subclasses?')

    klass.define_instance_method('+') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('-') do |method|
      method.define_argument('x')
    end

    klass.define_instance_method('<<') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('<=>') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('===') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('>>') do |method|
      method.define_argument('n')
    end

    klass.define_instance_method('ajd')

    klass.define_instance_method('amjd') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('asctime')

    klass.define_instance_method('ctime')

    klass.define_instance_method('cwday')

    klass.define_instance_method('cweek')

    klass.define_instance_method('cwyear')

    klass.define_instance_method('day')

    klass.define_instance_method('day_fraction') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('downto') do |method|
      method.define_argument('min')
      method.define_block_argument('block')
    end

    klass.define_instance_method('england')

    klass.define_instance_method('eql?') do |method|
      method.define_argument('other')
    end

    klass.define_instance_method('friday?')

    klass.define_instance_method('gregorian')

    klass.define_instance_method('gregorian?') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('hash')

    klass.define_instance_method('httpdate')

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('ajd')
      method.define_optional_argument('of')
      method.define_optional_argument('sg')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('inspect')

    klass.define_instance_method('iso8601')

    klass.define_instance_method('italy')

    klass.define_instance_method('jd') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('jisx0301')

    klass.define_instance_method('julian')

    klass.define_instance_method('julian?') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('ld') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('leap?') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('marshal_dump')

    klass.define_instance_method('marshal_load') do |method|
      method.define_argument('a')
    end

    klass.define_instance_method('mday')

    klass.define_instance_method('mjd') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('mon')

    klass.define_instance_method('monday?')

    klass.define_instance_method('month')

    klass.define_instance_method('new_start') do |method|
      method.define_optional_argument('sg')
    end

    klass.define_instance_method('next')

    klass.define_instance_method('next_day') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('next_month') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('next_year') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('prev_day') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('prev_month') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('prev_year') do |method|
      method.define_optional_argument('n')
    end

    klass.define_instance_method('rfc2822')

    klass.define_instance_method('rfc3339')

    klass.define_instance_method('rfc822')

    klass.define_instance_method('saturday?')

    klass.define_instance_method('start')

    klass.define_instance_method('step') do |method|
      method.define_argument('limit')
      method.define_optional_argument('step')
    end

    klass.define_instance_method('strftime') do |method|
      method.define_optional_argument('fmt')
    end

    klass.define_instance_method('succ')

    klass.define_instance_method('sunday?')

    klass.define_instance_method('taguri')

    klass.define_instance_method('taguri=')

    klass.define_instance_method('thursday?')

    klass.define_instance_method('to_date')

    klass.define_instance_method('to_datetime')

    klass.define_instance_method('to_s')

    klass.define_instance_method('to_time')

    klass.define_instance_method('to_yaml') do |method|
      method.define_optional_argument('opts')
    end

    klass.define_instance_method('tuesday?')

    klass.define_instance_method('upto') do |method|
      method.define_argument('max')
      method.define_block_argument('block')
    end

    klass.define_instance_method('wday') do |method|
      method.define_rest_argument('args')
    end

    klass.define_instance_method('wednesday?')

    klass.define_instance_method('xmlschema')

    klass.define_instance_method('yday')

    klass.define_instance_method('year')
  end

  defs.define_constant('Date::ABBR_DAYNAMES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::ABBR_MONTHNAMES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::DAYNAMES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::ENGLAND') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::GREGORIAN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::HALF_DAYS_IN_DAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::HOURS_IN_DAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::ITALY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::Infinity') do |klass|
    klass.inherits(defs.constant_proxy('Numeric'))
    klass.inherits(defs.constant_proxy('Comparable'))
    klass.inherits(defs.constant_proxy('PP::ObjectMixin'))
    klass.inherits(defs.constant_proxy('MakeMakefile'))
    klass.inherits(defs.constant_proxy('JSON::Ext::Generator::GeneratorMethods::Object'))

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

    klass.define_instance_method('initialize') do |method|
      method.define_optional_argument('d')

      method.returns { |object| object.instance }
    end

    klass.define_instance_method('nan?')

    klass.define_instance_method('zero?')
  end

  defs.define_constant('Date::JULIAN') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::LD_EPOCH_IN_CJD') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::MILLISECONDS_IN_DAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::MILLISECONDS_IN_SECOND') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::MINUTES_IN_DAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::MJD_EPOCH_IN_AJD') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::MJD_EPOCH_IN_CJD') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::MONTHNAMES') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::NANOSECONDS_IN_DAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::NANOSECONDS_IN_SECOND') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::SECONDS_IN_DAY') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::UNIX_EPOCH_IN_AJD') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end

  defs.define_constant('Date::UNIX_EPOCH_IN_CJD') do |klass|
    klass.inherits(defs.constant_proxy('Object'))

  end
end
