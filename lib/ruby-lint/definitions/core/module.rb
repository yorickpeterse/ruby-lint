RubyLint.global_scope.define_constant('Module') do |klass|
  klass.define_method('constants') do |method|
    method.define_optional_argument('include_super')
  end

  klass.define_method('nesting')

  %w{< <= <=> == === > >=}.each do |operator|
    klass.define_instance_method(operator) do |method|
      method.define_argument('other')
    end
  end

  klass.define_instance_method('ancestors')

  klass.define_instance_method('autoload') do |method|
    method.define_argument('constant')
    method.define_argument('path')
  end

  klass.define_instance_method('autoload?') do |method|
    method.define_argument('constant')
  end

  klass.define_instance_method('class_eval') do |method|
    method.define_optional_argument('string')
    method.define_optional_argument('filename')
    method.define_optional_argument('lineno')

    method.define_block_argument('block')
  end

  klass.define_instance_method('class_exec') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('class_variable_defined?') do |method|
    method.define_argument('variable')
  end

  klass.define_instance_method('class_variable_get') do |method|
    method.define_argument('variable')
  end

  klass.define_instance_method('class_variable_set') do |method|
    method.define_argument('variable')
    method.define_argument('value')
  end

  klass.define_instance_method('class_variables')

  klass.define_instance_method('const_defined?') do |method|
    method.define_argument('constant')
  end

  klass.define_instance_method('const_get') do |method|
    method.define_argument('constant')
  end

  klass.define_instance_method('const_missing') do |method|
    method.define_argument('constant')
  end

  klass.define_instance_method('const_set') do |method|
    method.define_argument('constant')
    method.define_argument('value')
  end

  klass.define_instance_method('constants') do |method|
    method.define_argument('include_super')
  end

  klass.define_instance_method('freeze')

  klass.define_instance_method('include?') do |method|
    method.define_argument('module')
  end

  klass.define_instance_method('included_modules')

  klass.define_instance_method('instance_method') do |method|
    method.define_argument('method')
  end

  klass.define_instance_method('instance_methods') do |method|
    method.define_argument('include_super')
  end

  klass.define_instance_method('method_defined?') do |method|
    method.define_argument('method')
  end

  klass.define_instance_method('module_eval') do |method|
    method.define_optional_argument('string')
    method.define_optional_argument('filename')
    method.define_optional_argument('lineno')

    method.define_block_argument('block')
  end

  klass.define_instance_method('module_exec') do |method|
    method.define_block_argument('block')
  end

  klass.define_instance_method('name')

  [
    'private_class_method',
    'public_class_method',
    'public_instance_method'
  ].each do |name|
    klass.define_instance_method(name) do |method|
      method.define_rest_argument('methods')
    end
  end

  [
    'private_instance_methods',
    'protected_instance_methods',
    'public_instance_methods'
  ].each do |name|
    klass.define_instance_method(name) do |method|
      method.define_optional_argument('include_super')
    end
  end

  ['private_constant', 'public_constant'].each do |name|
    klass.define_instance_method(name) do |method|
      method.define_rest_argument('constants')
    end
  end

  ['private_method_defined?', 'protected_method_defined?'].each do |name|
    klass.define_instance_method(name) do |method|
      method.define_argument('method')
    end
  end

  klass.define_instance_method('psych_yaml_as') do |method|
    method.define_argument('url')
  end

  klass.define_instance_method('remove_class_variable') do |method|
    method.define_argument('variable')
  end

  klass.define_instance_method('to_s')

  klass.define_instance_method('yaml_as') do |method|
    method.define_argument('url')
  end
end
