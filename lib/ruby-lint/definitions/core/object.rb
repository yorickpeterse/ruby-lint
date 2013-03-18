RubyLint.global_scope.define_constant('Object') do |klass|
  klass.inherits(RubyLint.global_scope.lookup(:constant, 'BasicObject'))

  klass.define_method('yaml_tag') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('psych_to_yaml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_yaml') do |method|
    method.define_optional_argument('options')
  end

  klass.define_instance_method('to_yaml_properties')
end
